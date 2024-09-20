package com.sf.honeymorning.domain.alarm.service;

import com.sf.honeymorning.domain.alarm.dto.AlarmCategoryDto;
import com.sf.honeymorning.domain.alarm.dto.AlarmRequestDto;
import com.sf.honeymorning.domain.alarm.dto.AlarmResponseDto;
import com.sf.honeymorning.domain.alarm.dto.AlarmResultDto;
import com.sf.honeymorning.domain.alarm.entity.Alarm;
import com.sf.honeymorning.domain.alarm.entity.AlarmCategory;
import com.sf.honeymorning.domain.alarm.entity.AlarmResult;
import com.sf.honeymorning.domain.alarm.repository.AlarmCategoryRepository;
import com.sf.honeymorning.domain.alarm.repository.AlarmRepository;
import com.sf.honeymorning.domain.alarm.repository.AlarmResultRepository;
import com.sf.honeymorning.domain.auth.service.AuthService;
import com.sf.honeymorning.domain.user.entity.User;
import com.sf.honeymorning.domain.user.repository.UserRepository;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
public class AlarmService {

    private final AlarmRepository alarmRepository;
    private final UserRepository userRepository;
    private final AuthService authService;
    private final AlarmCategoryRepository alarmCategoryRepository;
    private final AlarmResultRepository alarmResultRepository;

    public AlarmResponseDto findAlarmByUsername() {
        User user = authService.getLoginUser();
        Alarm alarm = alarmRepository.findAlarmsByUserId(user.getId());

        AlarmResponseDto alarmResponseDto = AlarmResponseDto.builder()
                .id(alarm.getId())
                .alarmTime(alarm.getAlarmTime())
                .daysOfWeek(alarm.getDaysOfWeek())
                .repeatFrequency(alarm.getRepeatFrequency())
                .repeatInterval(alarm.getRepeatInterval())
                .isActive(alarm.getIsActive())
                .build();

        return alarmResponseDto;

    }

    @Transactional
    public ResponseEntity<?> updateAlarm(AlarmRequestDto alarmRequestDto) {

        // 설정한 시간 및 요일이 현재 시간에서 5시간 이상 차이가 나지 않으면 업데이트 거부
        LocalDateTime nowDateTime = LocalDateTime.now();
        LocalTime nowTime = LocalTime.now();
        int currentDayOfWeek = nowDateTime.getDayOfWeek().getValue() - 1; // 현재 요일
        int binary = 1 << currentDayOfWeek;

        LocalTime alarmTime = alarmRequestDto.getAlarmTime();
        int alarmWeek = alarmRequestDto.getDaysOfWeek();

        System.out.println(binary);
        System.out.println(alarmWeek);
        // 알람이 현재 요일만 설정 되어 있고, 이후 시간이며, 5시간 이전에 설정되어 있을 때.
        if (binary == alarmWeek && ChronoUnit.HOURS.between(nowTime, alarmTime) < 5) {
            System.out.println("same day and less 5 hours difference");
            return ResponseEntity.status(HttpStatus.BAD_REQUEST)
                    .body("알람 시간이 현재 시간으로부터 5시간 이내여서 설정이 거부되었습니다.");
        }

        // 알람이 내일 요일만 설정 되어 있고, 5시간 이전에 설정되어 있을 때.
        if ((binary << 1) == alarmWeek && ChronoUnit.HOURS.between(nowTime, alarmTime.plusHours(24)) < 5) {
            System.out.println("next day and less 5 hours difference");
            return ResponseEntity.status(HttpStatus.BAD_REQUEST)
                    .body("알람 시간이 현재 시간으로부터 5시간 이내여서 설정이 거부되었습니다.");
        }

        // 현재 요일과 알람 설정 요일이 같을 때
//        if((binary & alarmWeek) == binary){
//            Long difference = ChronoUnit.HOURS.between(nowTime, alarmTime);
//            if(difference < 5){
//                System.out.println("same day");
//                return ResponseEntity.status(HttpStatus.BAD_REQUEST)
//                        .body("알람 시간이 현재 시간으로부터 5시간 이내여서 설정이 거부되었습니다.");
//            }
//        }

        // 알람 설정 요일이 현재의 바로 다음날일 때
//        if((binary << 1 & alarmWeek) == binary || ((binary & (1 << 6)) == binary && (alarmWeek & 1) == 1)){
//            alarmTime = alarmTime.plusHours(24);
//            Long difference = ChronoUnit.HOURS.between(nowTime, alarmTime);
//            if(difference < 5){
//                System.out.println("next day");
//                return ResponseEntity.status(HttpStatus.BAD_REQUEST)
//                        .body("알람 시간이 현재 시간으로부터 5시간 이내여서 설정이 거부되었습니다.");
//            }
//        }

        String email = SecurityContextHolder.getContext().getAuthentication().getName();
        User user = userRepository.findByEmail(email)
                .orElseThrow(() -> new IllegalArgumentException("해당하는 이메일의 유저가 없습니다"));
        Alarm alarm = alarmRepository.findAlarmsByUserId(user.getId());

        System.out.println("check");
        System.out.println(alarmRequestDto.getRepeatInterval());

        alarm.setAlarmTime(alarmRequestDto.getAlarmTime());
        alarm.setDaysOfWeek(alarmRequestDto.getDaysOfWeek());
        alarm.setRepeatFrequency(alarmRequestDto.getRepeatFrequency());
        alarm.setRepeatInterval(alarmRequestDto.getRepeatInterval());
        alarm.setIsActive(alarmRequestDto.getIsActive());

        return ResponseEntity.ok("알람이 성공적으로 업데이트되었습니다.");
    }

    // 알람 카테고리 조회
    public List<AlarmCategoryDto> findAlarmCategory() {

        User user = authService.getLoginUser();

        Alarm alarm = alarmRepository.findAlarmsByUserId(user.getId());
        List<AlarmCategory> alarmCategoryList = alarmCategoryRepository.findAllByAlarmId(alarm.getId());
        List<AlarmCategoryDto> alarmCategoryDtoList = new ArrayList<>();
        for (AlarmCategory alarmCategory : alarmCategoryList) {
            AlarmCategoryDto alarmCategoryDto = AlarmCategoryDto.builder()
                    .alarmCategoryId(alarmCategory.getId())
                    .alarmId(alarmCategory.getAlarm().getId())
                    .tagId(alarmCategory.getTag().getId())
                    .word(alarmCategory.getTag().getWord())
                    .build();
            alarmCategoryDtoList.add(alarmCategoryDto);
        }
        return alarmCategoryDtoList;

    }

    // 알람 결과 조회
    public List<AlarmResultDto> findAlarmResult() {
        User user = authService.getLoginUser();
        List<AlarmResult> alarmResultList = alarmResultRepository.findAllByUserId(user.getId());
        List<AlarmResultDto> alarmResultDtoList = new ArrayList<>();
        for (AlarmResult alarmResult : alarmResultList) {
            AlarmResultDto alarmResultDto = AlarmResultDto.builder()
                    .count(alarmResult.getCount())
                    .isAttending(alarmResult.getIsAttending())
                    .build();
            alarmResultDtoList.add(alarmResultDto);
        }
        return alarmResultDtoList;
    }

    // 알람 결과 추가
    public void saveAlarmResult(AlarmResultDto alarmResultDto) {
        User user = authService.getLoginUser();

        AlarmResult alarmResult = AlarmResult.builder()
                .user(user)
                .count(alarmResultDto.getCount())
                .isAttending(alarmResultDto.getIsAttending())
                .build();

        alarmResultRepository.save(alarmResult);
    }

}