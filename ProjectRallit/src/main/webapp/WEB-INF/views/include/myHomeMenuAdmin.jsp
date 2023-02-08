<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	 <link href="${pageContext.request.contextPath}/resources/css/menubarAdmin.css"
      rel="stylesheet" type="text/css">
<title>Document</title>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script>
$(function(){
     var selectDiv=$("#menu>li>div").eq(0);   
    $(".sub").hide();
    //
$("#menu>li>div").hover(function () {
    $(this).next().stop().slideDown(300);
    $(".sub").hover(function () {
        $(this).stop().slideDown(300);
    }
    , function () {
        $(this).stop().slideUp(300);
    })
})
//
$("menu>li>div").on("click",function(){
    selecDiv=$(this);
})
})
</script>
<aside class="css-1xgvj9r">
    <ul id="menu" class="wow" style="margin-top:30px;">
      <li>
            <div class="bbox">회원 관리  📝</div>
            <ul class="sub">
                <li><a href="#">구직자</a></li>
                <li><a href="#">회사</a></li>
            </ul>
        </li>
        <li>
            <div class="bbox" style="cursor: pointer;" onclick="location.href='/';">채용 공고  📝</div>
        </li>
    </ul>
</aside>