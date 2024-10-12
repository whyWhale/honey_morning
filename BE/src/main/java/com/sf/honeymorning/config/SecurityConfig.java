package com.sf.honeymorning.config;

import java.util.Collections;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.security.web.authentication.logout.LogoutFilter;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.CorsConfigurationSource;

import com.sf.honeymorning.auth.filter.CustomLogoutFilter;
import com.sf.honeymorning.auth.filter.JWTFilter;
import com.sf.honeymorning.auth.filter.LoginFilter;
import com.sf.honeymorning.auth.repository.RefreshTokenRepository;
import com.sf.honeymorning.auth.util.JWTUtil;

import jakarta.servlet.http.HttpServletRequest;

@Configuration
public class SecurityConfig {

	private final AuthenticationConfiguration authenticationConfiguration;
	private final JWTUtil jwtUtil;
	private final RefreshTokenRepository refreshTokenRepository;

	public SecurityConfig(AuthenticationConfiguration authenticationConfiguration, JWTUtil jwtUtil,
		RefreshTokenRepository refreshTokenRepository) {
		this.authenticationConfiguration = authenticationConfiguration;
		this.jwtUtil = jwtUtil;
		this.refreshTokenRepository = refreshTokenRepository;
	}

	@Value("${cors.allowedOrigins.frontend}")
	private String allowedOrigins;

	@Bean
	public AuthenticationManager authenticationManager(AuthenticationConfiguration configuration)
		throws Exception {
		return configuration.getAuthenticationManager();
	}

	@Bean
	public BCryptPasswordEncoder bCryptPasswordEncoder() {
		return new BCryptPasswordEncoder();
	}

	@Bean
	public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {

		http
			.cors((cors) -> cors
				.configurationSource(new CorsConfigurationSource() {

					@Override
					public CorsConfiguration getCorsConfiguration(
						HttpServletRequest request) {

						CorsConfiguration configuration = new CorsConfiguration();

						// 허용할 포트
						configuration.setAllowedOrigins(Collections.singletonList(allowedOrigins));
						configuration.addAllowedOriginPattern("http://localhost:5173");
						// 허용할 메서드
						configuration.setAllowedMethods(Collections.singletonList("*"));
						// 요청이 오는 곳의 credential을 true로 변경
						configuration.setAllowCredentials(true);

						configuration.setAllowedHeaders(Collections.singletonList("*"));
						configuration.setMaxAge(3600L);

						// 응답시 Authorization을 같이 보내준다.
						configuration.setExposedHeaders(Collections.singletonList("access"));

						return configuration;
					}

				}));

		// 경로별 인가
		http
			.authorizeHttpRequests((auth) -> auth
				.requestMatchers("/api/auth/**").permitAll()
				.requestMatchers("/api/users/**").permitAll()
				.requestMatchers("/swagger", "/swagger-ui.html", "/swagger-ui/**", "/api-docs", "/api-docs/**",
					"/v3/api-docs/**").permitAll()
				.requestMatchers("/error", "/favicon.ico", "/**/*.png", "/**/*.gif", "/**/*.svg", "/**/*.jpg",
					"/**/*.html", "/**/*.css", "/**/*.js").permitAll()
				.anyRequest().authenticated());

		http
			.csrf(AbstractHttpConfigurer::disable);

		http.addFilterBefore(new JWTFilter(jwtUtil),
			UsernamePasswordAuthenticationFilter.class);

		http.addFilterAt(
			new LoginFilter(authenticationManager(authenticationConfiguration), jwtUtil,
				refreshTokenRepository),
			UsernamePasswordAuthenticationFilter.class);

		http
			.addFilterBefore(new CustomLogoutFilter(jwtUtil, refreshTokenRepository),
				LogoutFilter.class);

		http.sessionManagement((session) -> session
			.sessionCreationPolicy(SessionCreationPolicy.STATELESS));

		return http.build();
	}

}
