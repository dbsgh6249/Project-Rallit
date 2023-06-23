<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
				$("#fullOccu").val(data1 + " > " + data2);
			}
		});
	});
	//Tag TEST
	$(function() {
		$("#insert_button")
				.click(
						function() {
							event.preventDefault();
							$("#displayTag")
									.append(
											"<div class='tagDiv'><input class='taginput' type='text' name='languageTags'> <button class='tagDel'>❌　</button></div>");
						})
		$("#displayTag").on("click", "button", function() {
			event.preventDefault();
			$(this).parent().remove();
		})
	})
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
				<form id='jobPostingUpdate' name='updatePosting'
					action='/ex/admin/updateJobPosting' method='post'>
					<input type='hidden' name='posting_num' value='${jobPosting.posting_num }'>
					<p>제목</p>
					<input type="text" name="title" value="${jobPosting.title }">
					<p>공고 마감일 선택</p>
					<input type="date" name="deadline" value="<fmt:formatDate pattern="yyyy-MM-dd" value='${jobPosting.deadline}'/>"><br>
					<br>
					<p>채용 직군 > 직무 선택</p>
					<span id="occ_main"></span> 
					<span id="occ_sub"></span><br> 
					<input style="cursor: default;" class="fullOccu" name="fullOccu"
						type="text" id="fullOccu" readonly> <br>
					<p>경력</p>
					<input class="careerInput" type="number" name="minCareer"
						value="${jobPosting.minCareer }" min='0'> ~ <input
						class="careerInput" type="number" name="maxCareer"
						value="${jobPosting.maxCareer }"><br>
					<p>소개</p>
					<div class='jobPostingtext'>
						<textarea name="text1">${jobPosting.text1 }</textarea>
						<br>
					</div>
					<p>주요업무</p>
					<div class='jobPostingtext'>
						<textarea name="text2">${jobPosting.text2 }</textarea>
						<br>
					</div>
					<p>자격요건</p>
					<div class='jobPostingtext'>
						<textarea name="text3">${jobPosting.text3 }</textarea>
						<br>
					</div>
					<p>우대사항</p>
					<div class='jobPostingtext'>
						<textarea name="text4">${jobPosting.text4 }</textarea>
						<br>
					</div>
					<p>혜택 및 복지</p>
					<div class='jobPostingtext'>
						<textarea name="text5">${jobPosting.text5 }</textarea>
						<br>
					</div>
					<p>한마디</p>
					<input type='text' name='text6' value="${jobPosting.text6 }"><br>
					<br>
					<p>연봉</p>
					<input type="number" name="sal" value="${jobPosting.sal }"><br>
					<br> <br>
					<p>언어 태그</p>
					<div class="tagbox">
						<button class="tagButton" id="insert_button">태그 추가</button>
						<div id='displayTag'>
							<c:forEach items='${jobPosting.languageTags }' var='postingTag'>
								<div class='tagDiv'>
									<input class='taginput' type='text' name='languageTags'
										value="${postingTag }">
									<button class='tagDel'>❌</button>
								</div>
							</c:forEach>
						</div>
					</div>


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