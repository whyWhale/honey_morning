import React from 'react';
import styled from 'styled-components';

interface Modal2Props {
  isOpen: boolean;
  isClose: () => void;
  header: string;
  icon: string;
  children: React.ReactNode;
  onConfirm: () => void; // 확인 버튼 클릭 시 호출되는 함수
}

const Modal2: React.FC<Modal2Props> = ({
  isOpen,
  isClose,
  header,
  icon,
  children,
  onConfirm,
}) => {
  if (!isOpen) return null;

  const handleOverlayClick = (e: React.MouseEvent<HTMLDivElement>) => {
    if (e.target === e.currentTarget) {
      isClose();
    }
  };

  return (
    <ModalOverlay onClick={handleOverlayClick}>
      <ModalContainer>
        <ModalHeader>
          <ModalIcon className="material-icons">{icon}</ModalIcon>
          <ModalTitle>{header}</ModalTitle>
        </ModalHeader>
        <ModalBody>{children}</ModalBody>
        <ModalActions>
          <ActionButton onClick={onConfirm}>확인</ActionButton>
          <ActionButton onClick={isClose}>취소</ActionButton>
        </ModalActions>
      </ModalContainer>
    </ModalOverlay>
  );
};

export default Modal2;

const ModalOverlay = styled.div`
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.7);
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  z-index: 1000;
`;

const ModalContainer = styled.div`
  background-color: white;
  border-radius: 2rem;
  width: 45rem;
  min-height: 25rem;
  text-align: center;
  z-index: 1001;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
`;

const ModalHeader = styled.div`
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 3rem;
  color: white;
  height: 7rem;
  background-color: var(--red-color);
  border-radius: 2rem 2rem 0 0;
  position: relative;
`;

const ModalIcon = styled.span`
  position: absolute;
  left: 1rem;
  top: 50%;
  transform: translateY(-50%);
  font-size: 4rem;
  font-weight: light;
`;

const ModalTitle = styled.h2`
  margin: 0;
  font-size: 3rem;
  font-weight: bold;
`;

const ModalBody = styled.div`
  font-size: 2.5rem;
  font-weight: bold;
  margin: 5rem 3rem 3rem 3rem;
  text-align: center;
  white-space: pre-line; /* 줄바꿈이 가능하도록 설정 */

  p {
    margin: 1.5rem 0 1.5rem 0;
  }
`;

const ModalActions = styled.div`
  display: flex;
  justify-content: center;
  padding: 1rem 4rem;
  gap: 2rem;
`;

const ActionButton = styled.button`
  background-color: var(--darkblue-color);
  color: white;
  font-size: 2.3rem;
  font-weight: bold;
  min-width: 13rem;
  min-height: 6rem;
  border: none;
  padding: 1rem;
  border-radius: 8px;
  cursor: pointer;
  transition: background-color 0.3s ease;
  margin: 2rem;

  &:hover {
    background-color: var(--yellow-color);
    color: black;
  }
`;