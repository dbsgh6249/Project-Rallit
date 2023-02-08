<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	 <link href="${pageContext.request.contextPath}/resources/css/myInfo.css"
      rel="stylesheet" type="text/css">
<title>Document</title>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script>
	$(function() {
		// alert("test")
		//  $(".sub").slideUp(300);
		var selectDiv = $(".css-e0v95d").eq(0);

		$(".sub").hide();
		$(".css-e0v95d").hover(function() {
			$(this).next().stop().slideDown(300);
			$(".sub").hover(function() {
				$(this).stop().slideDown(300);
			}, function() {
				$(this).stop().slideUp(300);
			})
		}, function() {
			$(this).next().stop().slideUp(300);
		})
		//
		$(".css-e0v95d").on("click", function() {
			selecDiv = $(this);
		})

	})
</script>
<aside class="css-1xgvj9r">


	<ul class="css-1b7sljm">
		<li>
			<div class="css-e0v95d">회원 관리</div>
			<ul class="sub">
				<li class="css-e0v95d-1"><a href="#" class="css-jvnoiv">구직자</a></li>
				<li class="css-e0v95d-1"><a href="#" class="css-jvnoiv">회사</a></li>
			</ul>
		</li>
		<li>
			<div style="cursor: pointer;" onclick="location.href='/';"
				class="css-e0v95d">채용공고</div>
		</li>
	</ul>

	<div class="LNB__border-bottom css-4cw3x0"></div>

	<!-- <ul class="css-1b7sljm">
                        <li class="css-e0v95d"><a href="/ex/info" class="css-tukp59">회원 관리</a></li>
                        <li class="css-e0v95d"><a href="/ex/info" class="css-jvnoiv">채용공고</a></li>
                        <li class="css-e0v95d"><a href="/ex/info" class="css-jvnoiv"></a></li>
                        <li class="css-e0v95d"><a href="/ex/info" class="css-jvnoiv"></a></li>
                        <li class="css-e0v95d"><a href="/ex/infoUp" class="css-jvnoiv"></a></li>
                        <li class="css-e0v95d"><a href="/ex/infoDel" class="css-jvnoiv"></a></li>
                    </ul>
                   
                    <div class="LNB__border-bottom css-4cw3x0"></div> -->
</aside>