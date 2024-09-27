package com.sf.honeymorning.domain.alarm.service;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.sf.honeymorning.domain.alarm.dto.AlarmRequestDto;
import com.sf.honeymorning.domain.alarm.dto.AlarmResponseDto;
import com.sf.honeymorning.domain.alarm.dto.AlarmStartDto;
import com.sf.honeymorning.domain.alarm.dto.QuizDto;
import com.sf.honeymorning.domain.alarm.entity.Alarm;
import com.sf.honeymorning.domain.alarm.entity.AlarmCategory;
import com.sf.honeymorning.domain.alarm.repository.AlarmCategoryRepository;
import com.sf.honeymorning.domain.alarm.repository.AlarmRepository;
import com.sf.honeymorning.domain.auth.service.AuthService;
import com.sf.honeymorning.domain.brief.entity.Brief;
import com.sf.honeymorning.domain.brief.repository.BriefRepository;
import com.sf.honeymorning.domain.quiz.entity.Quiz;
import com.sf.honeymorning.domain.quiz.repository.QuizRepository;
import com.sf.honeymorning.domain.tag.entity.Tag;
import com.sf.honeymorning.domain.user.entity.User;
import com.sf.honeymorning.domain.user.repository.UserRepository;
import com.sf.honeymorning.exception.alarm.AlarmFatalException;
import com.sf.honeymorning.exception.user.UserNotFoundException;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.*;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@RequiredArgsConstructor
@Transactional
public class AlarmService {
    @Value("${ai.url.briefing}")
    private String briefingAi;
    @Value("${ai.url.quiz}")
    private String quizAi;
    @Value("${ai.url.music}")
    private String musicAi;
    @Value("${ai.url.topic-model}")
    private String topicModelAi;

    private final AlarmRepository alarmRepository;
    private final UserRepository userRepository;
    private final AuthService authService;
    private final AlarmCategoryRepository alarmCategoryRepository;
    private final BriefRepository briefRepository;
    private final QuizRepository quizRepository;
    private final RestTemplate restTemplate = new RestTemplate();
    private final int timeGap = 5;

