<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<link href="${pageContext.request.contextPath}/resources/css/main.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/resume.css"
	rel="stylesheet" type="text/css">	
<script src="https://code.jquery.com/jquery.min.js"></script>
<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<meta charset="utf-8">
<title>휴먼 프로젝트 - 랠릿</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=5.0, user-scalable=yes">
<meta name="thumbnail"
	content="https://cdn.rallit.com/image/meta-image.png">
<!--타이틀 아이콘-->

<style>
#posting3, #posting4, #posting5, #posting6, #posting7, #posting8,
	#posting9, #posting10 {
	display: none;
}
/* .css-1kxn32n{
	display : none;
	} */
	
	.css-okq0lf{
	display : none;
	z-index : 10000;
	}
</style>
<!-- 채용공고 hover dropDownMenu-->
<script>
	$(document).ready(function() {
		$("#posting").hover(function() {
			$("#posting2").stop().slideDown();
		}, function() {
			$("#posting2").stop().slideUp();
			$(".css-1kxn32n").show();
		});

		$("#Jobgroup1").mouseover(function() {
			$("#posting4").hide();
			$("#posting5").hide();
			$("#posting6").hide();
			$("#posting7").hide();
			$("#posting8").hide();
			$("#posting9").hide();
			$("#posting10").hide();
			$(".css-1kxn32n").hide();
			$("#posting3").show();
		})

		$("#Jobgroup2").mouseover(function() {
			$("#posting3").hide();
			$("#posting5").hide();
			$("#posting6").hide();
			$("#posting7").hide();
			$("#posting8").hide();
			$("#posting9").hide();
			$("#posting10").hide();
			$(".css-1kxn32n").hide();
			$("#posting4").show();
		})

		$("#Jobgroup3").mouseover(function() {
			$("#posting4").hide();
			$("#posting3").hide();
			$("#posting6").hide();
			$("#posting7").hide();
			$("#posting8").hide();
			$("#posting9").hide();
			$("#posting10").hide();
			$(".css-1kxn32n").hide();
			$("#posting5").show();
		})

		$("#Jobgroup4").mouseover(function() {
			$("#posting4").hide();
			$("#posting5").hide();
			$("#posting3").hide();
			$("#posting7").hide();
			$("#posting8").hide();
			$("#posting9").hide();
			$("#posting10").hide();
			$(".css-1kxn32n").hide();
			$("#posting6").show();
		})

		$("#Jobgroup5").mouseover(function() {
			$("#posting4").hide();
			$("#posting5").hide();
			$("#posting6").hide();
			$("#posting3").hide();
			$("#posting8").hide();
			$("#posting9").hide();
			$("#posting10").hide();
			$(".css-1kxn32n").hide();
			$("#posting7").show();
		})

		$("#Jobgroup6").mouseover(function() {
			$("#posting4").hide();
			$("#posting5").hide();
			$("#posting6").hide();
			$("#posting7").hide();
			$("#posting3").hide();
			$("#posting9").hide();
			$("#posting10").hide();
			$(".css-1kxn32n").hide();
			$("#posting8").show();
		})

		$("#Jobgroup7").mouseover(function() {
			$("#posting4").hide();
			$("#posting5").hide();
			$("#posting6").hide();
			$("#posting7").hide();
			$("#posting8").hide();
			$("#posting3").hide();
			$("#posting10").hide();
			$(".css-1kxn32n").hide();
			$("#posting9").show();
		})

		$("#Jobgroup8").mouseover(function() {
			$("#posting4").hide();
			$("#posting5").hide();
			$("#posting6").hide();
			$("#posting7").hide();
			$("#posting8").hide();
			$("#posting9").hide();
			$("#posting3").hide();
			$(".css-1kxn32n").hide();
			$("#posting10").show();
		})

	});
