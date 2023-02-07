<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>채용공고 입력</title>
<style>
.container{    
    margin-left: 20px;
    margin-right: 20px;   
}
::placeholder{
    position: relative;
    color: #ced4ec;
}
.postingBar input{
    border-color:#ced4ec;
    border-style: solid;
    border-radius: 5px;
    border-width: 1px;
    height: 48px;
    width: 312px;   
    margin-bottom: -10px;
    padding-left: 10px;
}
.postingBar button{
    border-color:#ced4ec;
    border-style: solid;
    border-radius: 5px;
    border-width: 1px;
    height: 48px;
    width: 312px;   
    margin-bottom: -10px;
    padding-left: 10px;
}
.postingBar input:focus{
border-color:#00C471;
outline: none;
}
.postingBar button[type="submit"]{
    height: 44px;
    width: 320px;
    font-weight: bolder;
    color: white;
    border: none;
    background-color: #00C471;
    cursor: pointer;
}
.postingBar p{
    font-size: 15px;
}
.postingBar input[type='radio']{
	vertical-align: middle;
	appearance: none;
	border: max(2px, 0.1em) solid gray;
	border-radius: 50%;
	width: 1.25em;
	height: 1.25em;
}
.postingBar input[type='radio']:checked {
	border: 0.4em solid #00C471;
}
.selectCompanyId {
	font-size: 20px;
	line-height: 2rem;
	padding: 0.2em 0.4em;
}
.userId_value {
	vertical-align: middle;
}
.postingBar .jobPostingtext textarea {
	border: 1px solid #00C471;
	display:block;
	width: 80%;
	height:300px;
	box-sizing: border-box;
	border: 0;
	resize: vertical;
}
</style>
</head>
<body>
<div class='container'>
<h2>채용공고 등록하기</h2>
<span class='postingBar'>
<form id='jobPostingInsert' name='postingForm' action='/ex/jobPosting/insert' method='post'>
<input type='hidden' name='posting_num' value='${dto.posting_num }'>
<input type='hidden' name='datecreated'value='${dto.datecreated }'>
<p>제목</p><input type="text" name="title"><br>
<p>회사 id</p> <br>
<c:forEach items="${list }" var="authoritiesDto">
<label class='selectCompanyId'>
<input type='radio' name='user_id' value='${authoritiesDto.user_id }'>
<span class='userId_value'>${authoritiesDto.user_id }</span><br>
</label>
</c:forEach>
<p>공고 마감일</p><input type="date" name="deadline"><br>
<p>직군</p><input type="text" name="occ_main"><br>
<p>직무</p><input type="text" name="occ_sub"><br>
<p>경력</p><input type="number" name="minCareer" placeholder="신입의 경우 0" min='0'>
			~<input type="number" name="maxCareer" placeholder="숫자로 입력하세요"><br>
<p>소개</p>
<div class='jobPostingtext'>
<textarea name="text1" placeholder="회사 소개글을 입력하세요"></textarea><br>
</div>
<p>주요업무</p>
<div class='jobPostingtext'>
<textarea name="text2" placeholder="업무 내용을 입력하세요"></textarea><br>
</div>
<p>자격요건</p>
<div class='jobPostingtext'>
<textarea name="text3" placeholder="자격 요건을 입력하세요"></textarea><br>
</div>
<p>우대사항</p>
<div class='jobPostingtext'>
<textarea name="text4" placeholder="우대사항을 입력하세요"></textarea><br>
</div>
<p>혜택 및 복지</p>
<div class='jobPostingtext'>
<textarea name="text5" placeholder="복지 내용을 입력하세요"></textarea><br>
</div>
<p>한마디</p>
<div class='jobPostingtext'>
<textarea name="text6" placeholder="한마디를 입력하세요"></textarea><br><br>
</div>
</form>
<button type="submit" id='insertbtn' form='jobPostingInsert'>등록</button>
</span>

</div>
</body>
</html>