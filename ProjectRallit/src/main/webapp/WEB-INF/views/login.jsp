<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>랠릿 로그인</title>
    <link rel="stylesheet" href="resources/css/login.css">
</head>
<body>
    <div class="container">
        <span class="logoheader">
            
        </span>
        <span class="text">
           <h2>로그인</h2>
           <p>랠릿 계정으로 로그인 할 수 있어요.</p>
        </span>
        <span class="loginbar">
        <form action="">
        <input type="text" placeholder="이메일"><br><br>
        <input type="password" placeholder="비밀번호"><br><br>
        <input type="submit" value="로그인"><br>
        </form>
        <a href="findid">아이디(이메일) 찾기</a><span class="space">|</span>
        <a href="findpw">비밀번호 찾기</a><span class="space">|</span>
        <a href="register.html">회원가입</a>
            </span>
            <div class="fastlogin">
                간편 로그인 <br>
                <a href=""><img src="resources/imgs/kakaoTalklogo.png" alt=""></a>
                <a href=""><img src="resources/imgs/googlelogo.png" alt=""></a>
                <a href=""><img src="resources/imgs/githublogo.png" alt=""></a>
                <a href=""><img src="resources/imgs/applelogo.png" alt=""></a>
            </div>
    </div>
</body>
</html>
<!-- ljhjk -->