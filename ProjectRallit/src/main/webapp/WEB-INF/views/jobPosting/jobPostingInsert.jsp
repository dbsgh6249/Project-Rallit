<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
iframe {width: 0px;height: 0px;border: 0px}
</style>

</head>
<body>
<form>
<p>제목 : </p><input type="text" name="title"><br>
<p>공고 마감일 : </p><input type="date" name="deadline"><br>
<p>직군 : </p><input type="text" name="occ_main"><br>
<p>직무 : </p><input type="text" name="occ_sub"><br>
<p>경력 : </p><input type="text" name="minCareer" placeholder="숫자로 입력하세요(신입의 경우 0)">
			~<input type="text" name="maxCareer" placeholder="숫자로 입력하세요"><br>
<p>소개 : </p><input type="text" name="text1" placeholder="회사 소개글을 입력하세요"><br>
<p>주요업무 : </p><input type="text" name="text2" placeholder="업무 내용을 입력하세요"><br>
<p>자격요건 : </p><input type="text" name="text3" placeholder="자격 요건을 입력하세요"><br>
<p>우대사항 : </p><input type="text" name="text4" placeholder="우대사항을 입력하세요"><br>
<p>혜택 및 복지 : </p><input type="text" name="text5" placeholder="복지 내용을 입력하세요"><br>
<p>한마디 : </p><input type="text" name="text6" placeholder="한마디를 입력하세요"><br>
<p>사진 : </p><input type="file" name="uploadFile" accept="image/*" enctype="multipart/form-data"><br>
<input type="submit" value="등록">
</form>

<iframe name="zeroFrame"></iframe>
<script>
	function addFilePath(msg) {
		alert(msg);
		document.getElementById("uploadPicture").reset();
	}
</script>
</body>
</html>