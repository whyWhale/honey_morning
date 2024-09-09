import {useState} from 'react';
import styled, {createGlobalStyle} from 'styled-components';
import {useWatch, useForm, Controller} from 'react-hook-form';
import {useNavigate} from 'react-router-dom';
import {useQueryClient, useMutation} from '@tanstack/react-query';
import {instance} from '@/api/axios';

const GlobalStyle = createGlobalStyle`
 body {
  display: flex;
  justify-content: center;
  width: 100%;
 }
`;

const Title = styled.div`
  display: flex;
  justify-content: center;

  font-size: 50px;
`;

const Container = styled.div`
  display: flex;
  flex-direction: column;

  align-items: center;
  justify-content: center;

  padding: 10px;
  border: solid 1px black;
  background-color: white;

  width: 700px;

  .loginForm {
  display: flex;
  flex-direction: column;

  border: solid 1px red;
  padding: 20px;
  box-shadow: 5px 5px 3px #666;

  
    .inputGroup {
    background-color: blue;
    }
  }


  .signUpYet {
  display: flex;
  align-items: center;
  
  }
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

const MoveToSignUp = styled.button`
  color: var(--mediumblue-color);
  background-color: transparent;
  cursor: pointer;
  border: none;
  text-decoration: underline;
`;

const LoginProcess: React.FC = () => {
  const queryClient = useQueryClient();

  const {
    handleSubmit,
    control,
    watch,
    formState: {errors},
    reset,
  } = useForm({mode: 'onChange'});

  // const handleSignIn = async data => {
  //   const formData = new FormData();
  //   formData.append('email', data.email);
  //   formData.append('password', data.password);

  //   try {
  //     const response = await instance.post('/api/auth/login', formData, {
  //       headers: {
  //         'Content-Type': 'multipart/form-data',
  //       },
  //     });

  //     console.log(formData);

  //     if (response.status == 200) {
  //       const accessToken = response.headers['access'];
  //       sessionStorage.setItem('access', accessToken);
  //       alert('로그인 성공');
  //     }
  //   } catch (error) {
  //     console.error('로그인 실패', error);
  //     alert('로그인 실패');
  //   }
  // };

  const loginUser = async (payload: {email: string, password: string}) => {
    try {
      const formData = new FormData();
      formData.append('email', payload.email);
      formData.append('password', payload.password);

      const res = await instance.post('/api/auth/login', formData, {
        headers: {
          'Content-Type': 'multipart/form-data',
        },
      });

      const accessToken = res.headers['access'];

      if (accessToken) {
        sessionStorage.setItem('access', accessToken);
      }
      return res.data.result;
    } catch (error) {
      console.error('로그인 실패', error);
      throw error;
    }
  };

  const {mutate: signMutate} = useMutation({
    mutationFn: loginUser,
    onSuccess: data => {
      queryClient.setQueryData(['userInfo'], data);
      alert('로그인 성공');
    },
    onError: error => {
      if (error.message) {
        alert(`로그인 실패: ${error.message}`);
      } else {
        alert('로그인 실패');
      }
      reset({email: '', password: ''});
    },
  });

  const onSubmit = (data: {email: string, password: string}) => {
    signMutate(data, {
      onSuccess: () => {
        alert('로그인 성공');
      },
      onError: () => {
        alert('로그인 실패');
        reset({email: '', password: ''});
      },
    });
  };

  return (
    <>
      <GlobalStyle />
      <Title>Sign In</Title>
      <Container>
        <form
          onSubmit={handleSubmit(onSubmit)}
          className="loginForm"
        >
          <div className="inputGroup">
            <label>Name</label>
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
          <div className="inputGroup">
            <label>Password</label>
            <Controller
              name="password"
              control={control}
              defaultValue=""
              rules={{required: '이메일은 필수 입력 항목입니다.'}}
              render={({field}) => (
                <Input
                  {...field}
                  type="password"
                  placeholder="이메일을 입력해주세요"
                />
              )}
            />
          </div>

          <SubmitButton type="submit">로그인</SubmitButton>
        </form>
        <div className="signUpYet">
          <div>아직 회원이 아니신가요?</div>
          <MoveToSignUp>회원가입 하기</MoveToSignUp>
        </div>
      </Container>
    </>
  );
};

export default LoginProcess;
