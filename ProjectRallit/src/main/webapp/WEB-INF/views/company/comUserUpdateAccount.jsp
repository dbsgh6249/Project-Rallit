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
	<title>기업회원 정보 수정</title>
<!--  -->

<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script
	src="${pageContext.request.contextPath }/resources/js/daumpost.js"></script>
<script type="text/javascript">
	function reg() {
		var addr1 = $("#addr1").val()
		var full_address = $("#full_address").val()
		var addr3 = $("#user_city").val()
		user_province = addr2;
		$("full_address").val(full_address)
		fo.submit()
	}
	function daumPost() {
		new daum.Postcode({
			oncomplete : function(data) {
				//도로명일 경우 R, 지번일 경우 J 의 값을 가지고 있다.
				console.log('data.userSelectedType : ' + data.userSelectedType)
				console.log('data.roadAddress : ' + data.roadAddress)
				console.log('data.jibunAddress : ' + data.jibunAddress)
				console.log('data.zonecode : ' + data.zonecode)
				var addr = ""
				if (data.userSelectedType == 'R') {//도로명일 경우 R
					addr = data.roadAddress
				} else {//지번일 경우 J
					addr = data.jibunAddress
				}
				$("#full_address").val(addr)
				$("#addr3").focus()

			}
		}).open()
	}
</script>



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
		<h1 class="css-vvbno4">내 정보 수정</h1>
		<div class="css-uaw2kl">
			<div class="css-9j3f84">
				<header class="css-1en5oz">
					<h2 class="my-dashboard__title css-fstzjo">나의 정보를 변경합니다.</h2>
				</header>

				<form action="/ex/infoUp" method="post">
					<div class="css-1miajvq">
						<div class="css-1mezue1">
							<p class="css-1aweud3">변경을 원하는 정보를 입력 후 수정하기 버튼을 누르십시오.</p>
							<br>
							<div class="w3-section">
								<!-- <label class="input_label">이메일</label><br> <input
									class="updateInput" type="text"
									placeholder="example@inflab.com" name="user_id"><br>
								<br>  --><label class="input_label">비밀번호</label><br> <input
									class="updateInput" type="password" placeholder="******"
									name="user_pw"><br> <br> <label
									class="input_label">이름2</label><br> <input
									class="updateInput" type="text" placeholder="독고OO"
									name="user_name"><br> <br> <label
									class="input_label">전화번호</label><br> <input
									class="updateInput" type="text" placeholder="010-0000-0000"
									name="user_phone"><br> <br> <label
									class="input_label">회사명</label><br> <input
									class="updateInput" type="text" placeholder="애플 코리아 충남 두정점"
									name="user_company"><br> <br> <label class="input_label">주소</label><br>
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