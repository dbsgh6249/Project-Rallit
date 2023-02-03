<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>랠릿 로그인</title>
     <link href="${pageContext.request.contextPath}/resources/css/login.css"
      rel="stylesheet" type="text/css">
</head>
<body>
<%--  <c:if test="${param.error != null}">
        <p>아이디와 비밀번호가 잘못되었습니다.</p>
    </c:if>
    <c:if test="${param.logout != null}">
        <p>로그아웃 하였습니다.</p>
</c:if>
 --%>    
 		<div class="container">
        <span class="logoheader">
            
        </span>
        <span class="text">
           <h2>로그인</h2>
           <p>랠릿 계정으로 로그인 할 수 있어요.</p>
        </span>
        <span class="loginbar">
        <c:url value="/login" var="loginUrl" />
        <form:form name="frmLogin" action="${loginUrl}" method="POST">
				<c:if test="${param.error != null}">
					<script>alert("아이디 또는 패스워드가 잘못되었습니다.")</script>
				</c:if>
				<c:if test="${param.logout != null}">
					<p>로그아웃 하였습니다.</p>
				</c:if>
		<input type="text" id="id" name="id" placeholder="이메일"><br><br>
        <input type="password" id="password" name="password" placeholder="비밀번호"><br><br>
        <button type="submit">로그인</button><br>
        </form:form>
        <a href="https://i.ytimg.com/vi/5rCcqk2QxrM/maxresdefault.jpg">아이디(이메일) 찾기</a><span class="space">|</span>
        <a href="https://i.ytimg.com/vi/5rCcqk2QxrM/maxresdefault.jpg">비밀번호 찾기</a><span class="space">|</span>
        <a href="register.html">회원가입</a>
            </span>
            <div class="fastlogin">
                간편 로그인 <br>
                <a href=""><img src="../resources/imgs/kakaoTalklogo.png" alt=""></a>
                <a href=""><img src="../resources/imgs/googlelogo.png" alt=""></a>
                <a href=""><img src="../resources/imgs/githublogo.png" alt=""></a>
                <a href=""><img src="../resources/imgs/applelogo.png" alt=""></a>
            </div>
    </div>
</body>
</html>