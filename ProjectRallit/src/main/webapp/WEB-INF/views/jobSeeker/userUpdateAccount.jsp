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
			<div class="dropdownList__wrapper css-11yz4m4">
				<div class="dropdownList__container css-gqe409">
					<ul class="css-733rfy">
						<li role="menuitem" class="css-umd2x0">
							<div class="css-47e4vb">
								<p class="dropdownList__title css-1182me">MY 홈</p>
								<p class="dropdownList__caption css-vzncwq"></p>
							</div>
						</li>
						<li role="menuitem" class="css-83cc5o">
							<div class="css-47e4vb">
								<p class="dropdownList__title css-1182me">작성 중인 지원서</p>
								<p class="dropdownList__caption css-vzncwq"></p>
							</div>
						</li>
						<li role="menuitem" class="css-83cc5o">
							<div class="css-47e4vb">
								<p class="dropdownList__title css-1182me">제출한 지원서</p>
								<p class="dropdownList__caption css-vzncwq"></p>
							</div>
						</li>
						<li role="menuitem" class="css-83cc5o">
							<div class="css-47e4vb">
								<p class="dropdownList__title css-1182me">북마크한 채용 공고</p>
								<p class="dropdownList__caption css-vzncwq"></p>
							</div>
						</li>
						<li role="menuitem" class="css-83cc5o">
							<div class="css-47e4vb">
								<p class="dropdownList__title css-1182me">설정</p>
								<p class="dropdownList__caption css-vzncwq"></p>
							</div>
						</li>
						<div class="css-yrphod"></div>
						<li role="menuitem" class="css-jrt6fi">
							<div class="css-47e4vb">
								<p class="dropdownList__title css-1182me">로그아웃</p>
								<p class="dropdownList__caption css-vzncwq"></p>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div role="none" class="css-ntzr4d"></div>
	</nav>
	<aside class="css-1xgvj9r">
		<ul class="css-1b7sljm">
			<li class="css-e0v95d"><a href="/my" class="css-tukp59">MY 홈</a></li>
			<li class="css-e0v95d"><a href="/my/draft-applicants"
				class="css-jvnoiv">작성 중인 지원서</a></li>
			<li class="css-e0v95d"><a href="/my/submitted-applicants"
				class="css-jvnoiv">제출한 지원서</a></li>
			<li class="css-e0v95d"><a href="/my/bookmarks"
				class="css-jvnoiv">북마크한 채용 공고</a></li>
			<li class="css-e0v95d"><a href="/my/settings" class="css-jvnoiv">설정</a></li>
		</ul>
		<div class="LNB__border-bottom css-4cw3x0"></div>
	</aside>
	<section class="css-8jj0t0">
		<h1 class="css-vvbno4">내 정보 수정</h1>
		<div class="css-uaw2kl">
			<div class="css-9j3f84">
				<header class="css-1en5oz">
					<h2 class="my-dashboard__title css-fstzjo">나의 정보를 변경합니다.</h2>
				</header>

				<form action="" method="get">
					<div class="css-1miajvq">
						<div class="css-1mezue1">
							<p class="css-1aweud3">변경을 원하는 정보를 입력 후 수정하기 버튼을 누르십시오.</p>
							<br>
							<div class="w3-section">
								<label class="input_label">이메일</label><br> <input
									class="updateInput" type="text"
									placeholder="example@inflab.com" name="user_id"><br>
								<br> <label class="input_label">비밀번호</label><br> <input
									class="updateInput" type="text" placeholder="******"
									name="user_pw"><br> <br> <label
									class="input_label">이름</label><br> <input
									class="updateInput" type="text" placeholder="독고OO"
									name="user_name"><br> <br> <label
									class="input_label">전화번호</label><br> <input
									class="updateInput" type="text" placeholder="010-0000-0000"
									name="user_phone"><br> <br> <label
									class="input_label">회사명</label><br> <input
									class="updateInput" type="text" placeholder="애플 코리아 충남 두정점"
									name=""><br> <br> <label class="input_label">주소</label><br>
								<input class="inputsubmit" type="button" onclick="daumPost()"
									value="우편주소찾기"><br>
									<input type="text"
									id="full_address" name="full_address" placeholder="주소" readonly>
								<br>
								<p></p>
								<input type="text" id="input_label" name="user_address"
									placeholder="상세주소"><br>

								<br>
								<button class="css-1146gk" type="submit">수정하기</button>
								
							</div>
						</div>
					</div>
				</form>
			</div>
	</section>
</div>
</main>

<%@include file="../include/footer.jsp"%>