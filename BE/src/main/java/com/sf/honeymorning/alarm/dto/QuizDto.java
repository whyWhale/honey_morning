package com.sf.honeymorning.domain.alarm.dto;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

@Data
@AllArgsConstructor
@Builder
public class QuizDto {
	@Schema(example = " 숫자 - 퀴즈 alarmId")
	private Long id;
	@Schema(example = "문제")
	private String question;
	@Schema(example = "숫자 - 정답")
	private Integer answer;
	@Schema(example = "선택지 1")
	private String option1;
	@Schema(example = "선택지 2")
	private String option2;
	@Schema(example = "선택지 3")
	private String option3;
	@Schema(example = "선택지 4")
	private String option4;
	@Schema(example = "퀴즈 음성 경로")
	private String quizUrl;
}
