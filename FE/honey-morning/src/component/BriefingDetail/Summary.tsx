import {SmallTitle, Content} from '@/pages/MyPage';
import styled from 'styled-components';
import HashTag from '../MyPage/HashTag';
import WordCloud from './WordCloud';
import {useState} from 'react';

const category = ['정치', '경제', '사회/문화'];
const customCategory = ['유럽에 사는 고양이'];

const Summary = () => {
  const [isHelpOpen, setIsHelpOpen] = useState(false);

  return (
    <Container>
      <Content>
        <div className="smallTitleContainer">
          <SmallTitle>카테고리</SmallTitle>
        </div>

        <div className="hashTagContainer">
          {category.map(item => {
            return <HashTag text={item} type="NEWS"></HashTag>;
          })}
        </div>

        <div className="hashTagContainer">
          {customCategory.map(item => {
            return <HashTag text={item} type="CUSTOM"></HashTag>;
          })}
        </div>
      </Content>
      <Content>
        <div className="smallTitleContainer">
          <SmallTitle>워드 클라우드</SmallTitle>
          <HelpSpan
            className="material-icons"
            onClick={() => {
              setIsHelpOpen(!isHelpOpen);
            }}
          >
            help
          </HelpSpan>
        </div>
        {isHelpOpen ? (
          <HelpContainer>
            <div className="notification">
              <span>AI / 빅데이터 기술로 생성한 워드 클라우드 기술입니다.</span>
            </div>
            <div className="notification">
              <span>워드 클라우드란?</span>
              <span>토픽의 중요도에 따라 눈에 잘 보이게 그려드려요!</span>
            </div>
          </HelpContainer>
        ) : (
          []
        )}
        <WordCloudContaienr>
          <WordCloud />
        </WordCloudContaienr>
      </Content>
    </Container>
  );
};

export const Container = styled.div`
  display: flex;
  width: 100%;
  flex-direction: column;
  align-items: center;
`;

export const HelpSpan = styled.span`
  display: flex;

  margin-left: 1.2rem;
  font-size: 4rem;
`;

const WordCloudContaienr = styled.div`
  display: flex;
  justify-content: center;
`;

export const HelpContainer = styled.div`
  display: flex;
  flex-direction: column;
  width: 100%;
  padding: 0 0 0 4rem;

  .notification {
    display: inline-flex;
    flex-direction: column;
    background-color: var(--lightblue-color);
    border-radius: 40px;
    box-sizing: border-box;
    padding: 1rem;
    margin-bottom: 2rem;
    span {
      font-size: 2.3rem;
      color: var(--darkblue-color);
      padding: 0.7rem 0 0.7rem 0;
    }
    span:nth-child(1) {
      font-weight: 900;
    }
  }
  .notification:nth-child(1) {
    width: 90%;
    text-align: center;
  }
  .notification:nth-child(2) {
    width: 80%;
    font-weight: 500;
  }
`;

export default Summary;