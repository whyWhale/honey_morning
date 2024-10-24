package com.sf.honeymorning.brief.entity;

import com.sf.honeymorning.common.entity.BaseEntity;
import com.sf.honeymorning.user.entity.User;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Builder
@Getter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Entity
@AllArgsConstructor
public class Brief extends BaseEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "brief_id")
	private Long id;

	@JoinColumn(name = "user_id")
	@ManyToOne(fetch = FetchType.LAZY)
	private User user;

	@Column(nullable = false, columnDefinition = "TEXT")
	private String summary;

	@Column(nullable = false, columnDefinition = "TEXT")
	private String content;

	@Column(length = 1000, nullable = true)
	private String summaryFilePath;

	@Column(length = 1000, nullable = true)
	private String contentFilePath;

}
