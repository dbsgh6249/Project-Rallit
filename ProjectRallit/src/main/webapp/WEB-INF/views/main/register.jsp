<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>랠릿 회원가입</title>
<link
	href="${pageContext.request.contextPath}/resources/css/register.css"
	rel="stylesheet" type="text/css">
</head>
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
<body>
	<div class="regbar">
		<div class="header"></div>
		<div class="main"></div>
		<div class="reg">
			<h2>회원가입</h2>
			<div class="slide">
				<ul>
					<li>나에게 딱 맞는 회사 찾기</li>
					<li>커리어 성장의 지름길</li>
					<li>나의 성장을 돕는 IT 플랫폼</li>
					<li>지금 회원가입 하세요!</li>
				</ul>
			</div>


			<form action="/ex/seeker/register" method="POST">
				<input type="hidden" name="user_company">
				<p>이메일</p>
				<br> <input type="text" name="user_id"
					placeholder="example@inflab.com"><br>
				<p>비밀번호</p>
				<br> <input type="password" name="user_pw" placeholder="******"><br>
				<p>이름</p>
				<br> <input type="text" name="user_name" placeholder="김OO"><br>
				<p>휴대폰 번호</p>
				<br> <input type="text" name="user_phone"
					placeholder="010-0000-0000"><br>
					
					
				<p>주소</p>
				<br> 
				<input type="button" onclick="daumPost()" value="우편주소찾기"><br><br>
				<input type="text" id="full_address" name="full_address" 
				placeholder="주소" readonly>
				<br>
				<p></p>
				<input type="text" id="addr3" name="user_address" placeholder="상세주소"><br>



				<input type="submit" value="가입하기"><br>
				<br>
			</form>

			<span class="footer__policy"> 가입 시, 통합 계정으로 랠릿이 제공하는 서비스를 모두
				이용하실 수 있습니다. 통합 계정 및 서비스 이용약관 ( <a href="">인프런</a> / <a href="">랠릿</a>
				),<a href="">개인정보처리</a> 방침에 동의합니다. <br>
			</span>

			<h5>
				<input type="checkbox"> 통합회원 할인 혜택 및 유용한 채용 소식을 받아볼래요.
			</h5>
		</div>
	</div>
</body>
</html>