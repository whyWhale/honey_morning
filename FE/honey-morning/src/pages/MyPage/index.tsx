import {useState, useEffect} from 'react';
import {useNavigate} from 'react-router-dom';
import {useQuery, useQueryClient} from '@tanstack/react-query';
import styled from 'styled-components';
import {instance} from '@/api/axios';
import {findAlarmCategory} from '@/api/alarmApi';
import HashTag from '@/component/MyPage/HashTag';
import Pagination from '@/component/MyPage/Pagination';
import GlobalBtn from '@/component/GlobalBtn';
import {
  HashTagSelect,
  CustomHashTagSelect,
} from '@/component/InterestSetting/InterestSetting';
import {useInterestStore} from '@/store/InterestStore';
import NavBar from '@/component/NavBar/NavBar';
import {NavBarProps} from '@/component/NavBar/NavBar';
import {NavIconProps} from '@/component/NavBar/NavIcon';
import {SoleMainNavBarProps} from '@/component/NavBar/NavBar';
import {getBriefs} from '@/api/briefingApi';

export const categoryList = [
  '정치',
  '경제',
  '사회',
  '생활/문화',
  '세계',
  '기술/IT',
  '연예',
  '스포츠',
];

interface Data {
  date: string;
  content: string;
}

// interface Data {
//   id: number;
//   categories: string[];
//   date: string;
//   content: string;
//   correctAnswer: number
// }

interface Response {
  dates: Data[];
  totalPage: number;
}

const dataSample: Data = {
  date: '8/30',
  content: '이것은 아무 내용이 들어있는 아무 샘플이지요.',
};

//유저 정보
const fetchUserInfo = async () => {
  const {data} = await instance.get(`/api/auth/userInfo`);
  return data;
};

const MyPage: React.FC = () => {
  // useQuery를 사용하여 userInfo 가져오기
  const {
    data: userInfo,
    isLoading,
    isError,
  } = useQuery({
    queryKey: ['userInfo'],
    queryFn: fetchUserInfo,
  });

  const itemsPerPage = 5;
  const [totalPages, setTotalPages] = useState(1);
  const [currentPage, setCurrentPage] = useState(1);
  const [briefingData, setBriefingData] = useState([]);

  useEffect(() => {
    const fetchBriefs = async () => {
      try {
        const data = await getBriefs(currentPage);
        setBriefingData(data.histories);
        setTotalPages(data.totalPage);
      } catch (error) {
        console.error(`[Error] data: ${error}`);
      }
    };

    fetchBriefs();
  }, [currentPage]);

  const currentItems = briefingData;

  const [isSelectOpen, setIsSelectOpen] = useState(false);
  const {selectedCategory, selectedCustomCategory, addCustomCategory} =
    useInterestStore();
  const selectedList = selectedCategory;
  const NavIcons = SoleMainNavBarProps;
  const navigate = useNavigate();

  // 로딩 상태 처리
  if (!briefingData.length) {
    return <div>Loading...</div>;
  }

  return (
    <Container>
      <WhiteContainer>
        <Content>
          <div className="titleContainer">
            <Title>{userInfo.username}님 관심사</Title>
            <BtnContainer>
              {isSelectOpen ? (
                <GlobalBtn
                  text="저장"
                  $bgColor="var(--green-color)"
                  $textColor="var(--black-color)"
                  $padding={3}
                  onClick={() => {
                    setIsSelectOpen(false);
                    addCustomCategory();
                  }}
                />
              ) : (
                <GlobalBtn
                  text="수정"
                  $bgColor="var(--darkblue-color)"
                  $textColor="var(--white-color)"
                  $padding={3}
                  onClick={() => {
                    console.log('작동');
                    setIsSelectOpen(true);
                  }}
                />
              )}
            </BtnContainer>
          </div>
          {isSelectOpen ? (
            <HashTagSelect />
          ) : (
            <div className="hashTagContainer">
              {categoryList.map(item => (
                <HashTag
                  text={item}
                  type="NEWS"
                  selected={selectedList.includes(item) ? true : false}
                />
              ))}
            </div>
          )}
          <div className="smallTitleContainer">
            <SmallTitle>나만의 관심사</SmallTitle>
          </div>

          {isSelectOpen ? (
            <CustomHashTagSelect />
          ) : (
            <div className="hashTagContainer">
              {selectedCustomCategory.length >= 1 ? (
                selectedCustomCategory.map(item => {
                  return (
                    <HashTag
                      text={item}
                      type="CUSTOM"
                    />
                  );
                })
              ) : (
                <HashTag
                  text="나만의 관심사가 없습니다."
                  type="CUSTOM"
                />
              )}
            </div>
          )}
        </Content>

        <Content>
          <div className="titleContainer">
            <Title>스트릭</Title>
          </div>
          <div className="streakContainer">스트릭은 아직 디자인 중입니다.</div>
        </Content>

        <Content>
          <div className="titleContainer">
            <Title>히스토리</Title>
          </div>
          <PaginationContainer>
            <PaginationHead>
              <li>날짜</li>
              <li>핵심 브리핑</li>
            </PaginationHead>
            {currentItems.map((item, index) => (
              <PaginationItem
                key={index}
                onClick={() => {
                  navigate(`/briefingdetail/${item.briefId}`);
                }}
              >
                <span className="date">{item.createdAt.split('T')[0]}</span>
                <span className="content">{item.summary}</span>
              </PaginationItem>
            ))}
          </PaginationContainer>
          <Pagination
            currentPage={currentPage}
            totalPages={totalPages}
            onPageChange={setCurrentPage}
          />
        </Content>
        <NavBar props={NavIcons}></NavBar>
      </WhiteContainer>
    </Container>
  );
};

