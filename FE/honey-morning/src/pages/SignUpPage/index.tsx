import React, {useState} from 'react';
import {useWatch, useForm, Controller} from 'react-hook-form';
import styled, {createGlobalStyle} from 'styled-components';
import {instance} from '@/api/axios';
import {useNavigate} from 'react-router-dom';
import Modal from '@/component/Modal';

interface SignUpFormData {
  email: string;
  username: string;
  password: string;
  confirmPassword: string;
}

const SignUpProcess: React.FC = () => {
  const navigate = useNavigate();

  //prettier-ignore
  const [isEmailChecked, setIsEmailChecked] = useState<boolean>(false);
  //prettier-ignore
  const [emailMessage, setEmailMessage] = useState<string>('');
  //prettier-ignore
  const [emailMessageType, setEmailMessageType] = useState<string>('');
  //prettier-ignore
  const [confirmPassword, setConfirmPassword] = useState<string>('');

  //prettier-ignore
  const [modalTitle, setModalTitle] = useState<string>('');
  //prettier-ignore
  const [modalMessage, setModalMessage] = useState<string>('');
  //prettier-ignore
  const [modalBtnText, setModalBtnText] = useState<string>('');
  //prettier-ignore
  const [isModalOpen, setIsModalOpen] = useState<boolean>(false);

  //prettier-ignore
  const {
    handleSubmit,
    control,
    watch,
    formState: {errors},
    setError,
    clearErrors,
  } = useForm<SignUpFormData>({mode: 'onChange'});

  const openModal = (title: string, message: string, btnText: string) => {
    setModalTitle(title);
    setModalMessage(message);
    setModalBtnText(btnText);
    setIsModalOpen(true);
  };

  const closeModal = () => {
    setIsModalOpen(false);
    navigate('/signin');
  };

  const email = watch('email', '');
  const password = watch('password', '');

  const validateEmail = (email: string) => {
    const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return emailPattern.test(email) || '이메일의 형식이 올바르지 않습니다.';
  };

  // const validateForm = data => {
  //   let isValid = true;

  //   if (!isEmailChecked) {
  //     isValid = false;
  //   }
  // };

  const handleSignUp = async (data: SignUpFormData) => {
    try {
      const response = await instance.post('/api/auth/register', data, {
        headers: {
          'Content-Type': 'application/json',
        },
      });

      console.log(data);

      if (response.status === 200) {
        openModal('Success', '회원가입에 성공했습니다.', '확인');
      }
    } catch (error) {
      console.log('회원가입 실패', error);
      alert('회원가입 실패');
    }
  };

  const isEmailValid = validateEmail(email) === true;

  return (
    <>
      <Title>Sign Up</Title>
      <Container>
        <div className="SubContainer">
          <form
            onSubmit={handleSubmit(handleSignUp)}
            className="loginForm"
          >
            <div className="inputGroup">
              <label>Email</label>
              <div>
                <Controller
                  name="email"
                  control={control}
                  defaultValue=""
                  rules={{required: '이메일은 필수 입력 항목입니다.'}}
                  render={({field}) => (
                    <Input
                      {...field}
                      type="email"
                      placeholder="이메일을 입력해주세요"
                    />
                  )}
                />
              </div>
            </div>
            <div className="inputGroup">
              <label>Name</label>
              <Controller
                name="username"
                control={control}
                defaultValue=""
                rules={{required: '이름은 필수 입력 항목입니다.'}}
                render={({field}) => (
                  <Input
                    {...field}
                    type="username"
                    placeholder="이름을 입력해주세요"
                  />
                )}
              />
            </div>
            <div className="inputGroup">
              <label>Password</label>
              <Controller
                name="password"
                control={control}
                defaultValue=""
                rules={{required: '비밀번호는 필수 입력 항목입니다.'}}
                render={({field}) => (
                  <Input
                    {...field}
                    type="password"
                    placeholder="비밀번호를 입력해주세요"
                  />
                )}
              />
            </div>
            <div className="inputGroup">
              <label>Confirm Password</label>
              <Controller
                name="confirmPassword"
                control={control}
                defaultValue=""
                rules={{
                  required: '비밀번호를 다시 입력해주세요.',
                  validate: value =>
                    value === password || '비밀번호가 일치하지 않습니다.',
                }}
                render={({field}) => (
                  <Input
                    {...field}
                    type="password"
                    placeholder="비밀번호를 다시 입력해주세요"
                  />
                )}
              />
            </div>

            <SubmitButton type="submit">회원가입</SubmitButton>
          </form>
        </div>
      </Container>

      <Modal
        isOpen={isModalOpen}
        isClose={closeModal}
        title={modalTitle}
        message={modalMessage}
        btnText={modalBtnText}
      />
    </>
  );
};

export default SignUpProcess;

const Title = styled.div`
  display: flex;
  justify-content: center;
  font-size: 50px;
`;

const Container = styled.div`
  display: flex;
  justify-content: center;

  .SubContainer {
    display: flex;
    fix-direction: column;
    justify-content: center;

    width: 600px;
    height: 1000px;

    border: solid 1px black;
    background-color: white;
  }
`;

const Input = styled.input`
  padding: 10px;
  margin: 10px 0;
  border-radius: 5px;
  border: 1px solid black;
`;

const SubmitButton = styled.button`
  background-color: var(--yellow-color);
  color: white;
  border: none;
  border-radius: 10%;

  display: flex;
  justify-content: center;
  padding: 1em 5em;
  cursor: pointer;
`;