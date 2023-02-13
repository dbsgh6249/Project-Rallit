<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../include/header.jsp"%>
<%@include file="../include/findAdress.jsp"%>
<link href="${pageContext.request.contextPath}/resources/css/myInfo.css"
	rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/resources/css/viewList.css"
	rel="stylesheet" type="text/css">
	<title>기업회원 공고목록</title>
<head>
 <style>
 	table {
 		font-size: .9em;
 		width: 95%;
 		border-collapse: collapse;
 		border-radius: 5px;
 		overflow: hidden;
  	}
  	th {text-align: left;}
  	thead {
  		font-weight: bold;
  		color: #fff;
  		background-color: #1bcd9d;
  	}
  	td, th {
  		padding: 1em .5em;
  		vertical-align: middle;
  	}
  	td {
  		border-bottom: 1px solid #c6c9cc;
  		border-right: 1px solid #c6c9cc;
  		border-left: 1px solid #c6c9cc;
  	}
 </style>
</head>
<!--  -->

 

<main class="css-ac13em">
<div class="css-ftt0tl">
	<nav class="css-uebuml">
		<div class="css-1qtribh">
			<div class="css-139kjpe">
				<span>MY 홈</span>
				<button class="css-1vgm1p2" type="button">
					<div class="rallit-icon  css-12r39mb">
						<svg width="12" height="12" fill="none"
							xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd"
								clip-rule="evenodd"
								d="M.938 2.25c0-.31.251-.563.562-.563h9a.562.562 0 1 1 0 1.125h-9a.563.563 0 0 1-.563-.562zM.938 6c0-.31.251-.563.562-.563h9a.562.562 0 1 1 0 1.125h-9A.563.563 0 0 1 .937 6zM.938 9.75c0-.31.251-.563.562-.563h9a.562.562 0 1 1 0 1.126h-9a.562.562 0 0 1-.563-.563z"
								fill="#535961"></path>
                                    </svg>
					</div>
				</button>
			</div>
			
		</div>
		<div role="none" class="css-ntzr4d"></div>
	</nav>
<%@include file = "../include/myHomeMenuCom.jsp" %>
	<section class="css-8jj0t0">
		<h1 class="css-vvbno4">채용공고 목록 조회</h1>
		<div class="css-uaw2kl">
			<div class="css-9j3f84">
				<header class="css-1en5oz">
					<h2 class="my-dashboard__title css-fstzjo">채용공고 목록을 조회합니다.</h2>
				</header>

				<div class="css-1mezue1">
							<table>
								<thead>
									<tr>
										<th>제목</th>
										<th>직무</th>
										<th>마감일</th>
										<th>조회수</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${list }" var="jobPosting">
									<tr style="cursor:pointer;" onclick="location.href='/ex/readPost?posting_num=${jobPosting.posting_num }'" class="colored">
										<td>
										<a href='/ex/readPost?posting_num=${jobPosting.posting_num }'>
										${jobPosting.title }</a>
										</td>
										<td>${jobPosting.occ_sub }</td>
										<td><fmt:formatDate pattern="yyyy-MM-dd" value="${jobPosting.deadline}" /> </td>
										<td>${jobPosting.viewCnt }</td>
									</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
			</div>
	</section>
</div>
</main>

<%@include file="../include/footer.jsp"%>