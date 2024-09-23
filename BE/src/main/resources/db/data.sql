--  **********************************
--  NOTE: 회원 비밀번호 모두 숫자 '1'이에요
--  **********************************

INSERT INTO honeymorning.user (created_at, updated_at, user_id, username, email, password, role)
VALUES ('2024-09-20 15:26:50.000000', '2024-09-20 15:26:52.000000', 1, 'admin', 'admin@naver.com',
        '$2a$10$wJevCJqmRaXF7YpmMqz0H.v4cUofzZ3JljB/uwUCBrLNQhpuADD0e', 'ROLE_USER');
INSERT INTO honeymorning.user (created_at, updated_at, user_id, username, email, password, role)
VALUES ('2024-09-20 15:26:50.000000', '2024-09-20 15:26:52.000000', 2, 'guest1', 'guest1@naver.com',
        '$2a$10$wJevCJqmRaXF7YpmMqz0H.v4cUofzZ3JljB/uwUCBrLNQhpuADD0e', 'ROLE_USER');
INSERT INTO honeymorning.user (created_at, updated_at, user_id, username, email, password, role)
VALUES ('2024-09-20 15:26:50.000000', '2024-09-20 15:26:52.000000', 3, 'guest2', 'guest2@naver.com',
        '$2a$10$wJevCJqmRaXF7YpmMqz0H.v4cUofzZ3JljB/uwUCBrLNQhpuADD0e', 'ROLE_USER');

INSERT INTO honeymorning.tag (is_custom, created_at, tag_id, updated_at, word)
VALUES (0, '2024-09-20 15:34:43.000000', 1, '2024-09-20 15:34:43.000000', '정치');
INSERT INTO honeymorning.tag (is_custom, created_at, tag_id, updated_at, word)
VALUES (0, '2024-09-20 15:34:43.000000', 2, '2024-09-20 15:34:43.000000', '경제');
INSERT INTO honeymorning.tag (is_custom, created_at, tag_id, updated_at, word)
VALUES (0, '2024-09-20 15:34:43.000000', 3, '2024-09-20 15:34:43.000000', '사회');
INSERT INTO honeymorning.tag (is_custom, created_at, tag_id, updated_at, word)
VALUES (0, '2024-09-20 15:34:43.000000', 4, '2024-09-20 15:34:43.000000', '생활/문화');
INSERT INTO honeymorning.tag (is_custom, created_at, tag_id, updated_at, word)
VALUES (0, '2024-09-20 15:34:43.000000', 5, '2024-09-20 15:34:43.000000', 'IT/과학');
INSERT INTO honeymorning.tag (is_custom, created_at, tag_id, updated_at, word)
VALUES (0, '2024-09-20 15:34:43.000000', 6, '2024-09-20 15:34:43.000000', '세계');
INSERT INTO honeymorning.tag (is_custom, created_at, tag_id, updated_at, word)
VALUES (0, '2024-09-20 15:34:43.000000', 7, '2024-09-20 15:34:43.000000', '연예');
INSERT INTO honeymorning.tag (is_custom, created_at, tag_id, updated_at, word)
VALUES (0, '2024-09-20 15:34:43.000000', 8, '2024-09-20 15:34:43.000000', '스포츠');

