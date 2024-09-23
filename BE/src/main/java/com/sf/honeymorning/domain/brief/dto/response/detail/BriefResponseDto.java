package com.sf.honeymorning.domain.brief.dto.response.detail;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

@Builder
@AllArgsConstructor
@Data
public class BriefResponseDto {
	@Schema(name = "브리핑 요약 ", example = "오늘의 날씨는 ... ... 입니다.")
	private String summary;

	@Schema(name = "본문 (음성 출력) ", example = "이번 증시 차트표가 고냥이 상과 유사하게 그려져 앞으로 ... ... 입니다.")
	private String content;

}