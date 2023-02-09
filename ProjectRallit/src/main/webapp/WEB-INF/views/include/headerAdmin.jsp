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
<script src="https://code.jquery.com/jquery.min.js"></script>
<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<meta charset="utf-8">
<title>휴먼 프로젝트 - 랠릿 Admin</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0, user-scalable=yes">
<meta name="thumbnail" content="https://cdn.rallit.com/image/meta-image.png"> <!--타이틀 아이콘-->

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
								</div> <span>Rallit</span>
						</a></li>
					</ul>
				</div>
			</div>
		</section>
		<header class="css-1gzra86" style="background-color: #485653;">
			<nav class="css-o8aacz">
				<div class="left-GNB css-p1vanc">
					<a aria-label="홈" href="/ex/admin/user" class="css-avxbst">
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
						<div class="GNB-menu__noti-container css-176b8zp"  style="float:left;">
							<h1 class="css-1ttw3p7">
								<strong class="visually-hidden">랠릿</strong>
								<svg viewBox="0 0 82 22" width="82" height="22" fill="none"
									xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd"
										clip-rule="evenodd" fill="#fff"
										d="M0 12.198c0-5.413 4.348-9.802 9.71-9.802h5.683v4.066H9.711c-3.139 0-5.683 2.569-5.683 5.736 0 3.168 2.544 5.736 5.683 5.736 3.138 0 5.682-2.568 5.682-5.736V6.462h4.028v5.736c0 5.414-4.348 9.802-9.71 9.802C4.348 22 0 17.612 0 12.198zM25.176 21.129V3.703h8.308c3.396 0 6.15 2.78 6.15 6.208 0 2.445-1.4 4.56-3.437 5.572a3.73 3.73 0 0 0 3.043 1.58h.394v4.066h-.394c-3.146 0-5.98-1.915-7.18-4.85l-.066-.16h-2.79v5.01h-4.028zm4.028-13.36h4.28c1.172 0 2.122.96 2.122 2.142 0 1.183-.95 2.142-2.122 2.142h-4.28V7.769z">
                                    </path>
                                    <path fill-rule="evenodd"
										clip-rule="evenodd" fill="#fff"
										d="M56.321 3.703V21.13h4.029V3.703H56.32zM62.507 21.129V3.703h4.028V21.13h-4.028zM72.721 5.736a2.024 2.024 0 0 0-2.014-2.033c-1.112 0-2.014.91-2.014 2.033V7.77h2.014c1.113 0 2.014-.91 2.014-2.033zM68.693 21.129V9.657h4.028v11.472h-4.028zM74.88 3.703v12.489c0 2.726 2.19 4.937 4.89 4.937H82v-4.066h-2.23a.867.867 0 0 1-.863-.871v-4.357H82V7.77h-3.093V3.703H74.88z">
                                    </path>
                                    <path fill-rule="evenodd"
										clip-rule="evenodd" fill="#fff"
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
					<a style="height:30px;" href="/ex/admin/user">
				<div style="height:30px;">
				<p style="color:#fff; ; font-weight:bold; font-size:17pt; top:-23px; left:-10px; position:relative;" >ADMIN SYSTEM</p>
				</div>
			</a>
				</div>
				<div class="right-GNB css-5by9vu">

		


					<!-- -------------------------MY 랠릿 드롭다운 메뉴 버튼 ------------------------ -->



					<sec:authorize access="isAuthenticated()">
						<div class="dropdown">
							<button onclick="myFunction()" class="dropbtn" style="background-color:#fff; color:black;">MY 랠릿</button>
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
									<input style="height:44px;" class="1" type="submit" value="로그아웃" id="logout">
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