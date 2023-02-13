<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kp">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>기업 회원가입</title>
        <link href="${pageContext.request.contextPath}/resources/css/registerK.css"
      rel="stylesheet" type="text/css">
</head>
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script	src="${pageContext.request.contextPath }/resources/js/daumpost.js"></script>
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
    <div id="root">
        <div class="header">
            <div class="headerlogo"><img src=""></div>
        </div>
        <main class="main">
            <div class="regbar_header">
                <h2>기업 회원가입</h2>
            </div>
            <div class="nonebar"></div>

            
            <form action="/ex/main/registerK" method="POST">
            <div class="idbar">
                <span>아이디(이메일)</span><br>
                <input type="text" name="user_id" placeholder="example@email.com">
            </div>
            <div class="nonebar"></div>
            <div class="pwbar">
                <span>비밀번호</span><br>
                <input type="password" name="user_pw" placeholder="**********">
            </div>
             <div class="nonebar"></div>
            <div class="pwbar">
                <span>회사명</span><br>
                <input type="text" name="user_company" placeholder="애플 코리아 천안 두정점">
            </div>
            <div class="nonebar"></div>
            <div class="managerbar">
                <span>당담자 이름</span><br>
                <input type="text" name="user_name" placeholder="실명으로 입력">
            </div>
            <div class="nonebar"></div>
            <div class="phonenumbar">
                <span>휴대폰 번호</span>
                <input type="text" name="user_phone" placeholder="01012345678">
            </div>
            <div class="nonebar"></div>
            <div class="addbar">
            	<span>주소</span>
            	<input style="cursor:pointer; outline:none;" type="button" onclick="daumPost()" value="우편주소찾기"><br>
				<input style="width:390px; height:30px; margin-top: 10px; border: 1px solid #c6cad0; border-radius: 5px;" type="text" id="full_address" name="full_address" 
				placeholder="주소" readonly>
				<br>
				<p></p>
				<input style="width:390px; height:30px; border: 1px solid #c6cad0; border-radius: 5px;" type="text" id="addr3" name="user_address" placeholder="상세주소"><br>
            </div>
            <div class="button">
                <br>
                <input type="submit" value="가입하기">
            </div>
        </form>
            <div class="login">
              <a href="login">  <span>이미 계정이 있으신가요?</span> 로그인</a>
            </div>
        </main>
    </div>
</body>
</html>