    public AlarmResponseDto findAlarmByUsername() {
        User user = authService.getLoginUser();

        Alarm alarm = alarmRepository.findByUser(user);

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

    public void updateAlarm(AlarmRequestDto alarmRequestDto) {

        /**
         *설정한 시간 및 요일이 현재 시간에서 5시간 이상 차이가 나지 않으면 업데이트 거부
         */

        // 현재 시간
        LocalDateTime nowDateTime = LocalDateTime.now();
        LocalTime nowTime = LocalTime.now();
        int currentDayOfWeek = nowDateTime.getDayOfWeek().getValue() - 1; // 현재 요일 (0 ~ 6)
        String binary = "";
        String nextBinary = "";

        for (int i = 0; i < 7; i++) {
            if (i == currentDayOfWeek) {
                binary += "1";
            } else {
                binary += "0";
            }
        }

        for (int i = 0; i < 7; i++) {
            if (i == (currentDayOfWeek + 1) % 7) {
                nextBinary += "1";
            } else {
                nextBinary += "0";
            }
        }

        // 설정한 알람 시각
        LocalTime alarmTime = alarmRequestDto.getAlarmTime();
        // 설정한 알람 요일
        String alarmWeek = alarmRequestDto.getDaysOfWeek();

        // 알람이 요일만 설정 되어 있고, 이후 시간이며, 5시간 이전에 설정되어 있을 때.

        if (binary.equals(alarmWeek) && ChronoUnit.SECONDS.between(nowTime, alarmTime) > 0
                && ChronoUnit.HOURS.between(nowTime, alarmTime) < timeGap) {
            throw new IllegalArgumentException("알람 시간이 현재 시간으로부터 5시간 이내여서 설정이 거부되었습니다.");
        }

        // 알람이 내일 요일만 설정 되어 있고, 5시간 이전에 설정되어 있을 때.
        if (nextBinary.equals(alarmWeek) && ChronoUnit.HOURS.between(nowTime, alarmTime) + 24 < timeGap) {
            throw new IllegalArgumentException("알람 시간이 현재 시간으로부터 5시간 이내여서 설정이 거부되었습니다.");
        }

        String email = SecurityContextHolder.getContext().getAuthentication().getName();
        User user = userRepository.findByEmail(email)
                .orElseThrow(() -> new UserNotFoundException("해당 알람의 유저가 없습니다"));
        Alarm alarm = alarmRepository.findByUser(user);

        alarm.setAlarmTime(alarmRequestDto.getAlarmTime());
        alarm.setDaysOfWeek(alarmRequestDto.getDaysOfWeek());
        alarm.setRepeatFrequency(alarmRequestDto.getRepeatFrequency());
        alarm.setRepeatInterval(alarmRequestDto.getRepeatInterval());
        alarm.setIsActive(alarmRequestDto.getIsActive());
    }

    @Transactional
    @Scheduled(fixedRate = 60000)
    public void readyBrief() {
        HashMap<String, Integer> categoryMap = new HashMap<>();
        int[] categories = new int[]{100, 101, 102, 103, 104, 105, 106, 107};
        String[] categoryNames = new String[]{"정치", "경제", "사회", "생활/문화", "IT/과학", "세계", "연예", "스포츠"};
        for (int i = 0; i < categories.length; i++) {
            categoryMap.put(categoryNames[i], categories[i]);
        }
        List<Alarm> alarms = alarmRepository.findByAlarmTime(LocalTime.now().minusMinutes(10));
        for (int j = 0; j < alarms.size(); j++) {
            Alarm alarm = alarms.get(j);
            User user = alarm.getUser();
            List<AlarmCategory> alarmCategoryList = alarmCategoryRepository.findByAlarm(alarm);
            List<Integer> tagIds = new ArrayList<>();
            for (int i = 0; i < alarmCategoryList.size(); i++) {
                AlarmCategory alarmCategory = alarmCategoryList.get(i);
                if (categoryMap.containsKey(alarmCategory.getTag().getWord())) {
                    Integer tagId = categoryMap.get(alarmCategory.getTag().getWord());
                    tagIds.add(tagId);
                }
            }
            HttpHeaders headers = new HttpHeaders();
            headers.setContentType(MediaType.APPLICATION_JSON);
            headers.setAccept(List.of(MediaType.APPLICATION_JSON));
            Map<String, Object> body = new HashMap<>();
            body.put("tags", tagIds);
            HttpEntity<Map<String, Object>> requestEntity = new HttpEntity<>(body, headers);
            try {
                ResponseEntity<String> briefResponse = restTemplate.exchange(
                        briefingAi, HttpMethod.POST, requestEntity,
                        String.class);
                if (briefResponse.getStatusCode().is2xxSuccessful()) {
                    String data = briefResponse.getBody();
                    ObjectMapper objectMapper = new ObjectMapper();
                    JsonNode jsonNode = objectMapper.readTree(data);
                    String shortBriefing = jsonNode.get("data").get("shortBriefing").asText();
                    String longBriefing = jsonNode.get("data").get("longBriefing").asText();
                    System.out.println("Short Briefing: " + shortBriefing);
                    System.out.println("Long Briefing: " + longBriefing);
                    Brief save = briefRepository.save(
                            Brief.builder()
                                    .user(user)
                                    .summary(shortBriefing)
                                    .content(longBriefing)
                                    .build()
                    );
                    headers = new HttpHeaders();
                    headers.setContentType(MediaType.APPLICATION_JSON);
                    headers.setAccept(List.of(MediaType.APPLICATION_JSON));
                    body = new HashMap<>();
                    ArrayList<String> tagList = new ArrayList<>();
                    List<AlarmCategory> alarmCategories = alarmCategoryRepository.findByAlarm(alarm);
                    for (int i = 0; i < alarmCategories.size(); i++) {
                        AlarmCategory alarmCategory = alarmCategories.get(i);
                        Tag tag = alarmCategory.getTag();
                        if (tag.getIsCustom() == 1) continue;
                        tagList.add(tag.getWord());
                    }
                    body.put("tags", tagList);
                    requestEntity = new HttpEntity<>(body, headers);
                    ResponseEntity<String> topicModelResponse = restTemplate.exchange(topicModelAi, HttpMethod.POST,
                            requestEntity, String.class);
                    if (topicModelResponse.getStatusCode().is2xxSuccessful()) {
                        data = briefResponse.getBody();
                        objectMapper = new ObjectMapper();
                        jsonNode = objectMapper.readTree(data);
                        String url = jsonNode.get("url").asText();
                        alarm.setMusicFilePath(url);
                        alarmRepository.save(alarm);
                    } else {
                        System.out.println("POST 요청 실패: " + briefResponse.getStatusCode());
                    }

                    headers = new HttpHeaders();
                    headers.setContentType(MediaType.APPLICATION_JSON);
                    headers.setAccept(List.of(MediaType.APPLICATION_JSON));
                    body = new HashMap<>();
                    body.put("briefing", save.getSummary());
                    requestEntity = new HttpEntity<>(body, headers);
                    ResponseEntity<String> songResponse = restTemplate.exchange(
                            musicAi, HttpMethod.POST, requestEntity, String.class);
                    if (songResponse.getStatusCode().is2xxSuccessful()) {
                        data = songResponse.getBody();
                        objectMapper = new ObjectMapper();
                        jsonNode = objectMapper.readTree(data);
                        String url = jsonNode.get("url").asText();
                        System.out.println("url: " + url);

                    } else {
                        System.out.println("POST 요청 실패: " + briefResponse.getStatusCode());
                    }

                    headers = new HttpHeaders();
                    headers.setContentType(MediaType.APPLICATION_JSON);
                    headers.setAccept(List.of(MediaType.APPLICATION_JSON));
                    body = new HashMap<>();
                    body.put("text", save.getSummary());
                    requestEntity = new HttpEntity<>(body, headers);
                    ResponseEntity<String> quizResponse = restTemplate.exchange(
                            quizAi, HttpMethod.POST, requestEntity, String.class);
                    if (quizResponse.getStatusCode().is2xxSuccessful()) {
                        String body1 = quizResponse.getBody();
                        objectMapper = new ObjectMapper();
                        JsonNode rootNode = objectMapper.readTree(body1);
                        JsonNode dataArray = rootNode.get("data");
                        for (JsonNode quiz : dataArray) {
                            String problem = quiz.get("problem").asText();
                            System.out.println("문제: " + problem);
                            Quiz savings = new Quiz();
                            savings.setQuestion(problem);
                            JsonNode choices = quiz.get("choices");
                            List<String> items = new ArrayList<>();
                            for (JsonNode choice : choices) {
                                int id = choice.get("id").asInt();
                                String item = choice.get("item").asText();
                                System.out.println("선택지 " + id + ": " + item);
                                items.add(item);
                            }
                            savings.setOption1(items.get(0));
                            savings.setOption2(items.get(1));
                            savings.setOption3(items.get(2));
                            savings.setOption4(items.get(3));
                            int answer = quiz.get("answer").asInt();
                            savings.setAnswer(answer);
                            System.out.println("정답: " + answer);
                            System.out.println("---------------------------");
                            quizRepository.save(savings);
                        }
                    } else {
                        System.out.println("POST 요청 실패: " + briefResponse.getStatusCode());
                    }
                } else {
                    System.out.println("POST 요청 실패: " + briefResponse.getStatusCode());
                }
            } catch (Exception e) {
                System.out.println("에러 발생: " + e.getMessage());
            }
        }
    }

    public AlarmStartDto getThings() {
        User user = authService.getLoginUser();
        LocalDate today = LocalDate.now();
        LocalDateTime startOfDay = today.atStartOfDay();
        LocalDateTime endOfDay = today.plusDays(1).atStartOfDay();  // Midnight of next day
        Brief brief = briefRepository.findByUserAndCreatedAtToday(user, startOfDay, endOfDay)
                .orElseThrow(() -> new AlarmFatalException("알람 준비가 안됬어요. 큰일이에요. ㅠ"));
        List<Quiz> quizzes = quizRepository.findByBrief(brief)
                .orElseThrow(() -> new AlarmFatalException("알람 준비가 안됬어요. 큰일이에요. ㅠ"));
        Alarm alarm = alarmRepository.findByUser(user);
        brief.getSummary();
        List<QuizDto> quizDtos = new ArrayList<>();
        for (int i = 0; i < quizzes.size(); i++) {
            Quiz quiz = quizzes.get(i);
            quizDtos.add(new QuizDto(
                    quiz.getId(),
                    quiz.getQuestion(),
                    quiz.getAnswer(),
                    quiz.getOption1(),
                    quiz.getOption2(),
                    quiz.getOption3(),
                    quiz.getOption4()
            ));
        }
        alarm.getMusicFilePath();
        ArrayList<QuizDto> list = new ArrayList<>();
        list.add(new QuizDto(
                1L,
                "한국토지자원관리공단의 목적은 무엇인가요?",
                1,
                "지역경제",
                "국제무역",
                "외환관리",
                "관세제도"
        ));
        list.add(new QuizDto(
                2L,
                "한국토지자원관리공단은 어떤 방법으로 경제활성화를 도모하고 있나요?",
                1,
                "지분참여",
                "장기대출",
                "세금감면",
                "임대사업"
        ));
        return new AlarmStartDto(
                "https://cdn1.suno.ai/a3aa4a9c-5f27-445b-af00-2babbd3bc924.mp3",
                list,
                "한국토지자원관리공단은 한국토지공사의 지분참여를 통해 지역경제활성화를 이룰 수 있는 방안을 모색하기 위해 노력중이다. "
                        + "\n 한국토지자원관리공단은 한국토지공사의 지분참여를 통해 지역경제활성화를 이룰 수 있는 방안을 모색하기 위해 노력중이다.  "
        );
    }

}