INSERT INTO honeymorning.brief (created_at, id, updated_at, user_id, content, summary)
VALUES ('2024-09-20 15:29:26.000000', 1, '2024-09-20 15:29:24.000000', 1, '연애, 마음의 언어를 찾는 여정

연애는 단순히 사랑의 감정만을 주고받는 것이 아니라, 그 자체가 복잡하고 정교한 언어라고 할 수 있습니다. 사람들은 연애를 통해 자신의 감정, 기대, 욕구 등을 상대에게 표현하려 노력합니다. 하지만 이러한 표현이 항상 명확하게 전달되는 것은 아닙니다. 서로의 마음을 알아가는 과정에서 발생하는 오해와 갈등은 결국 소통의 문제로 귀결되곤 합니다. 연애라는 특별한 관계 속에서 우리는 끊임없이 상대방의 반응을 해석하며, 자신이 느끼는 감정을 어떻게 전달할지 고민합니다.

소통의 중요성

최근 연구에 따르면, 연애 관계에서 가장 큰 문제로 지목되는 것은 바로 소통의 부족입니다. 특히 연인 사이에서 발생하는 많은 갈등이 바로 이 소통 문제에서 비롯된다고 합니다. 서로의 감정을 제대로 전달하지 못하거나 상대의 감정을 정확하게 이해하지 못할 때, 관계는 쉽게 틀어질 수 있습니다. 이는 모든 인간관계에서 중요한 요소이지만, 특히 연애에서는 그 중요성이 더욱 강조됩니다. 두 사람의 관계가 발전하기 위해서는 상호 간의 감정을 솔직하게 드러내고, 그 감정이 잘 전달될 수 있도록 노력해야 합니다.

소통의 부족 문제를 해결하기 위해 연인들은 다양한 방법을 시도하고 있습니다. 예를 들어, 한 연인은 일주일에 한 번씩 감정일기를 작성하는 방식을 통해 서로의 감정을 더 잘 이해하고 공유하려고 노력했습니다. 감정일기를 통해 평소에 서로에게 말하지 못했던 감정이나 생각들을 솔직하게 드러내며, 관계의 깊이를 더해갔습니다. 이러한 작은 변화가 두 사람의 관계에 큰 영향을 미친다고 합니다. 소통이 원활해지면서 두 사람 사이의 신뢰가 쌓였고, 서로에 대한 이해의 폭도 넓어졌습니다. 이는 결국 연애 관계에서 중요한 것은 얼마나 많이 만나고, 무엇을 함께 하는가보다 서로의 감정을 얼마나 깊이 있게 나누고 이해하는가에 달려있음을 시사합니다.

코로나19 팬데믹과 연애의 변화

코로나19 팬데믹 이후, 우리의 삶은 많은 변화를 겪었습니다. 그중에서도 연애 방식은 큰 영향을 받았습니다. 사회적 거리두기와 같은 방역 조치로 인해 많은 연인들이 물리적으로 떨어져 있어야 했고, 이는 자연스럽게 데이트 방식의 변화를 가져왔습니다. 이제 더 이상 물리적인 공간에서만 만남을 가질 수 없게 되면서, 온라인을 통한 소통의 중요성이 커졌습니다. 이로 인해 화상 통화나 메신저, 소셜 미디어를 통한 커뮤니케이션이 더 활발해졌습니다. 하지만 그 중에서도 특히 메타버스를 활용한 데이트 방식이 주목받고 있습니다.

메타버스는 가상현실 세계에서 두 사람이 서로 상호작용할 수 있는 공간을 제공합니다. 일부 커플들은 이 메타버스 공간에서 데이트를 즐기며, 물리적인 거리를 뛰어넘어 소통을 이어가고 있습니다. 예를 들어, 한 커플은 메타버스에서 가상의 커피숍을 찾아가 데이트를 즐기거나, 가상 공간에서 함께 게임을 하며 시간을 보내는 방식으로 새로운 형태의 연애를 경험하고 있습니다. 이러한 방식은 물리적으로 함께하지 못하더라도 두 사람이 정서적으로 가까워질 수 있는 방법을 제공하며, 연애 관계에 있어 새로운 가능성을 열어주고 있습니다.

연애에서의 존중과 대화

연애 관계에서 가장 중요한 요소 중 하나는 상대방에 대한 존중입니다. 이는 단순히 상대를 배려하고 예의를 지키는 것을 넘어, 상대의 감정과 생각을 깊이 이해하고 그에 맞춰 소통하려는 태도를 의미합니다. 전문가들은 연애에서 가장 중요한 것은 “서로의 감정을 존중하고 충분한 대화를 나누는 것”이라고 조언합니다. 대화는 단순히 말을 주고받는 것이 아니라, 그 안에 담긴 감정과 의미를 이해하려는 노력이 포함되어야 합니다. 서로의 감정을 존중하며 대화를 나눌 때, 두 사람은 더 깊은 신뢰를 쌓고 관계를 더욱 견고하게 만들 수 있습니다.

대화는 특히 갈등 상황에서 중요한 역할을 합니다. 연인 사이에 갈등이 발생했을 때, 이를 피하거나 무시하기보다는 솔직하게 대화하는 것이 중요합니다. 갈등을 해결하기 위한 대화는 두 사람의 입장을 조율하고, 서로의 감정을 이해하는 데 중요한 역할을 합니다. 갈등 상황에서의 대화는 단순히 문제를 해결하는 것뿐만 아니라, 두 사람의 관계를 더 깊고 단단하게 만들어줍니다. 이를 통해 연인들은 서로에 대한 신뢰를 쌓고, 더 나은 관계로 나아갈 수 있습니다.

결론

연애는 마음과 마음이 만나는 여정입니다. 이 여정에서 중요한 것은 상대방과의 소통이며, 이를 통해 서로의 감정을 깊이 이해하고 존중하는 것입니다. 소통이 원활할 때 연애는 더욱 아름답고 풍요로워지며, 두 사람은 함께 성장할 수 있습니다. 특히 팬데믹 이후로 연애 방식에 많은 변화가 있었지만, 결국 중요한 것은 여전히 서로의 마음을 얼마나 진심으로 나누고 이해하느냐에 달려 있습니다.

연애라는 특별한 언어를 이해하고, 그 속에서 진정한 소통을 이루는 것은 쉽지 않지만, 이를 위한 노력은 언제나 가치가 있습니다. 연애에서 가장 중요한 것은 두 사람이 함께 대화를 나누고, 서로의 감정을 존중하는 것입니다. 이를 통해 두 사람은 더 깊은 관계를 형성하고, 함께 더 나은 미래를 만들어갈 수 있을 것입니다.
', '연애, 마음의 언어를 찾는 여정

연애는 그 자체로 하나의 복잡한 언어다. 사람들은 자신의 감정과 기대를 솔직하게 표현하면서도 상대방의 반응을 끊임없이 해석한다. 최근 연구에 따르면, 소통의 부족이 연애 관계의 주요 문제로 지목되었으며, 이를 해결하기 위한 다양한 시도가 이루어지고 있다. 예를 들어, 한 연인은 일주일에 한 번씩 감정일기를 작성해 서로의 감정을 공유하는 방법을 사용해 관계를 개선했다. 또한, 코로나19 팬데믹 이후로 데이트 방식이 변화하면서 온라인을 통한 소통의 중요성이 부각되었다. 일부 커플들은 메타버스 데이트를 즐기며 물리적 거리를 극복하고 있다. 전문가들은 “연애에서 중요한 것은 서로의 감정을 존중하고, 충분한 대화를 나누는 것”이라고 조언한다.');
INSERT INTO honeymorning.brief (created_at, id, updated_at, user_id, content, summary)
VALUES ('2024-09-20 15:29:26.000000', 2, '2024-09-20 15:29:24.000000', 2, '정치와 대화의 중요성: 현대 정치에서의 소통과 신뢰

정치는 국가를 운영하는 과정에서 사람들 간의 의견 차이를 좁히고 합의를 도출하는 중요한 과정입니다. 현대 민주주의 정치에서는 특히 소통이 중요한 요소로 작용하며, 시민과 정치인 간의 신뢰 형성에 큰 영향을 미칩니다. 하지만 최근 정치적 양극화가 심화되면서, 소통의 단절이 정치적 갈등을 더욱 부추기는 결과를 낳고 있습니다.

정치적 양극화는 서로 다른 정치적 이념을 가진 집단 간의 대화가 이루어지지 않으며, 상호 간의 신뢰가 떨어지는 현상을 의미합니다. 특히 소셜 미디어의 발달과 함께 정치적 의견을 형성하는 방식도 변화했으며, 정보의 편향성과 확증 편향이 이러한 문제를 더욱 심화시키고 있습니다. 특정 이념이나 입장을 지지하는 사람들은 자신이 믿고 싶은 정보만을 선택적으로 수용하게 되면서 상대방의 의견을 들을 기회가 줄어들고, 이는 정치적 갈등을 더욱 고조시키는 결과를 가져옵니다.

이러한 문제를 해결하기 위해서는 대화와 소통의 복원이 필수적입니다. 정치적 이념과 입장이 다르더라도 서로의 의견을 존중하고 경청하는 자세가 중요합니다. 이는 정치적 리더십에서도 중요한 덕목으로 작용하며, 시민과의 소통이 원활하지 않으면 정치적 결정의 신뢰도가 떨어지고 정책 집행에도 어려움을 겪을 수 있습니다. 정치인은 국민의 의견을 수렴하고 이를 정책에 반영하는 역할을 해야 하며, 이러한 과정을 통해 민주주의의 본질인 대화와 타협이 이루어질 수 있습니다.

최근에는 정치적 소통의 중요성을 인식한 일부 정치인들이 시민과 직접 소통하는 다양한 시도를 하고 있습니다. 소셜 미디어를 통해 직접 국민들과 대화를 나누거나, 지역 사회에서 소규모 타운홀 미팅을 개최해 시민들의 목소리를 직접 듣는 방식이 그 예입니다. 이러한 시도는 정치적 신뢰를 높이고, 시민들이 정치 과정에 더욱 적극적으로 참여할 수 있는 기회를 제공하고 있습니다.

하지만 소통의 활성화만으로 모든 정치적 문제가 해결되는 것은 아닙니다. 대화의 질도 중요합니다. 정치적 소통에서 가장 중요한 것은 단순한 의견 교환이 아니라, 서로의 입장을 이해하고 존중하는 과정입니다. 즉, 대화를 통해 합의를 이끌어내는 과정이 중요한 것입니다. 그렇지 않으면 정치적 대화는 오히려 갈등을 증폭시키는 역할을 할 수 있습니다. 따라서 정치적 소통을 통해 신뢰를 회복하기 위해서는 정치인뿐만 아니라 시민들도 상호 존중과 이해를 바탕으로 소통에 임하는 자세가 필요합니다.

정치적 신뢰는 한 번 무너지면 회복하기 어려운 요소 중 하나입니다. 특히, 부패나 권력 남용과 같은 정치적 스캔들은 국민의 신뢰를 심각하게 훼손시키며, 이는 정치적 시스템 전체에 부정적인 영향을 미칩니다. 따라서 정치인은 투명하고 공정한 정치 활동을 통해 신뢰를 쌓아 나가야 하며, 시민과의 소통을 통해 그 신뢰를 강화해 나가는 것이 중요합니다.

결론적으로, 현대 정치에서 소통은 필수적인 요소로 자리 잡고 있습니다. 정치적 양극화와 정보 편향성이 심화된 시대일수록 대화와 소통이 더욱 중요해집니다. 정치인과 시민 모두가 서로의 의견을 존중하고 대화를 나누는 자세를 갖춘다면, 민주주의는 더욱 건강하게 발전할 수 있을 것입니다.
', '정치적 소통은 현대 민주주의에서 필수적인 요소로, 시민과 정치인 간 신뢰 형성에 중요한 역할을 합니다. 하지만 정치적 양극화와 소셜 미디어의 확증 편향은 소통을 방해하며 갈등을 심화시키고 있습니다. 이를 해결하기 위해서는 서로의 의견을 존중하고 경청하는 대화가 필요합니다. 정치인들은 시민과 소통을 강화하기 위해 소셜 미디어나 타운홀 미팅과 같은 방식을 도입하고 있으며, 이러한 노력은 정치적 신뢰를 회복하는 데 기여합니다. 그러나 단순한 소통보다는 질 높은 대화와 상호 존중이 중요합니다. 정치적 신뢰는 투명하고 공정한 정치 활동과 진정성 있는 소통을 통해 쌓아나가야 합니다. 결국, 대화와 소통은 현대 민주주의의 건강한 발전을 위한 필수적인 요소입니다.
');
INSERT INTO honeymorning.brief (created_at, id, updated_at, user_id, content, summary)
VALUES ('2024-09-20 15:29:26.000000', 3, '2024-09-20 15:29:24.000000', 3, '변화하는 생활문화와 현대인의 일상

생활문화는 시간의 흐름에 따라 지속적으로 변화하며, 현대 사회에서 그 변화는 더욱 빠르게 진행되고 있다. 과거에는 전통적인 가족 중심의 생활 패턴이 주를 이루었지만, 현대에는 1인 가구의 증가와 함께 개인의 생활 방식이 더욱 다양화되었다. 특히, 1인 가구의 증가는 집안일, 여가, 소비 패턴 등의 변화를 가져왔다. 이러한 변화는 단순히 개인의 선택이 아니라 사회, 경제적 요인들이 얽혀 있으며, 그에 따라 새로운 생활문화를 만들어내고 있다.

또한, 기술의 발전은 생활문화의 변화를 가속화시켰다. 예를 들어, 스마트폰과 같은 IT 기기들이 우리의 일상에 깊숙이 자리 잡으면서 정보 소비와 커뮤니케이션 방식이 변화했다. 과거에는 신문, 텔레비전 등이 주요 정보 전달 수단이었으나, 이제는 소셜 미디어와 같은 디지털 플랫폼을 통해 실시간으로 정보가 전달되고 있다. 이러한 변화는 특히 젊은 세대에게서 두드러지게 나타나며, 다양한 플랫폼에서의 소통과 참여가 새로운 문화적 트렌드로 자리 잡고 있다.

소비문화 또한 빠르게 변화하고 있다. 온라인 쇼핑의 확산으로 전통적인 오프라인 매장 중심의 소비 패턴이 점차 줄어들고 있으며, 그 대신 편리함과 효율성을 강조한 온라인 소비가 주를 이루고 있다. 특히, 코로나19 팬데믹 이후 비대면 소비의 중요성은 더욱 커졌으며, 이는 생활문화 전반에 걸쳐 큰 변화를 가져왔다. 이와 함께 배달 음식 서비스의 확대, 정기 구독 서비스의 증가 등도 현대인의 생활 방식을 크게 바꾼 요소들 중 하나다.

문화적 다양성 또한 생활문화의 중요한 부분을 차지한다. 다문화 사회로의 변화는 음식, 의상, 언어, 예술 등 여러 방면에서 영향을 미쳤다. 예를 들어, 한국에서는 다양한 나라의 음식이 대중화되었으며, 이는 음식 문화를 더욱 풍부하게 만들었다. 뿐만 아니라, 다양한 국적의 사람들이 한 공간에서 생활하며 문화적 융합이 이루어지고 있으며, 이러한 변화는 사회적 포용력을 강화하는 데 기여하고 있다.

휴식과 여가에 대한 인식도 변화하고 있다. 과거에는 가족 단위의 집단적 활동이 중심이었다면, 현대에는 개인의 취향을 존중하는 다양한 여가 활동이 주목받고 있다. 여행, 스포츠, 게임, 독서 등 다양한 취미 활동이 생활문화의 중요한 요소로 자리 잡고 있으며, 이를 통해 사람들은 스트레스를 해소하고 삶의 질을 향상시키고 있다. 특히, 최근 들어 자연을 찾는 사람들이 늘어나면서 자연 친화적 생활 방식이 새로운 트렌드로 떠오르고 있다.

마지막으로, 코로나19 팬데믹은 생활문화를 재구성하는 데 중요한 역할을 했다. 비대면 생활방식이 필수적으로 자리 잡으면서 재택근무, 온라인 교육, 화상회의 등이 보편화되었고, 이는 앞으로도 지속적인 영향을 미칠 것으로 보인다. 전통적인 일상 패턴에서 벗어나 새로운 생활 방식이 형성되고 있으며, 이는 사회 전반에 걸친 문화적 변화를 이끌고 있다.

이처럼 생활문화는 사회, 기술, 환경 등 다양한 요인들에 의해 끊임없이 변화하고 있다. 이러한 변화는 사람들의 일상에 깊이 스며들어 있으며, 앞으로도 더욱 다변화될 것이다.',
        '생활문화는 빠르게 변화하고 있으며, 1인 가구의 증가, 기술 발전, 온라인 소비의 확산 등이 주요한 요인으로 작용하고 있다. 특히, 스마트폰과 디지털 플랫폼의 발달로 정보 소비와 소통 방식이 달라졌고, 코로나19 팬데믹 이후 비대면 생활 방식이 새로운 문화로 자리 잡았다. 또한, 다문화 사회로의 변화는 음식과 예술 등의 영역에서 문화적 융합을 촉진하고 있으며, 자연 친화적 생활 방식과 개인화된 여가 활동이 주목받고 있다.');
INSERT INTO honeymorning.brief (created_at, id, updated_at, user_id, content, summary)
VALUES ('2024-09-20 15:29:24.000000', 4, '2024-09-20 15:29:24.000000', 1, 'IT 과학의 발전과 미래

IT 과학은 지난 몇 십 년간 눈부신 발전을 이루며 우리의 삶을 혁신적으로 변화시켰다. 특히 인공지능(AI), 빅데이터, 사물인터넷(IoT) 등의 기술은 다양한 산업 분야에서 중요한 역할을 하고 있으며, 앞으로도 그 중요성은 더욱 커질 것이다. 인공지능은 다양한 분야에서 인간의 사고 능력을 모방하거나 이를 뛰어넘는 수준까지 발전했다. 예를 들어, AI는 의료, 금융, 교육 등 여러 산업에서 데이터를 분석하고, 예측하며, 문제를 해결하는 데 활용되고 있다. 자율주행차도 인공지능의 중요한 응용 분야 중 하나로, 인간의 개입 없이도 스스로 운행할 수 있는 차량을 실현하고 있다.

빅데이터 또한 IT 과학에서 중요한 역할을 한다. 기업과 정부는 막대한 데이터를 수집하고, 이를 분석하여 유용한 정보를 도출해내고 있다. 이러한 데이터 분석은 소비자 행동을 예측하거나, 경제 동향을 분석하는 데 유용하게 쓰인다. 빅데이터는 또한 공공 건강 관리, 범죄 예방 등 다양한 사회적 문제를 해결하는 데도 기여하고 있다. 그러나 데이터의 수집과 활용에 있어 개인정보 보호 및 보안 문제도 중요한 과제로 대두되고 있다.

사물인터넷(IoT)은 물리적인 사물을 인터넷과 연결하여 데이터를 주고받는 기술이다. IoT 기기는 스마트홈, 스마트시티, 헬스케어 등 다양한 분야에서 활용되고 있다. 예를 들어, 스마트홈에서는 조명, 난방, 가전제품 등을 원격으로 제어할 수 있으며, 스마트시티에서는 교통 흐름을 관리하거나 에너지를 효율적으로 사용하는 데 IoT 기술이 쓰인다. 헬스케어 분야에서는 환자의 건강 상태를 실시간으로 모니터링하고, 의료 데이터를 통해 질병을 예측하는 데 IoT가 활용된다.

이와 더불어 클라우드 컴퓨팅은 IT 과학의 필수 요소로 자리 잡았다. 클라우드는 데이터 저장, 처리, 그리고 응용 프로그램 실행을 인터넷을 통해 가능하게 한다. 이를 통해 기업은 물리적인 서버를 유지할 필요 없이 언제 어디서든 데이터에 접근하고, 필요한 컴퓨팅 자원을 유동적으로 사용할 수 있다. 또한, 클라우드는 전 세계적인 협업을 가능하게 하며, 비용 절감에도 큰 도움을 준다.

IT 과학의 발전으로 우리는 지금까지 경험하지 못했던 새로운 기술들을 사용하게 되었으며, 이는 사회 전반에 걸쳐 변화를 가져왔다. 그러나 이러한 기술 발전과 함께 사이버 보안, 개인정보 보호, 디지털 격차 등 여러 문제들도 함께 등장했다. 미래에는 이러한 문제를 해결하면서 더욱 발전된 IT 과학을 통해 더 나은 세상을 만들 수 있을 것이다.',
        'IT 과학은 인공지능(AI), 빅데이터, 사물인터넷(IoT), 클라우드 컴퓨팅 등 여러 분야에서 혁신적인 발전을 이뤘다. AI는 의료, 금융 등 다양한 산업에서 중요한 역할을 하며, 자율주행차와 같은 응용 분야도 성장 중이다. 빅데이터는 경제 예측, 범죄 예방에 사용되며, IoT는 스마트홈과 헬스케어에 활용된다. 클라우드 컴퓨팅은 전 세계적인 협업과 비용 절감을 가능하게 한다. 그러나 이러한 기술 발전과 함께 개인정보 보호와 사이버 보안 문제도 중요한 과제로 떠오르고 있다.');
INSERT INTO honeymorning.brief (created_at, id, updated_at, user_id, content, summary)
VALUES ('2024-09-20 15:29:24.000000', 5, '2024-09-20 15:29:24.000000', 2, '글로벌화와 세계의 변화

세계는 빠르게 변화하고 있다. 경제, 정치, 문화의 경계가 모호해지면서 글로벌화는 인간 생활의 거의 모든 측면에 영향을 미치고 있다. 국가 간 무역이 활발해지고, 정보와 기술의 교류가 더욱 빈번해지면서 세상은 과거 어느 때보다 연결되고 있다. 세계 경제는 글로벌 공급망을 통해 각국이 상호 의존하는 구조로 바뀌었으며, 이는 단순히 경제적인 차원을 넘어 정치적, 사회적 안정성에도 영향을 미치고 있다. 예를 들어, 한 나라의 정치적 불안정은 그 나라에서 생산되는 제품의 공급 차질로 이어져 전 세계의 경제적 파급 효과를 일으킬 수 있다.

또한, 글로벌화는 문화에도 큰 영향을 미치고 있다. 다양한 나라와 문화가 서로 접촉하면서 다문화 사회가 형성되고 있으며, 이를 통해 인종, 종교, 언어의 다양성이 중요시되고 있다. 그러나 이러한 다문화화는 긍정적인 영향만을 미치지는 않는다. 때때로 문화적 차이로 인해 오해나 갈등이 발생하기도 하며, 일부 지역에서는 고유의 문화와 전통이 위협받기도 한다.

글로벌화의 또 다른 주요 측면은 환경 문제다. 산업화와 도시화가 급격히 진행되면서 전 세계적으로 환경 오염과 기후 변화 문제가 심각해지고 있다. 국제 사회는 이러한 문제를 해결하기 위해 여러 협약과 정책을 마련했지만, 여전히 해결해야 할 과제가 많다. 특히 선진국과 개발도상국 간의 책임 분담 문제는 글로벌 환경 정책에서 중요한 쟁점으로 떠오르고 있다. 각국은 자국의 경제 발전과 환경 보호 사이에서 균형을 찾기 위해 노력하고 있으며, 이를 위해 재생 에너지와 지속 가능한 발전 방안을 모색하고 있다.

또한, 최근 몇 년간 전 세계를 강타한 코로나19 팬데믹은 글로벌화를 재검토하게 만드는 중요한 사건이었다. 팬데믹은 전 세계적으로 사람과 물자의 이동을 제한하고, 각국의 경제를 위축시켰다. 이를 통해 국가 간 상호 의존성이 강화된 만큼, 위기 상황에서는 각국이 자국 내 문제를 우선시해야 한다는 점이 부각되었다. 하지만 동시에 백신 개발과 배포 과정에서 본 것처럼 국제 협력이 중요함도 다시금 확인되었다.

세계의 정치적 변화도 주목할 만하다. 각국의 외교 관계와 국제기구의 역할이 변화하면서 새로운 질서가 형성되고 있다. 특히, 미국과 중국 간의 무역 갈등, 유럽연합의 브렉시트, 중동 지역의 불안정 등은 세계 정세에 큰 영향을 미치고 있다. 이러한 상황 속에서 각국은 자국의 이익을 보호하면서도 국제 협력을 유지하기 위한 전략을 모색하고 있다.

세계는 빠르게 변화하고 있으며, 이러한 변화는 글로벌 차원에서 다양한 방식으로 나타나고 있다. 글로벌화, 환경 문제, 그리고 국제 정치의 변화는 앞으로도 우리가 마주할 중요한 도전 과제들이다.',
        '세계는 글로벌화와 함께 빠르게 변화하고 있다. 경제, 정치, 문화가 연결되며 상호 의존성이 강화되었고, 이는 무역, 기술, 환경 등에 큰 영향을 미치고 있다. 다문화 사회와 기후 변화, 팬데믹과 같은 도전 과제들이 대두되고 있으며, 각국은 자국의 이익을 보호하면서도 국제 협력을 통해 문제를 해결하려 하고 있다. 이러한 변화는 국제 정세와 경제 질서에 중대한 영향을 미치며, 앞으로도 세계는 끊임없이 변화할 것이다.');
INSERT INTO honeymorning.brief (created_at, id, updated_at, user_id, content, summary)
VALUES ('2024-09-20 15:29:24.000000', 6, '2024-09-20 15:29:24.000000', 3, '스포츠의 변화와 현대 사회에서의 역할

스포츠는 단순한 신체 활동을 넘어 전 세계적으로 문화, 사회적 역할을 담당하는 중요한 요소로 자리 잡고 있다. 과거에는 스포츠가 신체 건강을 유지하고 경쟁을 통해 우열을 가리는 활동으로 여겨졌지만, 현대 사회에서는 여가, 문화, 그리고 경제적인 측면에서 점점 더 중요한 위치를 차지하게 되었다. 특히, 프로 스포츠 리그의 확산과 미디어 기술의 발전은 스포츠가 전 세계적으로 사랑받는 콘텐츠로 자리매김하게 했다.

스포츠의 역할 중 하나는 신체 건강의 증진이다. 현대인은 운동 부족과 스트레스에 시달리며 건강 문제가 심각해지고 있는 상황에서, 스포츠는 이를 극복할 수 있는 주요 방법으로 인정받고 있다. 다양한 스포츠 활동을 통해 신체적 건강뿐만 아니라 정신적인 건강도 증진할 수 있으며, 이를 통해 사람들은 더욱 건강하고 행복한 삶을 유지할 수 있다.

또한, 스포츠는 사회적 연결을 강화하는 도구로 기능한다. 지역사회에서 함께하는 스포츠는 구성원 간의 유대감을 형성하고, 팀워크와 협동심을 배양할 수 있는 좋은 기회를 제공한다. 축구, 농구, 야구 등 인기 있는 스포츠들은 사람들에게 함께하는 즐거움과 동료애를 느끼게 해준다. 이러한 스포츠 활동은 사람들이 소속감을 느끼게 하며, 다양한 배경의 사람들이 한데 모여 공통의 목표를 이루기 위해 협력하는 중요한 사회적 장치로 작용한다.

스포츠가 사회적, 경제적 역할을 담당하는 또 다른 방법은 바로 스포츠 산업의 발전이다. 프로 리그와 국제 스포츠 대회는 경제적인 측면에서 막대한 영향을 미친다. 스포츠 경기는 수많은 관중과 팬들을 끌어들이며, 이를 통해 광고, 방송권, 상품 판매 등 다양한 산업이 성장하고 있다. 예를 들어, 올림픽과 같은 대형 국제 스포츠 대회는 개최 도시와 국가에 경제적 활력을 불어넣으며, 스포츠 관광 산업을 촉진하기도 한다.

기술의 발전 또한 스포츠의 경험을 변화시키고 있다. 가상 현실(VR), 증강 현실(AR) 등의 기술이 스포츠 관람 방식을 혁신하고 있다. 이제 팬들은 집에서도 실제 경기장에서와 같은 경험을 할 수 있으며, 이를 통해 스포츠의 접근성이 더욱 높아지고 있다. 또한, 스포츠 데이터 분석 기술의 발전은 팀과 선수들의 퍼포먼스를 개선하는 데 중요한 역할을 하고 있다. 데이터 기반의 분석을 통해 선수들은 자신들의 경기력을 향상시키고, 팀은 더욱 전략적인 게임 플랜을 수립할 수 있다.

이 외에도, 여성 스포츠의 발전은 중요한 변화 중 하나다. 과거에는 주로 남성들이 주도하던 스포츠 무대였지만, 이제는 여성 선수들이 다양한 종목에서 눈부신 활약을 펼치고 있다. 여성 스포츠 리그의 창설과 여성 스포츠 대회의 확대는 성별 간의 평등을 증진시키며, 스포츠의 다양한 면모를 보여준다.

스포츠는 또한 정치와도 밀접하게 연관되어 있다. 예를 들어, 올림픽과 같은 국제 대회는 참가국 간의 외교적인 긴장과 협력을 동시에 보여준다. 이러한 스포츠 외교는 세계 평화와 국제 관계에 긍정적인 영향을 미치는 사례로 자주 언급된다.

결국, 스포츠는 현대 사회에서 단순한 경쟁을 넘어서 다양한 의미를 담고 있다. 신체적, 정신적 건강 증진, 사회적 연결 강화, 경제적 발전, 기술 혁신, 그리고 성별 평등과 같은 다양한 이슈들이 스포츠와 맞물려 있다. 스포츠는 앞으로도 이러한 다각적인 역할을 수행하며 현대 사회의 중요한 축으로 남을 것이다.
',
        '스포츠는 현대 사회에서 건강 증진, 사회적 연결 강화, 경제적 발전, 기술 혁신, 성별 평등 등의 다양한 역할을 수행하고 있다. 특히, 기술 발전은 스포츠 관람 방식을 혁신하고, 데이터 분석은 경기 전략에 중요한 영향을 미친다. 여성 스포츠의 발전은 성별 평등을 증진하며, 스포츠는 국제 외교와도 밀접하게 연관되어 있다. 스포츠는 신체 활동을 넘어 현대 사회에서 중요한 문화적, 경제적 요소로 자리 잡았다.');
INSERT INTO honeymorning.brief (created_at, id, updated_at, user_id, content, summary)
VALUES ('2024-09-20 15:29:24.000000', 7, '2024-09-20 15:29:24.000000', 1, '현대 경제의 변화와 글로벌 경제의 역할

현대 경제는 글로벌화, 디지털화, 지속 가능성, 그리고 불확실성 속에서 빠르게 변화하고 있다. 이 변화는 개별 국가의 경제를 넘어 전 세계적으로 영향을 미치고 있으며, 글로벌 경제의 중요성이 날로 커지고 있다. 경제의 기본 요소인 생산, 소비, 교환, 그리고 분배가 모두 빠르게 진화하고 있으며, 이를 통해 기업과 국가들은 새로운 기회를 포착하고 도전 과제를 해결해 나가고 있다.

우선, 글로벌 경제의 확산은 다양한 국가 간 경제적 상호 의존성을 심화시키고 있다. 무역과 투자의 국제화는 각국의 경제성장을 촉진시키지만, 동시에 외부 충격에 더 취약하게 만들기도 한다. 예를 들어, 한 국가의 금융 위기는 다른 국가로 빠르게 전파될 수 있으며, 이는 글로벌 경제의 불확실성을 증가시키는 요인이 된다. 2008년 금융위기는 그 대표적인 사례로, 미국에서 시작된 위기가 곧 전 세계로 확산되어 글로벌 경제 침체를 초래했다.

이러한 불확실성 속에서 국가들은 경제적 안정을 추구하기 위해 다양한 정책을 도입하고 있다. 중앙은행들은 통화정책을 통해 물가 안정과 경제 성장 간의 균형을 맞추고 있으며, 정부는 재정정책을 통해 일자리 창출과 사회적 안전망을 강화하려고 한다. 특히 코로나19 팬데믹 이후, 각국은 대규모 경기 부양책을 통해 경제 회복을 도모하고 있으며, 이를 통해 고용과 경제 활동을 촉진하고 있다.

디지털 경제의 확산도 경제 구조에 큰 변화를 가져왔다. 전통적인 산업 중심의 경제는 이제 정보 기술(IT)과 디지털 플랫폼을 중심으로 재편되고 있다. 기업들은 온라인 상거래, 디지털 결제, 클라우드 컴퓨팅 등의 새로운 기술을 활용하여 생산성을 높이고 새로운 시장을 개척하고 있다. 특히, 전자상거래는 팬데믹 동안 급격한 성장을 보였으며, 이제는 많은 기업들이 글로벌 시장에서의 경쟁력을 유지하기 위해 디지털 전환을 필수적으로 여기고 있다.

또한, 지속 가능성이 경제의 핵심 이슈로 떠오르고 있다. 기후 변화와 환경 문제는 경제적 의사결정에 큰 영향을 미치며, 기업과 국가들은 지속 가능한 성장을 위한 노력을 기울이고 있다. 재생 가능 에너지, 친환경 기술, 탄소 배출 감소를 목표로 하는 새로운 경제 모델이 등장하고 있으며, 이는 장기적으로 경제 성장과 환경 보호 간의 조화를 이루는 데 중요한 역할을 할 것으로 예상된다.

소비자들도 변화하고 있다. 디지털화된 세계에서 소비자들은 더 많은 선택지를 가지고 있으며, 이를 통해 자신에게 맞는 제품과 서비스를 쉽게 비교하고 선택할 수 있다. 이로 인해 기업들은 더 높은 품질의 제품을 제공하고, 고객 경험을 개선하는 데 집중하고 있다. 예를 들어, 고객 맞춤형 서비스와 디지털 마케팅은 기업의 성공에 중요한 요소로 자리 잡고 있다.

마지막으로, 경제 불평등 문제는 여전히 해결해야 할 중요한 과제다. 소득 불평등과 부의 불균형은 경제 성장에 제약을 가할 수 있으며, 이를 해결하기 위해 각국은 세제 개혁과 사회적 지원 프로그램을 도입하고 있다. 글로벌화와 디지털화가 경제 성장을 촉진하는 동시에 불평등을 악화시킬 수 있다는 점에서, 이러한 문제를 해결하기 위한 정책적 대응이 필요하다.

결론적으로, 현대 경제는 글로벌화, 디지털화, 지속 가능성, 그리고 불평등 문제를 중심으로 빠르게 변화하고 있다. 이러한 변화는 경제 구조와 정책, 그리고 기업과 소비자의 행동에 깊은 영향을 미치며, 미래 경제의 방향성을 결정하는 중요한 요인으로 작용할 것이다.',
        '현대 경제는 글로벌화, 디지털화, 지속 가능성, 불평등 등의 변화를 겪고 있다. 무역과 투자의 국제화는 국가 간 경제적 상호 의존성을 높였으며, 디지털 경제의 확산은 기업의 생산성과 시장 진입에 변화를 가져왔다. 동시에, 기후 변화와 같은 환경적 문제를 해결하기 위한 지속 가능한 성장 전략이 필요하며, 소득 불평등 문제도 중요한 과제로 남아 있다. 이처럼 경제는 빠르게 진화하고 있으며, 정책적 대응이 중요해지고 있다.');
INSERT INTO honeymorning.brief (created_at, id, updated_at, user_id, content, summary)
VALUES ('2024-09-20 15:29:24.000000', 8, '2024-09-20 15:29:24.000000', 1, '현대 사회의 변화와 도전 과제

현대 사회는 급격한 변화를 겪고 있으며, 이 변화는 정치, 경제, 기술, 문화 등 다양한 분야에서 나타나고 있다. 그중에서도 특히 기술의 발전과 디지털화는 사람들의 삶의 방식을 크게 바꾸어 놓았다. 인터넷과 스마트폰의 보급은 정보의 접근성을 높였고, 사람 간의 소통 방식에도 혁신을 가져왔다. 그러나 이러한 변화는 긍정적인 면만 있는 것이 아니다. 디지털화와 기술의 발전은 사회적 불평등을 심화시키고, 새로운 문제들을 야기하고 있다.

우선, 기술 발전에 따른 일자리의 변화는 중요한 사회적 문제로 떠오르고 있다. 자동화와 인공지능(AI)의 도입은 일부 산업에서 생산성을 크게 높였으나, 동시에 기존 일자리의 감소를 초래하고 있다. 제조업이나 물류 산업에서는 이미 자동화 기계가 사람을 대체하는 사례가 많아지고 있으며, 이는 노동시장에서의 불균형을 심화시키고 있다. 이러한 문제를 해결하기 위해 각국 정부는 새로운 일자리 창출과 직업 재교육 프로그램을 강화하고 있으나, 변화의 속도가 매우 빨라 적절한 대응이 쉽지 않다.

또한, 사회적 불평등 문제는 점점 더 심화되고 있다. 부유층과 빈곤층 간의 격차는 계속해서 커지고 있으며, 이는 교육, 건강, 주거 등 다양한 분야에서 큰 차이를 만들고 있다. 특히, 교육의 경우 경제적 여건에 따라 학습 기회의 차이가 발생하고 있으며, 이는 장기적으로 개인의 사회적 이동성을 제한하게 된다. 이러한 문제는 사회 전반에 걸쳐 불만을 증대시키고 있으며, 정치적, 사회적 갈등으로 이어질 가능성도 높다.

뿐만 아니라, 현대 사회에서는 가족 구조의 변화도 큰 주제로 떠오르고 있다. 결혼과 출산율의 감소, 1인 가구의 증가 등으로 인해 전통적인 가족 개념이 변화하고 있다. 이러한 변화는 사회적 안전망에 영향을 미치며, 특히 노인 인구의 증가와 함께 고령화 사회로 진입하는 국가들에서는 노인 부양 문제도 중요한 이슈로 부상하고 있다. 많은 국가들이 고령화 사회에 대응하기 위한 정책을 마련하고 있지만, 경제적 부담과 인력 부족 문제 등 다양한 난관에 직면해 있다.

한편, 환경 문제 역시 현대 사회의 중요한 이슈로 자리 잡고 있다. 기후 변화와 환경 오염은 전 세계적으로 심각한 문제로 대두되었으며, 이는 인간의 삶에 직접적인 영향을 미치고 있다. 미세먼지, 온실가스 배출, 산림 파괴 등 다양한 환경 문제가 악화되면서, 각국은 환경 보호를 위한 정책을 강화하고 있다. 지속 가능한 발전을 목표로 한 정책들이 도입되고 있지만, 경제 성장과 환경 보호 간의 균형을 맞추는 것이 여전히 어려운 과제다.

마지막으로, 현대 사회에서의 심리적 문제도 중요한 주제로 다루어지고 있다. 기술 발전과 사회 변화로 인해 스트레스와 불안, 우울증을 경험하는 사람들이 증가하고 있다. 특히, 청소년과 젊은 세대에서는 심리적 문제로 인한 사회적 고립이나 자살률 증가가 심각한 문제로 떠오르고 있다. 이에 대한 대책으로 정신건강 지원 시스템을 강화하고, 심리적 지원을 제공하는 프로그램들이 개발되고 있지만, 여전히 많은 개선이 필요하다.

결론적으로, 현대 사회는 기술 발전, 사회적 불평등, 가족 구조의 변화, 환경 문제, 심리적 건강 문제 등 다양한 도전 과제에 직면해 있다. 이러한 문제들을 해결하기 위해서는 사회 구성원 간의 협력과 지속적인 정책적 노력이 필요하다. 정부와 기업, 개인 모두가 이러한 문제를 인식하고 함께 대응하는 것이 현대 사회의 안정적 발전을 위한 필수 요소다.
',
        '현대 사회는 기술 발전, 사회적 불평등, 가족 구조의 변화, 환경 문제, 심리적 건강 문제 등 다양한 변화를 겪고 있다. 자동화와 인공지능의 도입은 일자리 변화와 불평등 문제를 심화시키고 있으며, 결혼과 출산율 감소, 1인 가구 증가 등 가족 구조의 변화도 중요한 이슈로 대두되고 있다. 또한, 기후 변화와 환경 오염 문제는 각국이 해결해야 할 주요 과제로 자리 잡고 있다. 이러한 문제들을 해결하기 위해서는 사회적 협력과 정책적 노력이 요구된다.');

INSERT INTO honeymorning.brief_category (brief_category_id, brief_id, created_at, tag_id, updated_at)
VALUES (1, 1, '2024-09-20 15:34:43.000000', 7, '2024-09-20 15:34:43.000000');
INSERT INTO honeymorning.brief_category (brief_category_id, brief_id, created_at, tag_id, updated_at)
VALUES (2, 2, '2024-09-20 15:34:43.000000', 1, '2024-09-20 15:34:43.000000');
INSERT INTO honeymorning.brief_category (brief_category_id, brief_id, created_at, tag_id, updated_at)
VALUES (3, 3, '2024-09-20 15:34:43.000000', 4, '2024-09-20 15:34:43.000000');
INSERT INTO honeymorning.brief_category (brief_category_id, brief_id, created_at, tag_id, updated_at)
VALUES (4, 4, '2024-09-20 15:29:24.000000', 5, '2024-09-20 15:29:24.000000');
INSERT INTO honeymorning.brief_category (brief_category_id, brief_id, created_at, tag_id, updated_at)
VALUES (5, 5, '2024-09-20 15:29:24.000000', 6, '2024-09-20 15:29:24.000000');
INSERT INTO honeymorning.brief_category (brief_category_id, brief_id, created_at, tag_id, updated_at)
VALUES (6, 6, '2024-09-20 15:29:24.000000', 8, '2024-09-20 15:29:24.000000');
INSERT INTO honeymorning.brief_category (brief_category_id, brief_id, created_at, tag_id, updated_at)
VALUES (7, 7, '2024-09-20 15:29:24.000000', 2, '2024-09-20 15:29:24.000000');
INSERT INTO honeymorning.brief_category (brief_category_id, brief_id, created_at, tag_id, updated_at)
VALUES (8, 8, '2024-09-20 15:29:24.000000', 3, '2024-09-20 15:29:24.000000');


INSERT INTO honeymorning.quiz (answer, selection, brief_id, created_at, quiz_id, updated_at, option1, option2, option3,
                               option4, question)
VALUES (2, 2, 1, '2024-09-20 15:34:43.000000', 1, '2024-09-20 15:34:43.000000', '경제적 어려움', '소통의 부족', '서로의 취미 차이',
        '물리적 거리', '다음 중 연애 관계에서 발생할 수 있는 주요 문제로 언급된 것은 무엇인가요?');
INSERT INTO honeymorning.quiz (answer, selection, brief_id, created_at, quiz_id, updated_at, option1, option2, option3,
                               option4, question)
VALUES (3, 2, 1, '2024-09-20 15:34:43.000000', 2, '2024-09-20 15:34:43.000000', '오프라인 데이트 증가', '짧은 만남 선호',
        '메타버스 데이트와 같은 온라인 소통의 중요성 증가', '감정 일기를 쓰는 사람 감소', '코로나19 팬데믹 이후로 데이트 방식에 어떤 변화가 나타났나요?');
INSERT INTO honeymorning.quiz (answer, selection, brief_id, created_at, quiz_id, updated_at, option1, option2, option3,
                               option4, question)
VALUES (3, 1, 2, '2024-09-20 15:34:43.000000', 3, '2024-09-20 15:34:43.000000', '시민과 정치인의 직접적인 대화가 늘어나기 때문이다.',
        '정치인들이 타협을 시도하지 않기 때문이다.', '사람들이 자신이 믿고 싶은 정보만 선택적으로 받아들이기 때문이다.', '정치적 신뢰가 완전히 사라졌기 때문이다.',
        '정치적 양극화와 확증 편향은 어떤 방식으로 현대 정치에서 갈등을 심화시키나요?');
INSERT INTO honeymorning.quiz (answer, selection, brief_id, created_at, quiz_id, updated_at, option1, option2, option3,
                               option4, question)
VALUES (3, 2, 2, '2024-09-20 15:34:43.000000', 4, '2024-09-20 15:34:43.000000', '정책 결정 과정이 더욱 복잡해졌기 때문이다.',
        '소셜 미디어가 주요 정보 전달 수단이 되었기 때문이다.', '정치적 신뢰를 형성하고 갈등을 줄이기 위해서다.', '정당 간 협력이 더 이상 불가능하기 때문이다.',
        '현대 정치에서 소통이 중요한 이유는 무엇인가요?');
INSERT INTO honeymorning.quiz (answer, selection, brief_id, created_at, quiz_id, updated_at, option1, option2, option3,
                               option4, question)
VALUES (1, 1, 3, '2024-09-20 15:34:43.000000', 5, '2024-09-20 15:34:43.000000', '인터넷과 스마트폰 보급', '전통 시장의 활성화',
        '농업 기술의 발달', '연예 산업의 성장
', '최근 생활 문화에서 변화한 소비 패턴의 주요 원인은 무엇인가요?');
INSERT INTO honeymorning.quiz (answer, selection, brief_id, created_at, quiz_id, updated_at, option1, option2, option3,
                               option4, question)
VALUES (3, 3, 3, '2024-09-20 15:34:43.000000', 6, '2024-09-20 15:34:43.000000', '종교 활동의 증가', '대면 소통의 확대',
        '비대면 활동과 온라인 소통의 증가', '전통적인 직업 형태의 복귀', '펜데믹 이후 중요해진 생활 문화의 변화는 무엇인가요?');
INSERT INTO honeymorning.quiz (answer, selection, brief_id, created_at, quiz_id, updated_at, option1, option2, option3,
                               option4, question)
VALUES (3, 4, 4, '2024-09-20 15:34:43.000000', 7, '2024-09-20 15:34:43.000000', '금융', '의료
', '건설
', '교육
', '인공지능(AI)이 적용되지 않은 산업 분야는?    ');
INSERT INTO honeymorning.quiz (answer, selection, brief_id, created_at, quiz_id, updated_at, option1, option2, option3,
                               option4, question)
VALUES (2, 2, 4, '2024-09-20 15:34:43.000000', 8, '2024-09-20 15:34:43.000000', '데이터 손실 방지', '비용 절감 및 유연한 컴퓨팅 자원 사용',
        '보안 강화', '느린 데이터 처리', '클라우드 컴퓨팅의 주요 이점은 무엇인가?   ');
INSERT INTO honeymorning.quiz (answer, selection, brief_id, created_at, quiz_id, updated_at, option1, option2, option3,
                               option4, question)
VALUES (2, 3, 5, '2024-09-20 15:34:43.000000', 9, '2024-09-20 15:34:43.000000', '기술 발전의 둔화', '국제 간 상호 의존성 강화',
        '국가 간 무역의 감소', '환경 오염의 감소', '글로벌화가 촉발한 주요 변화는 무엇인가?');
INSERT INTO honeymorning.quiz (answer, selection, brief_id, created_at, quiz_id, updated_at, option1, option2, option3,
                               option4, question)
VALUES (1, 2, 5, '2024-09-20 15:34:43.000000', 10, '2024-09-20 15:34:43.000000', '브렉시트', '산업 혁명', '중세 봉건제도',
        '제1차 세계 대전', '최근 세계 경제에 큰 영향을 미친 사건은 무엇인가?');
INSERT INTO honeymorning.quiz (answer, selection, brief_id, created_at, quiz_id, updated_at, option1, option2, option3,
                               option4, question)
VALUES (2, 2, 6, '2024-09-20 15:34:43.000000', 11, '2024-09-20 15:34:43.000000', '전통 미디어의 역할 확대', '데이터 분석을 통한 경기 전략 수립',
        '팬들의 스포츠 경기장 방문 감소', '신체 건강을 위한 운동의 감소', '데이터 분석을 통한 경기 전략 수립');
INSERT INTO honeymorning.quiz (answer, selection, brief_id, created_at, quiz_id, updated_at, option1, option2, option3,
                               option4, question)
VALUES (3, 3, 6, '2024-09-20 15:34:43.000000', 12, '2024-09-20 15:34:43.000000', '경제적 부담 증가', '신체 활동 감소',
        '건강 증진과 사회적 연결 강화', '기술 혁신의 저해', '스포츠가 현대 사회에서 중요한 역할을 하는 이유로 적절한 것은 무엇인가?');
INSERT INTO honeymorning.quiz (answer, selection, brief_id, created_at, quiz_id, updated_at, option1, option2, option3,
                               option4, question)
VALUES (3, 1, 7, '2024-09-20 15:34:43.000000', 13, '2024-09-20 15:34:43.000000', '중앙은행의 역할 감소', '재생 가능 에너지의 발전',
        '기업의 생산성 향상과 새로운 시장 개척', '무역 의존도의 감소', '다음 중 디지털 경제의 확산으로 인해 발생한 변화로 적절한 것은 무엇인가?');
INSERT INTO honeymorning.quiz (answer, selection, brief_id, created_at, quiz_id, updated_at, option1, option2, option3,
                               option4, question)
VALUES (2, 2, 7, '2024-09-20 15:34:43.000000', 14, '2024-09-20 15:34:43.000000', '무역 감소', '재생 가능 에너지와 탄소 배출 감소',
        '소득 불평등 확대', '디지털 마케팅 강화', '경제성장과 환경 보호를 동시에 달성하기 위한 새로운 경제 모델은 무엇을 목표로 하고 있는가?');
INSERT INTO honeymorning.quiz (answer, selection, brief_id, created_at, quiz_id, updated_at, option1, option2, option3,
                               option4, question)
VALUES (2, 4, 8, '2024-09-20 15:34:43.000000', 15, '2024-09-20 15:34:43.000000', '환경 문제 해결', '일자리 감소와 노동시장 변화',
        '가족 구조의 안정성 강화', '사회적 불평등 해소', '현대 사회에서 자동화와 인공지능의 도입은 무엇을 초래했는가?  ');
INSERT INTO honeymorning.quiz (answer, selection, brief_id, created_at, quiz_id, updated_at, option1, option2, option3,
                               option4, question)
VALUES (2, 2, 8, '2024-09-20 15:34:43.000000', 16, '2024-09-20 15:34:43.000000', '기술 발전', '노인 부양
', '교육 격차
', '기후 변화
', '고령화 사회에서 중요한 이슈로 떠오른 문제는 무엇인가?');


INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (10, 3, '2024-09-22 05:18:08.000000', '2024-09-22 05:18:08.000000', 91, '문화');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (9, 3, '2024-09-22 05:18:08.000000', '2024-09-22 05:18:08.000000', 92, '생활');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (8, 3, '2024-09-22 05:18:08.000000', '2024-09-22 05:18:08.000000', 93, '트렌드');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (7, 3, '2024-09-22 05:18:08.000000', '2024-09-22 05:18:08.000000', 94, '습관');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (6, 3, '2024-09-22 05:18:08.000000', '2024-09-22 05:18:08.000000', 95, '소통');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (6, 3, '2024-09-22 05:18:08.000000', '2024-09-22 05:18:08.000000', 96, '변화');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (5, 3, '2024-09-22 05:18:08.000000', '2024-09-22 05:18:08.000000', 97, '공유');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (5, 3, '2024-09-22 05:18:08.000000', '2024-09-22 05:18:08.000000', 98, '전통');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (5, 3, '2024-09-22 05:18:08.000000', '2024-09-22 05:18:08.000000', 99, '혁신');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (4, 3, '2024-09-22 05:18:08.000000', '2024-09-22 05:18:08.000000', 100, '건강');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (4, 3, '2024-09-22 05:18:08.000000', '2024-09-22 05:18:08.000000', 101, '스트레스');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (3, 3, '2024-09-22 05:18:08.000000', '2024-09-22 05:18:08.000000', 102, '여가');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (3, 3, '2024-09-22 05:18:08.000000', '2024-09-22 05:18:08.000000', 103, '식생활');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (2, 3, '2024-09-22 05:18:08.000000', '2024-09-22 05:18:08.000000', 104, '건축');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (2, 3, '2024-09-22 05:18:08.000000', '2024-09-22 05:18:08.000000', 105, '디지털');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (1, 3, '2024-09-22 05:18:08.000000', '2024-09-22 05:18:08.000000', 106, '자연');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (1, 3, '2024-09-22 05:18:08.000000', '2024-09-22 05:18:08.000000', 107, '환경');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (1, 3, '2024-09-22 05:18:08.000000', '2024-09-22 05:18:08.000000', 108, '교류');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (3, 3, '2024-09-22 05:18:08.000000', '2024-09-22 05:18:08.000000', 109, '가족');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (4, 3, '2024-09-22 05:18:08.000000', '2024-09-22 05:18:08.000000', 110, '리더십');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (2, 3, '2024-09-22 05:18:08.000000', '2024-09-22 05:18:08.000000', 111, '취미');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (6, 3, '2024-09-22 05:18:08.000000', '2024-09-22 05:18:08.000000', 112, '운동');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (4, 3, '2024-09-22 05:18:08.000000', '2024-09-22 05:18:08.000000', 113, '취향');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (5, 3, '2024-09-22 05:18:08.000000', '2024-09-22 05:18:08.000000', 114, '행복');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (7, 3, '2024-09-22 05:18:08.000000', '2024-09-22 05:18:08.000000', 115, '즐거움');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (6, 3, '2024-09-22 05:18:08.000000', '2024-09-22 05:18:08.000000', 116, '여행');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (5, 3, '2024-09-22 05:18:08.000000', '2024-09-22 05:18:08.000000', 117, '음악');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (8, 3, '2024-09-22 05:18:08.000000', '2024-09-22 05:18:08.000000', 118, '음식');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (7, 3, '2024-09-22 05:18:08.000000', '2024-09-22 05:18:08.000000', 119, '패션');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (5, 3, '2024-09-22 05:18:08.000000', '2024-09-22 05:18:08.000000', 120, '주거');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (12, 2, '2024-09-22 05:20:18.000000', '2024-09-22 05:20:18.000000', 121, '경제');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (10, 2, '2024-09-22 05:20:18.000000', '2024-09-22 05:20:18.000000', 122, '금융');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (8, 2, '2024-09-22 05:20:18.000000', '2024-09-22 05:20:18.000000', 123, '성장');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (9, 2, '2024-09-22 05:20:18.000000', '2024-09-22 05:20:18.000000', 124, '투자');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (7, 2, '2024-09-22 05:20:18.000000', '2024-09-22 05:20:18.000000', 125, '소득');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (6, 2, '2024-09-22 05:20:18.000000', '2024-09-22 05:20:18.000000', 126, '자산');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (5, 2, '2024-09-22 05:20:18.000000', '2024-09-22 05:20:18.000000', 127, '지출');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (11, 2, '2024-09-22 05:20:18.000000', '2024-09-22 05:20:18.000000', 128, '물가');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (8, 2, '2024-09-22 05:20:18.000000', '2024-09-22 05:20:18.000000', 129, '수익');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (7, 2, '2024-09-22 05:20:18.000000', '2024-09-22 05:20:18.000000', 130, '채권');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (5, 2, '2024-09-22 05:20:18.000000', '2024-09-22 05:20:18.000000', 131, '주식');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (6, 2, '2024-09-22 05:20:18.000000', '2024-09-22 05:20:18.000000', 132, '환율');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (9, 2, '2024-09-22 05:20:18.000000', '2024-09-22 05:20:18.000000', 133, '부동산');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (4, 2, '2024-09-22 05:20:18.000000', '2024-09-22 05:20:18.000000', 134, '예산');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (3, 2, '2024-09-22 05:20:18.000000', '2024-09-22 05:20:18.000000', 135, '세금');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (6, 2, '2024-09-22 05:20:18.000000', '2024-09-22 05:20:18.000000', 136, '통화');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (5, 2, '2024-09-22 05:20:18.000000', '2024-09-22 05:20:18.000000', 137, '거시경제');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (7, 2, '2024-09-22 05:20:18.000000', '2024-09-22 05:20:18.000000', 138, '경제정책');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (4, 2, '2024-09-22 05:20:18.000000', '2024-09-22 05:20:18.000000', 139, '금리');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (3, 2, '2024-09-22 05:20:18.000000', '2024-09-22 05:20:18.000000', 140, '소비');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (8, 2, '2024-09-22 05:20:18.000000', '2024-09-22 05:20:18.000000', 141, '경기');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (5, 2, '2024-09-22 05:20:18.000000', '2024-09-22 05:20:18.000000', 142, '국제무역');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (6, 2, '2024-09-22 05:20:18.000000', '2024-09-22 05:20:18.000000', 143, '산업');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (4, 2, '2024-09-22 05:20:18.000000', '2024-09-22 05:20:18.000000', 144, '재정');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (3, 2, '2024-09-22 05:20:18.000000', '2024-09-22 05:20:18.000000', 145, '노동');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (9, 2, '2024-09-22 05:20:18.000000', '2024-09-22 05:20:18.000000', 146, '무역수지');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (4, 2, '2024-09-22 05:20:18.000000', '2024-09-22 05:20:18.000000', 147, '인플레이션');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (7, 2, '2024-09-22 05:20:18.000000', '2024-09-22 05:20:18.000000', 148, 'GDP');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (6, 2, '2024-09-22 05:20:18.000000', '2024-09-22 05:20:18.000000', 149, '비용');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (5, 2, '2024-09-22 05:20:18.000000', '2024-09-22 05:20:18.000000', 150, '리스크');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (12, 1, '2024-09-22 05:21:32.000000', '2024-09-22 05:21:32.000000', 151, '연애');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (10, 1, '2024-09-22 05:21:32.000000', '2024-09-22 05:21:32.000000', 152, '사랑');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (9, 1, '2024-09-22 05:21:32.000000', '2024-09-22 05:21:32.000000', 153, '데이트');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (8, 1, '2024-09-22 05:21:32.000000', '2024-09-22 05:21:32.000000', 154, '감정');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (7, 1, '2024-09-22 05:21:32.000000', '2024-09-22 05:21:32.000000', 155, '이별');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (6, 1, '2024-09-22 05:21:32.000000', '2024-09-22 05:21:32.000000', 156, '소통');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (9, 1, '2024-09-22 05:21:32.000000', '2024-09-22 05:21:32.000000', 157, '관계');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (5, 1, '2024-09-22 05:21:32.000000', '2024-09-22 05:21:32.000000', 158, '커플');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (7, 1, '2024-09-22 05:21:32.000000', '2024-09-22 05:21:32.000000', 159, '호감');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (6, 1, '2024-09-22 05:21:32.000000', '2024-09-22 05:21:32.000000', 160, '짝사랑');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (8, 1, '2024-09-22 05:21:32.000000', '2024-09-22 05:21:32.000000', 161, '고백');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (7, 1, '2024-09-22 05:21:32.000000', '2024-09-22 05:21:32.000000', 162, '첫사랑');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (5, 1, '2024-09-22 05:21:32.000000', '2024-09-22 05:21:32.000000', 163, '설렘');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (6, 1, '2024-09-22 05:21:32.000000', '2024-09-22 05:21:32.000000', 164, '연인');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (4, 1, '2024-09-22 05:21:32.000000', '2024-09-22 05:21:32.000000', 165, '행복');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (3, 1, '2024-09-22 05:21:32.000000', '2024-09-22 05:21:32.000000', 166, '신뢰');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (9, 1, '2024-09-22 05:21:32.000000', '2024-09-22 05:21:32.000000', 167, '존중');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (8, 1, '2024-09-22 05:21:32.000000', '2024-09-22 05:21:32.000000', 168, '대화');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (5, 1, '2024-09-22 05:21:32.000000', '2024-09-22 05:21:32.000000', 169, '서로');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (4, 1, '2024-09-22 05:21:32.000000', '2024-09-22 05:21:32.000000', 170, '오해');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (6, 1, '2024-09-22 05:21:32.000000', '2024-09-22 05:21:32.000000', 171, '마음');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (7, 1, '2024-09-22 05:21:32.000000', '2024-09-22 05:21:32.000000', 172, '애정');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (3, 1, '2024-09-22 05:21:32.000000', '2024-09-22 05:21:32.000000', 173, '소중함');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (8, 1, '2024-09-22 05:21:32.000000', '2024-09-22 05:21:32.000000', 174, '기대');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (5, 1, '2024-09-22 05:21:32.000000', '2024-09-22 05:21:32.000000', 175, '추억');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (4, 1, '2024-09-22 05:21:32.000000', '2024-09-22 05:21:32.000000', 176, '헤어짐');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (7, 1, '2024-09-22 05:21:32.000000', '2024-09-22 05:21:32.000000', 177, '연락');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (6, 1, '2024-09-22 05:21:32.000000', '2024-09-22 05:21:32.000000', 178, '눈빛');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (9, 1, '2024-09-22 05:21:32.000000', '2024-09-22 05:21:32.000000', 179, '선물');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (4, 1, '2024-09-22 05:21:32.000000', '2024-09-22 05:21:32.000000', 180, '의지');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (15, 4, '2024-09-22 05:26:01.000000', '2024-09-22 05:26:01.000000', 181, '인공지능');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (12, 4, '2024-09-22 05:26:01.000000', '2024-09-22 05:26:01.000000', 182, '빅데이터');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (10, 4, '2024-09-22 05:26:01.000000', '2024-09-22 05:26:01.000000', 183, '사물인터넷');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (9, 4, '2024-09-22 05:26:01.000000', '2024-09-22 05:26:01.000000', 184, '클라우드');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (8, 4, '2024-09-22 05:26:01.000000', '2024-09-22 05:26:01.000000', 185, '자율주행차');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (11, 4, '2024-09-22 05:26:01.000000', '2024-09-22 05:26:01.000000', 186, '의료');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (10, 4, '2024-09-22 05:26:01.000000', '2024-09-22 05:26:01.000000', 187, '금융');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (7, 4, '2024-09-22 05:26:01.000000', '2024-09-22 05:26:01.000000', 188, '스마트홈');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (6, 4, '2024-09-22 05:26:01.000000', '2024-09-22 05:26:01.000000', 189, '스마트시티');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (5, 4, '2024-09-22 05:26:01.000000', '2024-09-22 05:26:01.000000', 190, '헬스케어');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (12, 4, '2024-09-22 05:26:01.000000', '2024-09-22 05:26:01.000000', 191, '데이터 분석');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (8, 4, '2024-09-22 05:26:01.000000', '2024-09-22 05:26:01.000000', 192, 'AI');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (9, 4, '2024-09-22 05:26:01.000000', '2024-09-22 05:26:01.000000', 193, '보안');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (7, 4, '2024-09-22 05:26:01.000000', '2024-09-22 05:26:01.000000', 194, '사이버 보안');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (6, 4, '2024-09-22 05:26:01.000000', '2024-09-22 05:26:01.000000', 195, '개인정보 보호');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (5, 4, '2024-09-22 05:26:01.000000', '2024-09-22 05:26:01.000000', 196, '디지털 격차');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (10, 4, '2024-09-22 05:26:01.000000', '2024-09-22 05:26:01.000000', 197, '인터넷');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (11, 4, '2024-09-22 05:26:01.000000', '2024-09-22 05:26:01.000000', 198, '컴퓨팅 자원');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (12, 4, '2024-09-22 05:26:01.000000', '2024-09-22 05:26:01.000000', 199, '데이터 저장');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (8, 4, '2024-09-22 05:26:01.000000', '2024-09-22 05:26:01.000000', 200, '서버');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (6, 4, '2024-09-22 05:26:01.000000', '2024-09-22 05:26:01.000000', 201, '협업');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (7, 4, '2024-09-22 05:26:01.000000', '2024-09-22 05:26:01.000000', 202, '비용 절감');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (9, 4, '2024-09-22 05:26:01.000000', '2024-09-22 05:26:01.000000', 203, '미래 기술');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (8, 4, '2024-09-22 05:26:01.000000', '2024-09-22 05:26:01.000000', 204, '스마트 기술');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (5, 4, '2024-09-22 05:26:01.000000', '2024-09-22 05:26:01.000000', 205, '사물');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (6, 4, '2024-09-22 05:26:01.000000', '2024-09-22 05:26:01.000000', 206, '네트워크');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (9, 4, '2024-09-22 05:26:01.000000', '2024-09-22 05:26:01.000000', 207, '에너지 효율');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (7, 4, '2024-09-22 05:26:01.000000', '2024-09-22 05:26:01.000000', 208, '교통 관리');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (6, 4, '2024-09-22 05:26:01.000000', '2024-09-22 05:26:01.000000', 209, '건강 모니터링');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (5, 4, '2024-09-22 05:26:01.000000', '2024-09-22 05:26:01.000000', 210, '질병 예측');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (15, 5, '2024-09-22 05:38:25.000000', '2024-09-22 05:38:25.000000', 211, '글로벌화');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (12, 5, '2024-09-22 05:38:25.000000', '2024-09-22 05:38:25.000000', 212, '무역');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (10, 5, '2024-09-22 05:38:25.000000', '2024-09-22 05:38:25.000000', 213, '경제');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (9, 5, '2024-09-22 05:38:25.000000', '2024-09-22 05:38:25.000000', 214, '정치');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (11, 5, '2024-09-22 05:38:25.000000', '2024-09-22 05:38:25.000000', 215, '문화');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (8, 5, '2024-09-22 05:38:25.000000', '2024-09-22 05:38:25.000000', 216, '다문화');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (7, 5, '2024-09-22 05:38:25.000000', '2024-09-22 05:38:25.000000', 217, '환경 문제');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (6, 5, '2024-09-22 05:38:25.000000', '2024-09-22 05:38:25.000000', 218, '기후 변화');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (10, 5, '2024-09-22 05:38:25.000000', '2024-09-22 05:38:25.000000', 219, '국제 협력');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (9, 5, '2024-09-22 05:38:25.000000', '2024-09-22 05:38:25.000000', 220, '국제기구');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (5, 5, '2024-09-22 05:38:25.000000', '2024-09-22 05:38:25.000000', 221, '팬데믹');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (12, 5, '2024-09-22 05:38:25.000000', '2024-09-22 05:38:25.000000', 222, '상호 의존');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (6, 5, '2024-09-22 05:38:25.000000', '2024-09-22 05:38:25.000000', 223, '브렉시트');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (7, 5, '2024-09-22 05:38:25.000000', '2024-09-22 05:38:25.000000', 224, '재생 에너지');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (8, 5, '2024-09-22 05:38:25.000000', '2024-09-22 05:38:25.000000', 225, '지속 가능한 발전');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (11, 5, '2024-09-22 05:38:25.000000', '2024-09-22 05:38:25.000000', 226, '미국과 중국');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (10, 5, '2024-09-22 05:38:25.000000', '2024-09-22 05:38:25.000000', 227, '중동 불안정');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (9, 5, '2024-09-22 05:38:25.000000', '2024-09-22 05:38:25.000000', 228, '외교 관계');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (8, 5, '2024-09-22 05:38:25.000000', '2024-09-22 05:38:25.000000', 229, '국가 간 갈등');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (6, 5, '2024-09-22 05:38:25.000000', '2024-09-22 05:38:25.000000', 230, '경제 발전');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (7, 5, '2024-09-22 05:38:25.000000', '2024-09-22 05:38:25.000000', 231, '산업화');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (5, 5, '2024-09-22 05:38:25.000000', '2024-09-22 05:38:25.000000', 232, '도시화');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (12, 5, '2024-09-22 05:38:25.000000', '2024-09-22 05:38:25.000000', 233, '환경 오염');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (9, 5, '2024-09-22 05:38:25.000000', '2024-09-22 05:38:25.000000', 234, '국제 질서');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (7, 5, '2024-09-22 05:38:25.000000', '2024-09-22 05:38:25.000000', 235, '국제 정치');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (8, 5, '2024-09-22 05:38:25.000000', '2024-09-22 05:38:25.000000', 236, '세계 경제');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (6, 5, '2024-09-22 05:38:25.000000', '2024-09-22 05:38:25.000000', 237, '글로벌 공급망');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (5, 5, '2024-09-22 05:38:25.000000', '2024-09-22 05:38:25.000000', 238, '국제 무역');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (9, 5, '2024-09-22 05:38:25.000000', '2024-09-22 05:38:25.000000', 239, '기술 교류');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (7, 5, '2024-09-22 05:38:25.000000', '2024-09-22 05:38:25.000000', 240, '다양성');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (15, 6, '2024-09-22 05:52:50.000000', '2024-09-22 05:52:50.000000', 241, '스포츠');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (12, 6, '2024-09-22 05:52:50.000000', '2024-09-22 05:52:50.000000', 242, '신체 건강');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (10, 6, '2024-09-22 05:52:50.000000', '2024-09-22 05:52:50.000000', 243, '사회적 연결');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (8, 6, '2024-09-22 05:52:50.000000', '2024-09-22 05:52:50.000000', 244, '프로 스포츠');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (11, 6, '2024-09-22 05:52:50.000000', '2024-09-22 05:52:50.000000', 245, '경제적 발전');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (9, 6, '2024-09-22 05:52:50.000000', '2024-09-22 05:52:50.000000', 246, '미디어');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (7, 6, '2024-09-22 05:52:50.000000', '2024-09-22 05:52:50.000000', 247, '기술 혁신');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (10, 6, '2024-09-22 05:52:50.000000', '2024-09-22 05:52:50.000000', 248, '올림픽');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (8, 6, '2024-09-22 05:52:50.000000', '2024-09-22 05:52:50.000000', 249, '스포츠 데이터 분석');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (6, 6, '2024-09-22 05:52:50.000000', '2024-09-22 05:52:50.000000', 250, '팀워크');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (7, 6, '2024-09-22 05:52:50.000000', '2024-09-22 05:52:50.000000', 251, '여성 스포츠');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (9, 6, '2024-09-22 05:52:50.000000', '2024-09-22 05:52:50.000000', 252, '성별 평등');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (12, 6, '2024-09-22 05:52:50.000000', '2024-09-22 05:52:50.000000', 253, '가상 현실');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (6, 6, '2024-09-22 05:52:50.000000', '2024-09-22 05:52:50.000000', 254, '증강 현실');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (8, 6, '2024-09-22 05:52:50.000000', '2024-09-22 05:52:50.000000', 255, '스포츠 산업');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (7, 6, '2024-09-22 05:52:50.000000', '2024-09-22 05:52:50.000000', 256, '국제 대회');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (9, 6, '2024-09-22 05:52:50.000000', '2024-09-22 05:52:50.000000', 257, '스포츠 관람');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (10, 6, '2024-09-22 05:52:50.000000', '2024-09-22 05:52:50.000000', 258, '데이터 분석');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (5, 6, '2024-09-22 05:52:50.000000', '2024-09-22 05:52:50.000000', 259, '경기 전략');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (6, 6, '2024-09-22 05:52:50.000000', '2024-09-22 05:52:50.000000', 260, '정신적 건강');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (7, 6, '2024-09-22 05:52:50.000000', '2024-09-22 05:52:50.000000', 261, '스포츠 외교');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (8, 6, '2024-09-22 05:52:50.000000', '2024-09-22 05:52:50.000000', 262, '팬 문화');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (9, 6, '2024-09-22 05:52:50.000000', '2024-09-22 05:52:50.000000', 263, '스포츠 리그');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (10, 6, '2024-09-22 05:52:50.000000', '2024-09-22 05:52:50.000000', 264, '경제적 영향');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (11, 6, '2024-09-22 05:52:50.000000', '2024-09-22 05:52:50.000000', 265, '스포츠 관광');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (6, 6, '2024-09-22 05:52:50.000000', '2024-09-22 05:52:50.000000', 266, '스포츠 문화');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (8, 6, '2024-09-22 05:52:50.000000', '2024-09-22 05:52:50.000000', 267, '스포츠 이벤트');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (7, 6, '2024-09-22 05:52:50.000000', '2024-09-22 05:52:50.000000', 268, '건강');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (9, 6, '2024-09-22 05:52:50.000000', '2024-09-22 05:52:50.000000', 269, '체력 향상');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (10, 6, '2024-09-22 05:52:50.000000', '2024-09-22 05:52:50.000000', 270, '경기력 향상');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (15, 7, '2024-09-22 06:13:42.000000', '2024-09-22 06:13:42.000000', 271, '글로벌화');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (10, 7, '2024-09-22 06:13:42.000000', '2024-09-22 06:13:42.000000', 272, '디지털화');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (12, 7, '2024-09-22 06:13:42.000000', '2024-09-22 06:13:42.000000', 273, '경제성장');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (8, 7, '2024-09-22 06:13:42.000000', '2024-09-22 06:13:42.000000', 274, '불평등');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (14, 7, '2024-09-22 06:13:42.000000', '2024-09-22 06:13:42.000000', 275, '무역');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (11, 7, '2024-09-22 06:13:42.000000', '2024-09-22 06:13:42.000000', 276, '투자');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (9, 7, '2024-09-22 06:13:42.000000', '2024-09-22 06:13:42.000000', 277, '통화정책');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (7, 7, '2024-09-22 06:13:42.000000', '2024-09-22 06:13:42.000000', 278, '재정정책');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (13, 7, '2024-09-22 06:13:42.000000', '2024-09-22 06:13:42.000000', 279, '중앙은행');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (8, 7, '2024-09-22 06:13:42.000000', '2024-09-22 06:13:42.000000', 280, '일자리 창출');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (6, 7, '2024-09-22 06:13:42.000000', '2024-09-22 06:13:42.000000', 281, '경제 회복');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (10, 7, '2024-09-22 06:13:42.000000', '2024-09-22 06:13:42.000000', 282, '디지털 경제');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (14, 7, '2024-09-22 06:13:42.000000', '2024-09-22 06:13:42.000000', 283, '전자상거래');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (12, 7, '2024-09-22 06:13:42.000000', '2024-09-22 06:13:42.000000', 284, '팬데믹');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (7, 7, '2024-09-22 06:13:42.000000', '2024-09-22 06:13:42.000000', 285, '재생 가능 에너지');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (9, 7, '2024-09-22 06:13:42.000000', '2024-09-22 06:13:42.000000', 286, '탄소 배출 감소');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (11, 7, '2024-09-22 06:13:42.000000', '2024-09-22 06:13:42.000000', 287, '지속 가능성');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (8, 7, '2024-09-22 06:13:42.000000', '2024-09-22 06:13:42.000000', 288, '친환경 기술');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (7, 7, '2024-09-22 06:13:42.000000', '2024-09-22 06:13:42.000000', 289, '고객 맞춤형 서비스');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (6, 7, '2024-09-22 06:13:42.000000', '2024-09-22 06:13:42.000000', 290, '디지털 마케팅');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (8, 7, '2024-09-22 06:13:42.000000', '2024-09-22 06:13:42.000000', 291, '소비자');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (9, 7, '2024-09-22 06:13:42.000000', '2024-09-22 06:13:42.000000', 292, '부의 불균형');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (10, 7, '2024-09-22 06:13:42.000000', '2024-09-22 06:13:42.000000', 293, '세제 개혁');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (12, 7, '2024-09-22 06:13:42.000000', '2024-09-22 06:13:42.000000', 294, '사회적 안전망');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (8, 7, '2024-09-22 06:13:42.000000', '2024-09-22 06:13:42.000000', 295, '정책적 대응');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (6, 7, '2024-09-22 06:13:42.000000', '2024-09-22 06:13:42.000000', 296, '경제 불평등');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (9, 7, '2024-09-22 06:13:42.000000', '2024-09-22 06:13:42.000000', 297, '소득 불평등');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (11, 7, '2024-09-22 06:13:42.000000', '2024-09-22 06:13:42.000000', 298, '글로벌 경제');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (8, 7, '2024-09-22 06:13:42.000000', '2024-09-22 06:13:42.000000', 299, '경제 충격');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (7, 7, '2024-09-22 06:13:42.000000', '2024-09-22 06:13:42.000000', 300, '기업 생산성');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (15, 8, '2024-09-22 06:28:10.000000', '2024-09-22 06:28:10.000000', 301, '기술 발전');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (10, 8, '2024-09-22 06:28:10.000000', '2024-09-22 06:28:10.000000', 302, '사회적 불평등');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (12, 8, '2024-09-22 06:28:10.000000', '2024-09-22 06:28:10.000000', 303, '일자리 변화');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (8, 8, '2024-09-22 06:28:10.000000', '2024-09-22 06:28:10.000000', 304, '자동화');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (14, 8, '2024-09-22 06:28:10.000000', '2024-09-22 06:28:10.000000', 305, '인공지능');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (11, 8, '2024-09-22 06:28:10.000000', '2024-09-22 06:28:10.000000', 306, '노동시장');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (9, 8, '2024-09-22 06:28:10.000000', '2024-09-22 06:28:10.000000', 307, '직업 재교육');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (7, 8, '2024-09-22 06:28:10.000000', '2024-09-22 06:28:10.000000', 308, '빈곤층');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (13, 8, '2024-09-22 06:28:10.000000', '2024-09-22 06:28:10.000000', 309, '부유층');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (8, 8, '2024-09-22 06:28:10.000000', '2024-09-22 06:28:10.000000', 310, '교육 격차');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (6, 8, '2024-09-22 06:28:10.000000', '2024-09-22 06:28:10.000000', 311, '사회적 이동성');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (10, 8, '2024-09-22 06:28:10.000000', '2024-09-22 06:28:10.000000', 312, '정치적 갈등');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (14, 8, '2024-09-22 06:28:10.000000', '2024-09-22 06:28:10.000000', 313, '가족 구조 변화');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (12, 8, '2024-09-22 06:28:10.000000', '2024-09-22 06:28:10.000000', 314, '출산율 감소');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (7, 8, '2024-09-22 06:28:10.000000', '2024-09-22 06:28:10.000000', 315, '고령화 사회');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (9, 8, '2024-09-22 06:28:10.000000', '2024-09-22 06:28:10.000000', 316, '노인 부양');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (11, 8, '2024-09-22 06:28:10.000000', '2024-09-22 06:28:10.000000', 317, '환경 문제');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (8, 8, '2024-09-22 06:28:10.000000', '2024-09-22 06:28:10.000000', 318, '기후 변화');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (7, 8, '2024-09-22 06:28:10.000000', '2024-09-22 06:28:10.000000', 319, '환경 오염');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (6, 8, '2024-09-22 06:28:10.000000', '2024-09-22 06:28:10.000000', 320, '지속 가능한 발전');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (8, 8, '2024-09-22 06:28:10.000000', '2024-09-22 06:28:10.000000', 321, '경제 성장');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (9, 8, '2024-09-22 06:28:10.000000', '2024-09-22 06:28:10.000000', 322, '심리적 건강');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (10, 8, '2024-09-22 06:28:10.000000', '2024-09-22 06:28:10.000000', 323, '스트레스 증가');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (12, 8, '2024-09-22 06:28:10.000000', '2024-09-22 06:28:10.000000', 324, '우울증');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (8, 8, '2024-09-22 06:28:10.000000', '2024-09-22 06:28:10.000000', 325, '정신건강 지원');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (6, 8, '2024-09-22 06:28:10.000000', '2024-09-22 06:28:10.000000', 326, '사회적 고립');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (9, 8, '2024-09-22 06:28:10.000000', '2024-09-22 06:28:10.000000', 327, '정책적 노력');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (11, 8, '2024-09-22 06:28:10.000000', '2024-09-22 06:28:10.000000', 328, '경제적 부담');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (8, 8, '2024-09-22 06:28:10.000000', '2024-09-22 06:28:10.000000', 329, '기업 역할');
INSERT INTO honeymorning.word_cloud (frequency, brief_id, created_at, updated_at, word_cloud_id, keyword)
VALUES (7, 8, '2024-09-22 06:28:10.000000', '2024-09-22 06:28:10.000000', 330, '협력 필요성');

INSERT INTO honeymorning.alarm_result (quiz_result_id, created_at, updated_at, user_id, count, is_attended) VALUES (5, '2024-09-20 15:34:43.000000', '2024-09-20 15:34:43.000000', 1, 1, 1);
INSERT INTO honeymorning.alarm_result (quiz_result_id, created_at, updated_at, user_id, count, is_attended) VALUES (8, '2024-09-21 15:34:43.000000', '2024-09-21 15:34:43.000000', 1, 1, 1);
INSERT INTO honeymorning.alarm_result (quiz_result_id, created_at, updated_at, user_id, count, is_attended) VALUES (11, '2024-09-22 15:34:43.000000', '2024-09-22 15:34:43.000000', 1, 1, 1);
INSERT INTO honeymorning.alarm_result (quiz_result_id, created_at, updated_at, user_id, count, is_attended) VALUES (12, '2024-09-23 15:34:43.000000', '2024-09-23 15:34:43.000000', 1, 1, 1);
INSERT INTO honeymorning.alarm_result (quiz_result_id, created_at, updated_at, user_id, count, is_attended) VALUES (6, '2024-09-20 15:34:43.000000', '2024-09-20 15:34:43.000000', 2, 0, 1);
INSERT INTO honeymorning.alarm_result (quiz_result_id, created_at, updated_at, user_id, count, is_attended) VALUES (9, '2024-09-21 15:34:43.000000', '2024-09-21 15:34:43.000000', 2, 0, 1);
INSERT INTO honeymorning.alarm_result (quiz_result_id, created_at, updated_at, user_id, count, is_attended) VALUES (7, '2024-09-20 15:34:43.000000', '2024-09-20 15:34:43.000000', 3, 2, 1);
INSERT INTO honeymorning.alarm_result (quiz_result_id, created_at, updated_at, user_id, count, is_attended) VALUES (10, '2024-09-21 15:34:43.000000', '2024-09-21 15:34:43.000000', 3, 2, 1);