export const Container = styled.div`
  display: flex;
  width: 100%;
  height: 100vh;
  background-color: var(--darkblue-color);
  justify-content: center;
  align-items: center;
  flex-direction: column;
  padding: 2rem 3rem;
  box-sizing: border-box;
  * {
    // border: 1px solid lime;
  }
`;

export const WhiteContainer = styled.div`
  display: flex;
  width: 100%;
  height: 100%;
  flex-direction: column;
  background-color: white;
  border-radius: 3rem;
  padding: 5rem 0 0 0;
`;

export const Content = styled.div`
  display: flex;
  flex-direction: column;
  align-items: center;
  width: 100%;
  .titleContainer {
    display: flex;
    width: 100%;
  }

  .hashTagContainer {
    display: flex;
    width: 90%;
    height: 12rem;
    box-sizing: border-box;
    padding: 3rem 0 3rem 0;

    overflow-x: auto;
    &::-webkit-scrollbar {
      display: none;
    }
  }

  .smallTitleContainer {
    display: flex;
    width: 100%;
    margin: 2rem;
    padding: 0 0 0 3rem;
    align-items: center;
  }

  .streakContainer {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 40rem;
    border: 1px solid lime;
  }
`;
export const Title = styled.div`
  display: flex;
  height: 6rem;
  border-radius: 0 10rem 10rem 0;
  background-color: var(--yellow-color);
  font-weight: bold;
  font-size: 4rem;
  padding: 0 5rem 0 5rem;
  align-items: center;
`;

export const SmallTitle = styled.div`
  color: var(--black-color);
  font-size: 3.5rem;
  font-weight: bold;
`;

const PaginationContainer = styled.ul`
  display: flex;
  box-sizing: border-box;
  margin: 3rem 0 0 0;
  flex-direction: column;
  align-items: center;
`;

const PaginationHead = styled.div`
  display: flex;
  width: 100%;
  justify-content: space-around;
  border-bottom: 4px solid var(--black-color);
  padding: 0 0 1rem 0;
  li {
    display: flex;
    font-size: 3rem;
    font-weight: bold;
    justify-content: center;
  }

  li:nth-child(1) {
    width: 15rem;
  }
  li:nth-child(2) {
    width: 40rem;
  }
`;

const PaginationItem = styled.li`
  display: flex;
  font-size: 2.8rem;
  height: 5.2rem;
  width: 100%;
  align-items: center;
  justify-content: space-around;
  span {
    display: flex;
    justify-content: center;
  }
  .date {
    display: flex;
    width: 15rem;
  }
  .content {
    display: block;
    width: 40rem;
    text-overflow: ellipsis;
    white-space: nowrap;
    overflow: hidden;
  }
  &&:hover {
    font-weight: bold;
    background-color: var(--lightblue-color);
  }
`;

const BtnContainer = styled.div`
  display: flex;
  width: 20rem;
  justify-content: center;
`;

export default MyPage;
