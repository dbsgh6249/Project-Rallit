<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../include/headerAdmin.jsp"%>
<link href="${pageContext.request.contextPath}/resources/css/myInfo.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath}/resources/css/jobPostingInsert.css"
	rel="stylesheet" type="text/css">
<title>채용공고 수정</title>
<!--  -->

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script>
	$(function() {
		$("#occ_main").load("/ex/resources/ajax/occCategory.html #category1-1",
				function() {
					$(this).show();
				});
		$(document).on("change", "#occ_main>select", function() {
			$("#occ_sub").empty().hide();
			var target = $(this).find("option:selected").attr("data-target");
			var selector = "/ex/resources/ajax/occCategory.html " + target;
			$("#occ_sub").load(selector, function() {
				$(this).show();
			});
		});
		$(document).on("change", "#occ_sub>select", function() {
			if ($(this).find("option:selected").index() > 0) {
				var data1 = $("#occ_main>select>option:selected").val();
				var data2 = $(this).find("option:selected").val();
				$(".occupation").html(data1 + " &gt; " + data2); // 선택 직군-직무 출력용
				$("#fullOccu").val(data1 + " > " + data2);
			}
		});
	});

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
	<%@include file="../include/myHomeMenuAdmin.jsp"%>
	<section class="css-8jj0t0">
		<h1 class="css-vvbno4">채용 공고 수정하기</h1>
		<div class='container'>
			<span class='postingBar'>
				<form id='jobPostingInsert' name='postingForm'
					action='/ex/jobPosting/insert' method='post'>
					<input type='hidden' name='posting_num' value='${dto.posting_num }'>
					<input type='hidden' name='datecreated' value='${dto.datecreated }'>
					<p>제목</p>
					<input type="text" name="title">
					<p>회사 ID</p>
					<c:forEach items="${list }" var="hUsersDto">
						<label class='selectCompanyId'> <input type='radio'
							name='user_id' value='${hUsersDto.user_id }'> <input
							type='hidden' name='user_company'
							value='${hUsersDto.user_company }'> <input type="hidden"
							name="address"
							value="${hUsersDto.user_province }+' '+${hUsersDto.user_city}">
							<span class='userId_value'>${hUsersDto.user_id }</span><br>
						</label>
					</c:forEach>
					<p>공고 마감일 선택</p>
					<input type="date" name="deadline"><br>
					<br>
					<p>채용 직군 > 직무 선택</p>
					<span id="occ_main"></span> <span id="occ_sub"></span><br> <input
						style="cursor: default;" class="fullOccu" name="fullOccu"
						type="text" id="fullOccu" readonly> <br>
					<p>경력</p>
					<input class="careerInput" type="number" name="minCareer"
						placeholder="숫자로 입력하세요" min='0'> ~ <input
						class="careerInput" type="number" name="maxCareer"
						placeholder="숫자로 입력하세요"><br>
					<p>소개</p>
					<div class='jobPostingtext'>
						<textarea name="text1" placeholder="회사 소개글을 입력하세요"></textarea>
						<br>
					</div>
					<p>주요업무</p>
					<div class='jobPostingtext'>
						<textarea name="text2" placeholder="업무 내용을 입력하세요"></textarea>
						<br>
					</div>
					<p>자격요건</p>
					<div class='jobPostingtext'>
						<textarea name="text3" placeholder="자격 요건을 입력하세요"></textarea>
						<br>
					</div>
					<p>우대사항</p>
					<div class='jobPostingtext'>
						<textarea name="text4" placeholder="우대사항을 입력하세요"></textarea>
						<br>
					</div>
					<p>혜택 및 복지</p>
					<div class='jobPostingtext'>
						<textarea name="text5" placeholder="복지 내용을 입력하세요"></textarea>
						<br>
					</div>
					<p>한마디</p>
					<input type='text' name='text6' placeholder='한마디를 입력하세요'><br>
					<br>
					<p>연봉</p>
					<input type="number" name="sal" placeholder="숫자로 입력하세요"><br>
					<br> <br>
					

					<div class="inputbox">
						<input type="submit" id='insertbtn' value='수정하기'>
					</div>
				</form>

			</span>

		</div>
	</section>
</div>
</main>
<%@include file="../include/footer.jsp"%>