<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="resources/css/admin.css" rel="stylesheet">
</head>
<body>

	<c:if test="${param.error != null}">
		<p>아이디와 비밀번호가 잘못되었습니다.</p>
	</c:if>
	<c:if test="${param.logout != null}">
		<p>로그아웃 하였습니다.</p>
	</c:if>


	<section class="login-form">
		<h1>LOGIN</h1>
		<c:url value="/login" var="loginUrl" />
		<form:form name="frmLogin" action="${loginUrl}" method="POST">
			<c:if test="${param.error != null}">
				<p>아이디와 비밀번호가 잘못되었습니다.</p>
			</c:if>
			<c:if test="${param.logout != null}">
				<p>로그아웃 하였습니다.</p>
			</c:if>
			<div class="int-area">
				<input type="text" name="id" id="id" autocomplete="off" required>
				<label for="id">USER NAME</label>
			</div>
			<div class="int-area">
				<input type="password" name="pw" id="pw" autocomplete="off" required>
				<label for="pw">PASSWORD</label>
			</div>
			<div class="btn-area">
				<button type="submit">LOGIN</button>
			</div>
		</form:form>
	</section>
</body>
</html>