</script>
<!-- MY랠릿 버튼------------------------------------------------ -->
<script>
	/* When the user clicks on the button, 
	toggle between hiding and showing the dropdown content */
	function myFunction() {
		document.getElementById("myDropdown").classList.toggle("show");
	}

	// Close the dropdown if the user clicks outside of it
	window.onclick = function(event) {
		if (!event.target.matches('.dropbtn')) {
			var dropdowns = document.getElementsByClassName("dropdown-content");
			var i;
			for (i = 0; i < dropdowns.length; i++) {
				var openDropdown = dropdowns[i];
				if (openDropdown.classList.contains('show')) {
					openDropdown.classList.remove('show');
				}
			}
		}
	}
</script>
<!-- ------------------------------------------------------------- -->

</head>
<body>

	<div id="__next" data-reactroot="">
		<section class="inflab-integrated css-1cp3pcs">
			<div class="inflab-integrated__header">
				<div class="inflab-integrated__container">
					<ul class="inflab-integrated__service">
						<li><a href="https://www.inflearn.com" class="">
								<div class="rallit-icon  css-5wonz9">
									<svg width="20" height="20" viewBox="0 0 20 20" fill="none"
										xmlns="http://www.w3.org/2000/svg">
                                        <path
											d="M16.4702 7.30208C16.1056 6.46354 15.6135 5.71615 14.9937 5.07813C14.3558 4.4401 13.6267 3.92969 12.7882 3.5651C11.9497 3.20052 11.0383 3 10.0723 3C9.12446 3 8.21308 3.16406 7.35638 3.52865C6.49969 3.89323 5.75236 4.38542 5.09617 5.00521C4.43998 5.64323 3.92961 6.3724 3.56505 7.21094C3.2005 8.04948 3 8.96094 3 9.92708C3 10.875 3.16405 11.7865 3.5286 12.6432C3.89315 13.5 4.38529 14.2474 5.02326 14.9036C5.66122 15.5599 6.40855 16.0703 7.24702 16.4349C8.10371 16.7995 8.99686 17 9.96292 17H16.9988V10.0365C17.017 9.07031 16.8347 8.15885 16.4702 7.30208ZM7.79384 15.1406C7.11943 14.849 6.51792 14.4297 6.00755 13.9193C5.49717 13.3906 5.09617 12.7891 4.80453 12.1146C4.51289 11.4219 4.38529 10.7109 4.38529 9.94531C4.38529 9.16146 4.54934 8.43229 4.84098 7.75781C5.13262 7.08333 5.55186 6.5 6.06223 5.98958C6.59083 5.47917 7.19234 5.09635 7.86676 4.80469C8.5594 4.51302 9.27028 4.38542 10.0358 4.38542C10.8196 4.38542 11.5487 4.54948 12.2231 4.84115C12.8976 5.13281 13.4808 5.53385 13.9912 6.0625C14.5016 6.57292 14.8844 7.17448 15.176 7.84896C15.4676 8.52344 15.5952 9.25261 15.5952 10.0365V14.7396L10.5644 9.65365L11.6763 6.59115C11.8039 6.26302 11.6216 5.89844 11.2935 5.77083C10.9654 5.64323 10.6009 5.82552 10.4733 6.15365L9.58015 8.63281L8.01258 7.04688C7.75739 6.79167 7.35638 6.79167 7.11943 7.04688C6.86424 7.30208 6.86424 7.70313 7.11943 7.9401L10.9472 11.8594H8.17662C7.8303 11.8594 7.53866 12.151 7.53866 12.4974C7.53866 12.8438 7.8303 13.1354 8.17662 13.1354H12.1502C12.1685 13.1354 12.1867 13.1354 12.1867 13.1354L14.6656 15.6146H9.96292C9.17914 15.5964 8.48649 15.4505 7.79384 15.1406Z"
											fill="#878E98"></path>
                                    </svg>
								</div> <span>교육</span>
						</a></li>
						<li><a href="/ex/" class="active">
								<div class="rallit-icon  css-5wonz9">
									<svg width="20" height="20" viewBox="0 0 20 20" fill="none"
										xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd"
											clip-rule="evenodd"
											d="M3 10.7626C3 7.3177 5.76662 4.52502 9.17943 4.52502H12.7955V7.11248H9.17943C7.1823 7.11248 5.56332 8.74672 5.56332 10.7626C5.56332 12.7786 7.1823 14.4128 9.17943 14.4128C11.1765 14.4128 12.7955 12.7786 12.7955 10.7626V7.11248H15.3589V10.7626C15.3589 14.2076 12.5922 17.0003 9.17943 17.0003C5.76662 17.0003 3 14.2076 3 10.7626Z"
											fill="#21252A"></path>
                                        <path
											d="M15.4272 5.91089C16.2235 5.91089 16.8691 5.25927 16.8691 4.45545C16.8691 3.65163 16.2235 3 15.4272 3C14.6309 3 13.9854 3.65163 13.9854 4.45545V5.91089H15.4272Z"
											fill="#00CCAA"></path>
                                    </svg>
								</div> <span>채용</span>
						</a></li>
					</ul>

					<sec:authorize access="isAnonymous()">
						<div>
							<a href="main/registerK"> <!--기업서비스 로그인 링크-->
								<p class="css-11cix4b">기업 회원가입</p>
							</a>
						</div>
					</sec:authorize>
				</div>
			</div>
		</section>
		<header class="css-1gzra86">
			<nav class="css-o8aacz">
				<div class="left-GNB css-p1vanc">
					<a aria-label="홈" href="/ex/" class="css-avxbst">
						<div class="css-wodprq">
							<div class="GNB-menu__noti-container">
								<div class="rallit-icon  css-1sepp5i">
									<svg width="20" height="20" fill="none"
										xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd"
											clip-rule="evenodd"
											d="M10.19 3.155a.302.302 0 0 0-.38 0L3.437 8.302a.306.306 0 0 0-.115.24v8.063c0 .17.136.307.304.307h3.34v-5.895c0-.244.095-.478.266-.65a.906.906 0 0 1 .644-.27h4.25c.242 0 .473.098.644.27.17.172.267.406.267.65v5.895h3.339a.303.303 0 0 0 .304-.307V8.541a.31.31 0 0 0-.115-.239L10.19 3.155zM8.671 1.72a2.113 2.113 0 0 1 2.655 0l6.375 5.147c.504.407.798 1.024.798 1.676v8.062c0 .57-.224 1.115-.622 1.517a2.115 2.115 0 0 1-1.503.628h-4.25a.907.907 0 0 1-.644-.27.923.923 0 0 1-.267-.65v-5.894H8.786v5.895a.923.923 0 0 1-.267.65.906.906 0 0 1-.644.269h-4.25a2.115 2.115 0 0 1-1.503-.628 2.155 2.155 0 0 1-.622-1.517V8.541c0-.65.294-1.267.798-1.674L8.672 1.72z"
											fill="#00CCAA"></path>
                                    </svg>
								</div>
							</div>
							<span class="css-ekuvz3">홈</span>
						</div>
						<div class="GNB-menu__noti-container css-176b8zp">
							<h1 class="css-1ttw3p7">
								<strong class="visually-hidden">랠릿</strong>
								<svg viewBox="0 0 82 22" width="82" height="22" fill="none"
									xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd"
										clip-rule="evenodd" fill="#21252A"
										d="M0 12.198c0-5.413 4.348-9.802 9.71-9.802h5.683v4.066H9.711c-3.139 0-5.683 2.569-5.683 5.736 0 3.168 2.544 5.736 5.683 5.736 3.138 0 5.682-2.568 5.682-5.736V6.462h4.028v5.736c0 5.414-4.348 9.802-9.71 9.802C4.348 22 0 17.612 0 12.198zM25.176 21.129V3.703h8.308c3.396 0 6.15 2.78 6.15 6.208 0 2.445-1.4 4.56-3.437 5.572a3.73 3.73 0 0 0 3.043 1.58h.394v4.066h-.394c-3.146 0-5.98-1.915-7.18-4.85l-.066-.16h-2.79v5.01h-4.028zm4.028-13.36h4.28c1.172 0 2.122.96 2.122 2.142 0 1.183-.95 2.142-2.122 2.142h-4.28V7.769z">
                                    </path>
                                    <path fill-rule="evenodd"
										clip-rule="evenodd" fill="#21252A"
										d="M56.321 3.703V21.13h4.029V3.703H56.32zM62.507 21.129V3.703h4.028V21.13h-4.028zM72.721 5.736a2.024 2.024 0 0 0-2.014-2.033c-1.112 0-2.014.91-2.014 2.033V7.77h2.014c1.113 0 2.014-.91 2.014-2.033zM68.693 21.129V9.657h4.028v11.472h-4.028zM74.88 3.703v12.489c0 2.726 2.19 4.937 4.89 4.937H82v-4.066h-2.23a.867.867 0 0 1-.863-.871v-4.357H82V7.77h-3.093V3.703H74.88z">
                                    </path>
                                    <path fill-rule="evenodd"
										clip-rule="evenodd" fill="#21252A"
										d="M47.618 7.914c3.543 0 6.428 2.841 6.542 6.39h.004v6.825h-4.029v-.507a6.473 6.473 0 0 1-2.517.507c-3.615 0-6.546-2.958-6.546-6.607 0-3.65 2.93-6.608 6.546-6.608zm0 9.149c1.39 0 2.517-1.138 2.517-2.541 0-1.404-1.127-2.542-2.517-2.542S45.1 13.118 45.1 14.522c0 1.403 1.127 2.54 2.518 2.54z">
                                    </path>
                                    <path fill-rule="evenodd"
										clip-rule="evenodd" fill="#0CA"
										d="M19.53 4.574a2.277 2.277 0 0 0 2.265-2.287A2.276 2.276 0 0 0 19.53 0a2.277 2.277 0 0 0-2.265 2.287v2.287h2.265z">
                                    </path>
                                </svg>
							</h1>
						</div>
					</a>
					<div class="dropdownList__wrapper css-3fe575" id="posting">
						<a aria-label="탐색" href="/ex/jobPostList" class="css-avxbst">
							<div class="css-wodprq">
								<div class="GNB-menu__noti-container">
									<div class="rallit-icon  css-1sepp5i">
										<svg width="20" height="20" fill="none" viewBox="0 0 20 20"
											xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd"
												clip-rule="evenodd"
												d="M14.374 8.75a5.623 5.623 0 0 1-5.625 5.625A5.627 5.627 0 0 1 3.124 8.75a5.625 5.625 0 1 1 11.25 0zm-1.025 5.925a7.5 7.5 0 1 1 1.325-1.325l3.8 3.8a.938.938 0 1 1-1.325 1.325l-3.8-3.8z"
												fill="#a1aab2"></path>
                                        </svg>
									</div>
								</div>
								<span class="css-jk5git">탐색</span>
							</div>
							<div class="GNB-menu__noti-container css-176b8zp">
								<button type="button" class="css-4qldrf">채용 공고</button>
							</div>
						</a>
						<div class="dropdownList__container css-1gkmlwz" id="posting2">
							<div class="css-1395hwr">
								<div class="css-1n7ju9x">
									<div class="css-14ypdl9">
										<div class="css-1so5lt">
											<div class="css-1fdx6k3">
												<label class="css-1k185p7">직군</label>
												<ul class="css-1piurjj">
													<li class="css-494cde" id="Jobgroup1"><button
															type="button" name="직군 개발" class="css-184xd0e">개발</button></li>
													<li class="css-494cde" id="Jobgroup2"><button
															type="button" name="직군 게임개발" class="css-184xd0e">게임개발</button></li>
													<li class="css-494cde" id="Jobgroup3"><button
															type="button" name="직군 디자인" class="css-184xd0e">디자인</button></li>
													<li class="css-494cde" id="Jobgroup4"><button
															type="button" name="직군 기획" class="css-184xd0e">기획</button></li>
													<li class="css-494cde" id="Jobgroup5"><button
															type="button" name="직군 마케팅" class="css-184xd0e">마케팅</button></li>
													<li class="css-494cde" id="Jobgroup6"><button
															type="button" name="직군 경영/인사" class="css-184xd0e">경영/인사</button></li>
													<li class="css-494cde" id="Jobgroup7"><button
															type="button" name="직군 영업" class="css-184xd0e">영업</button></li>
													<li class="css-494cde" id="Jobgroup8"><button
															type="button" name="직군 엔지니어링" class="css-184xd0e">엔지니어링</button></li>
												</ul>
											</div>
											<div class="css-ziljwy">
												<label class="css-pwu5ys" id="a1">직무</label>
												<ul class="css-1piurjj">
													<p class="css-1kxn32n">직군을 선택해주세요</p>
												</ul>
												<ul class="css-1piurjj" id="posting3">
													<li class="css-1xupo39"><button type="button"
															name="직무 전체 선택됨" class="css-19bo4h0">전체</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 백엔드/서버 개발자" class="css-19bo4h0">백엔드/서버
															개발자</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 프론트엔드/웹퍼블리셔" class="css-19bo4h0">프론트엔드/웹퍼블리셔</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 SW 엔지니어" class="css-19bo4h0">SW 엔지니어</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 안드로이드 개발자" class="css-19bo4h0">안드로이드
															개발자</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 IOS 개발자" class="css-19bo4h0">IOS 개발자</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 크로스플랫폼 앱 개발자" class="css-19bo4h0">크로스플랫폼
															앱 개발자</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 데이터 엔지니어" class="css-19bo4h0">데이터 엔지니어</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 데이터 사이언티스트" class="css-19bo4h0">데이터
															사이언티스트</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 데이터 분석가" class="css-19bo4h0">데이터 분석가</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 머신러닝 엔지니어" class="css-19bo4h0">머신러닝
															엔지니어</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 DBA" class="css-19bo4h0">DBA</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 DevOps" class="css-19bo4h0">DevOps</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 시스템/네트워크 관리자" class="css-19bo4h0">시스템/네트워크
															관리자</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 QA/테스트엔지니어" class="css-19bo4h0">QA/테스트엔지니어</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 기술지원" class="css-19bo4h0">기술지원</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 보안 엔지니어" class="css-19bo4h0">보안 엔지니어</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 블록체인 엔지니어" class="css-19bo4h0">블록체인
															엔지니어</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 HW/임베디드 엔지니어" class="css-19bo4h0">HW/임베디드
															엔지니어</button></li>
													<li class="css-494cde"><button type="button"
															name="직무 애자일/스크럼 마스터" class="css-19bo4h0">애자일/스크럼
															마스터</button></li>
												</ul>
												<ul class="css-1piurjj" id="posting4">
													<li class="css-1xupo39"><button type="button"
															name="직무 전체 선택됨" class="css-19bo4h0">전체</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 게임 서버 개발자" class="css-19bo4h0">게임 서버
															개발자</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 게임 클라이언트 개발자" class="css-19bo4h0">게임
															클라이언트 개발자</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 게임 기획자" class="css-19bo4h0">게임 기획자</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 게임 그래픽 디자이너" class="css-19bo4h0">게임 그래픽
															디자이너</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 게임 아티스트" class="css-19bo4h0">게임 아티스트</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 모바일 게임 개발자" class="css-19bo4h0">모바일 게임
															개발자</button></li>
													<li class="css-494cde"><button type="button"
															name="직무 게임 운영자" class="css-19bo4h0">게임 운영자</button></li>
												</ul>
												<ul class="css-1piurjj" id="posting5">
													<li class="css-1xupo39"><button type="button"
															name="직무 전체 선택됨" class="css-19bo4h0">전체</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 프로덕트 디자이너" class="css-19bo4h0">프로덕트
															디자이너</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 웹/앱 디자이너" class="css-19bo4h0">웹/앱 디자이너</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 그래픽 디자이너" class="css-19bo4h0">그래픽 디자이너</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 BI/BX 디자이너" class="css-19bo4h0">BI/BX
															디자이너</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 광고 디자이너" class="css-19bo4h0">광고 디자이너</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 영상/모션 디자이너" class="css-19bo4h0">영상/모션
															디자이너</button></li>
													<li class="css-494cde"><button type="button"
															name="직무 운영 디자이너" class="css-19bo4h0">운영 디자이너</button></li>
												</ul>
												<ul class="css-1piurjj" id="posting6">
													<li class="css-1xupo39"><button type="button"
															name="직무 전체 선택됨" class="css-19bo4h0">전체</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 서비스 기획자" class="css-19bo4h0">서비스 기획자</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 PO/PM" class="css-19bo4h0">PO/PM</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 비즈니스 분석가" class="css-19bo4h0">비즈니스 분석가</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 사업개발/기획자" class="css-19bo4h0">사업개발/기획자</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 전략 기획자" class="css-19bo4h0">전략 기획자</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 해외 사업개발/기획자" class="css-19bo4h0">해외
															사업개발/기획자</button></li>
													<li class="css-494cde"><button type="button"
															name="직무 상품 기획자/MD" class="css-19bo4h0">상품
															기획자/MD</button></li>
												</ul>
												<ul class="css-1piurjj" id="posting7">
													<li class="css-1xupo39"><button type="button"
															name="직무 전체 선택됨" class="css-19bo4h0">전체</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 퍼포먼스 마케터" class="css-19bo4h0">퍼포먼스 마케터</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 콘텐츠 마케터" class="css-19bo4h0">콘텐츠 마케터</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 디지털 마케터" class="css-19bo4h0">디지털 마케터</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 마케팅 기획자" class="css-19bo4h0">마케팅 기획자</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 브랜드 마케터" class="css-19bo4h0">브랜드 마케터</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 광고 기획자" class="css-19bo4h0">광고 기획자</button></li>
													<li class="css-494cde"><button type="button"
															name="직무 CRM 전문가" class="css-19bo4h0">CRM 전문가</button></li>
												</ul>
												<ul class="css-1piurjj" id="posting8">
													<li class="css-1xupo39"><button type="button"
															name="직무 전체 선택됨" class="css-19bo4h0">전체</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 경영지원" class="css-19bo4h0">경영지원</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 회계/경리" class="css-19bo4h0">회계/경리</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 조직관리" class="css-19bo4h0">조직관리</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 정보보호 담당자" class="css-19bo4h0">정보보호 담당자</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 인사/평가" class="css-19bo4h0">인사/평가</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 교육" class="css-19bo4h0">교육</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 채용담당자" class="css-19bo4h0">채용담당자</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 서비스 운영" class="css-19bo4h0">서비스 운영</button></li>
													<li class="css-494cde"><button type="button"
															name="직무 CS 매니저" class="css-19bo4h0">CS 매니저</button></li>
												</ul>
												<ul class="css-1piurjj" id="posting9">
													<li class="css-1xupo39"><button type="button"
															name="직무 전체 선택됨" class="css-19bo4h0">전체</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 기업영업" class="css-19bo4h0">기업영업</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 영업 관리자" class="css-19bo4h0">영업 관리자</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 기술영업" class="css-19bo4h0">기술영업</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 솔루션 컨설턴트" class="css-19bo4h0">솔루션 컨설턴트</button></li>
													<li class="css-494cde"><button type="button"
															name="직무 세일즈" class="css-19bo4h0">세일즈</button></li>
												</ul>
												<ul class="css-1piurjj" id="posting10">
													<li class="css-1xupo39"><button type="button"
															name="직무 전체 선택됨" class="css-19bo4h0">전체</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 기계 엔지니어" class="css-19bo4h0">기계 엔지니어</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 전자 엔지니어" class="css-19bo4h0">전자 엔지니어</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 전기 엔지니어" class="css-19bo4h0">전기 엔지니어</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 로봇·자동화" class="css-19bo4h0">로봇·자동화</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 CAD·3D 설계자" class="css-19bo4h0">CAD·3D
															설계자</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 제품 엔지니어" class="css-19bo4h0">제품 엔지니어</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 제어 엔지니어" class="css-19bo4h0">제어 엔지니어</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 장비 엔지니어" class="css-19bo4h0">장비 엔지니어</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 전기기계 공학자" class="css-19bo4h0">전기기계 공학자</button></li>
													<li class="css-1xupo39"><button type="button"
															name="직무 설비 엔지니어" class="css-19bo4h0">설비 엔지니어</button></li>
													<li class="css-494cde"><button type="button"
															name="직무 공정 엔지니어" class="css-19bo4h0">공정 엔지니어</button></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div>
						<a aria-label="이력서" href="/ex/resume" id="resume"
							class="css-avxbst"> <script>
								document.querySelector("#resume")
										.addEventListener("click",
												function(event) {

													event.preventDefault();
													if(${user_autho == null}){
														$(".css-okq0lf").show();
													}else{
														alert('😔준비 중😔');
													}
													
												}, false);
							</script>

							<div class="css-wodprq">
								<div class="GNB-menu__noti-container">
									<div class="rallit-icon  css-1sepp5i">
										<svg width="20" height="20" viewBox="0 0 16 16" fill="none"
											xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd"
												clip-rule="evenodd"
												d="M4.10417 2.4C4.04339 2.4 3.9851 2.42458 3.94212 2.46834C3.89915 2.5121 3.875 2.57145 3.875 2.63333V13.3667C3.875 13.4955 3.97767 13.6 4.10417 13.6H11.8958C11.9566 13.6 12.0149 13.5755 12.0579 13.5317C12.1009 13.4879 12.125 13.4285 12.125 13.3667V6.6H9.60417C9.17871 6.6 8.77069 6.42792 8.46985 6.12161C8.16901 5.8153 8 5.39985 8 4.96667V2.4H4.10417ZM9.375 2.92267V4.96667C9.375 5.09547 9.47767 5.2 9.60417 5.2H11.6117L9.375 2.92267ZM2.5 2.63333C2.5 1.73173 3.21867 1 4.10417 1H8.76633C9.19167 1 9.59958 1.17173 9.90025 1.4788L13.0298 4.6652C13.3313 4.97133 13.5 5.38667 13.5 5.81973V13.3667C13.5 13.7998 13.331 14.2153 13.0301 14.5216C12.7293 14.8279 12.3213 15 11.8958 15H4.10417C3.67871 15 3.27069 14.8279 2.96985 14.5216C2.66901 14.2153 2.5 13.7998 2.5 13.3667V2.63333Z"
												fill="#a1aab2"></path>
                                        </svg>
									</div>
								</div>
								<span class="css-jk5git">이력서</span>
							</div>
							<div class="GNB-menu__noti-container css-176b8zp">
								<button type="button" class="css-4qldrf">이력서</button>
							</div>
						</a>
						<section class="css-okq0lf">
							<div role="banner" class="css-757x7s"></div>
							<div tabindex="0" class="css-5uom7f">
								<header class="css-1xet2e3">
									<h2 class="css-fstzjo">로그인/회원가입</h2>
									<button aria-label="모달 닫기" type="button" class="css-z9uv3y"
									onclick="location.href='/ex/main'">
										<svg width="20" height="20" fill="none" viewBox="0 0 16 16"
											xmlns="http://www.w3.org/2000/svg">
						<path fill-rule="evenodd" clip-rule="evenodd"
												d="M2.768 2.79a.916.916 0 0 1 1.293 0l3.927 3.92 3.928-3.92a.916.916 0 0 1 1.505.994.913.913 0 0 1-.212.297L9.28 8l3.928 3.92a.914.914 0 0 1 .023 1.313.915.915 0 0 1-1.316-.024L7.988 9.29l-3.927 3.92a.916.916 0 0 1-1.539-.652.912.912 0 0 1 .246-.639L6.695 8 2.768 4.08a.912.912 0 0 1 0-1.29z"
												fill="#535961"></path></svg>
									</button>
								</header>
								<div class="css-4q4s82">
									<div>
										<p class="css-wlnobz">랠릿에서 원하는 회사와 채용 공고를 만나 보세요!</p>
										<p class="css-wlnobz">인프런 계정이 있다면 바로 시작할 수 있어요.</p>
										<div class="css-1nrcks9">
											<a
												href="main/login"><button
													class="css-19a2zyv" type="button">회원가입</button></a><a
												href="main/register"><button
													class="css-1bdr6y4" type="button">로그인</button></a>
										</div>
									</div>
								</div>
							</div>
						</section>
					</div>
				</div>
				<div class="right-GNB css-5by9vu">
					<div data-error="false" class="css-1xxao48">
						<label>
							<div class=" header__search-wrapper css-1u763tv">
								<input type="text" placeholder="회사/채용 공고 검색" spellcheck="false"
									data-testid="input" value="" class="css-10xzrfw">
								<button type="button" aria-label="search" class="css-1gerhyj">
									<svg width="16" height="16" fill="none" viewBox="0 0 20 20"
										xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd"
											clip-rule="evenodd"
											d="M14.374 8.75a5.623 5.623 0 0 1-5.625 5.625A5.627 5.627 0 0 1 3.124 8.75a5.625 5.625 0 1 1 11.25 0zm-1.025 5.925a7.5 7.5 0 1 1 1.325-1.325l3.8 3.8a.938.938 0 1 1-1.325 1.325l-3.8-3.8z"
											fill="#535961"></path>
                                    </svg>
								</button>
							</div>
						</label>
					</div>
					<c:choose>
									<c:when test="${user_autho == 'ROLE_ADMIN'}">
									<p style="font-weight:bolder; margin-right:12px; font-size:8pt;">관리자</p>
									</c:when>
									<c:when test="${user_autho == 'ROLE_COMPANY'}">
									<p style="font-weight:bolder; margin-right:12px; font-size:8pt;">기업 회원</p>
									</c:when>
									<c:when test="${user_autho == 'ROLE_SEEKER'}">
									<p style="font-weight:bolder; margin-right:12px; font-size:8pt;">구직 회원</p>
									</c:when>
									<c:otherwise>
					<div class="left-GNB css-p1vanc">
						
									<sec:authorize access="isAnonymous()">
							<div class="css-fi5x0a">
								<a href="main/login" class="css-avxbst">
									<div class="css-wodprq">
										<div class="GNB-menu__noti-container"></div>
										<span class="css-jk5git"></span>
									</div>
									<div class="GNB-menu__noti-container css-176b8zp">
										<button type="button" class="css-4qldrf">로그인</button>
									</div>
								</a>
							</div>
						</sec:authorize>

						<sec:authorize access="isAnonymous()">
							<div class="css-fi5x0a">
								<a href="main/register" class="css-avxbst">
									<div class="css-wodprq">
										<div class="GNB-menu__noti-container"></div>
										<span class="css-jk5git"></span>
									</div>
									<div class="GNB-menu__noti-container css-176b8zp">
										<button type="button" class="css-4qldrf">회원가입</button>
									</div>
								</a>
							</div>
						</sec:authorize>
								
						
					</div>
						</c:otherwise>
									</c:choose>


					<!-- -------------------------MY 랠릿 드롭다운 메뉴 버튼 ------------------------ -->



					<sec:authorize access="isAuthenticated()">
						<div class="dropdown">
							<button onclick="myFunction()" class="dropbtn">MY 랠릿</button>
							<div id="myDropdown" class="dropdown-content">
								<c:choose>
									<c:when test="${user_autho == 'ROLE_ADMIN'}">
										<a href="/ex/admin/user">관리자 페이지</a>
									</c:when>
									<c:otherwise>
										<a href="/ex/info">내 정보</a>
									</c:otherwise>
								</c:choose>


								<form class="1"
									action="${pageContext.request.contextPath}/main/logout"
									method="POST">
									<input style="height: 44px;" class="1" type="submit"
										value="로그아웃" id="logout">
									<script>
										document.getElementById("logout")
												.addEventListener('click',
														logout);
										function logout() {
											alert("로그아웃 되었습니다.")

										}
									</script>
								</form>
							</div>
						</div>
					</sec:authorize>



					<!--------------------------------------------------------------------------- -->

				</div>
			</nav>

			<div class="css-1ljwjjg"></div>
		</header>