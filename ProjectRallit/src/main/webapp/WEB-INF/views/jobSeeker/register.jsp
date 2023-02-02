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
    <title>랠릿 회원가입</title>
    <link href="${pageContext.request.contextPath}/resources/css/register.css"
      rel="stylesheet" type="text/css">
</head>
<body>
    <div class="regbar">
        <div class="header">
            
        </div>
        <div class="main">   
       
        </div>
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
                
                
                <form action="">
                <p>이메일</p><br>
                <input type="text" name="user_id"placeholder="example@inflab.com"><br>
                <p>비밀번호</p><br>
                <input type="password" name="user_pw" placeholder="******"><br>
                <p>이름</p><br>
                <input type="text" name="user_name" placeholder="김OO"><br>
                <p>휴대폰 번호</p><br>
                <input type="text" name="user_phone" placeholder="010-0000-0000"><br>
                <p>시,도</p><br>
                <select name="user_province">
					<option value="서울 ">서울</option>
					<option value="경기 ">경기</option>
					<option value="대전 ">대전</option>
					<option value="충남 ">충남</option>
				</select><br>
				<p>도,군,구</p><br>
				<select name="user_city">
					<option value="강남구 ">강남</option>
					<option value="마포구 ">마포</option>
					<option value="천안시 ">천안시</option>
					<option value="유성구 ">유성구</option>
				</select><br>
				<p>상세 주소</p><br>
				<input type="text" name="user_address" placeholder="상세 주소(OO동 OO아파트)">
				<br><br>
				
				<input type="submit"value="가입하기"><br><br>
                </form>
                
                <span class="footer__policy">
                    가입 시, 통합 계정으로 랠릿이 제공하는 서비스를 모두 이용하실 수
                    있습니다. 통합 계정 및 서비스 이용약관 (  <a href="">인프런</a> / <a href="">랠릿</a> ),<a href="">개인정보처리</a>
                    방침에 동의합니다. <br>
                </span>
                
                 <h5><input type="checkbox"> 통합회원 할인 혜택 및 유용한 채용 소식을 받아볼래요.</h5>
            </div>
    </div>
</body>
</html>