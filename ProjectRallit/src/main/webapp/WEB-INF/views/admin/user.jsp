<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file = "../include/headerAdmin.jsp" %>
<sec:authorize access="isAnonymous()">
		<p>
			<a href="<c:url value="/user/login" />">로그인</a>
		</p>
	</sec:authorize>

	<sec:authorize access="isAuthenticated()">
		<form:form action="${pageContext.request.contextPath}/user/logout" method="POST">
			<input type="submit" value="로그아웃" />
		</form:form>
	</sec:authorize>
<%@include file = "../include/footer.jsp" %>