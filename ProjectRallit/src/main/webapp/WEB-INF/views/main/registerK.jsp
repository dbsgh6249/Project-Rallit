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
<script>
    function selectAll(selectAll)  {
  const checkboxes 
       = document.getElementsByName('chk');
  
  checkboxes.forEach((checkbox) => {
    checkbox.checked = selectAll.checked;
  })
}
</script>
<style>

</style>

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

            
            <form action="">
            <div class="idbar">
                <span class="idtext">아이디(이메일)</span><br>
                <input type="text" placeholder="example@email.com">
            </div>
            <div class="nonebar"></div>
            <div class="pwbar">
                <span class="pwtext">비밀번호</span><br>
                <input type="password" placeholder="**********">
            </div>
            <div class="nonebar"></div>
            <div class="managerbar">
                <span class="manager">당담자 이름</span><br>
                <input type="text" placeholder="실명으로 입력">
            </div>
            <div class="nonebar"></div>
            <div class="belongbar">
                <span class="belongtext">소속</span><br>
                <input type="text" placeholder="인사팀">
            </div>
            <div class="nonebar"></div>
            <div class="phonenumbar">
                <span class="phonetext">휴대폰 번호</span>
                <input type="text" placeholder="01012345678">
            </div>
            <div class="nonebar"></div>
            <div class="underline"></div>
            <input type="checkbox" name="chk" value="selectall"onclick="selectAll(this)"><span>전체</span><br>
            <div class="line"></div>
            <input type="checkbox" name="chk"><span>[필수] 이용약관 동의</span><br>
           <input type="checkbox" name="chk"><span>[필수] 개인정보 수집 및 이용 동의</span><br>
            <input type="checkbox" name="chk"><span>[필수] 마케팅 수신 동의</span><br>
            <div class="button">
                <br>
                <input type="submit" value="가입하기">
            </div>
        </form>
            <div class="login">
                <span>이미 계정이 있으신가요?</span><a href="login">로그인</a>
            </div>
        </main>
    </div>
</body>
</html>