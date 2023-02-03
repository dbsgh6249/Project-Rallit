<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <link href="${pageContext.request.contextPath}/resources/css/main.css"
      rel="stylesheet" type="text/css">
    <script src="https://code.jquery.com/jquery.min.js"></script>
    <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
   
    <script type="text/javascript" async=""
        src="https://www.googletagmanager.com/gtag/js?id=G-QL4WB566QC&amp;l=dataLayer&amp;cx=c"></script>
    <script src="https://connect.facebook.net/signals/config/663413858428656?v=2.9.95&amp;r=stable" async=""></script>
    <script async="" src="https://connect.facebook.net/en_US/fbevents.js"></script>
    <script async="" src="https://www.googletagmanager.com/gtm.js?id=GTM-WGJ7X69"></script>
    <script>(function (w, d, s, l, i) {
            w[l] = w[l] || []; w[l].push({
                'gtm.start':
                    new Date().getTime(), event: 'gtm.js'
            }); var f = d.getElementsByTagName(s)[0],
                j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : ''; j.async = true; j.src =
                    'https://www.googletagmanager.com/gtm.js?id=' + i + dl; f.parentNode.insertBefore(j, f);
        })(window, document, 'script', 'dataLayer', 'GTM-WGJ7X69');</script>
    <meta charset="utf-8">
        <title>휴먼 프로젝트 - 랠릿</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0, user-scalable=yes">
    <meta name="thumbnail" content="https://cdn.rallit.com/image/meta-image.png">
    <meta property="og:type" content="website">
    <meta property="og:url" content="https://www.rallit.com/">
    <meta property="og:image" content="https://cdn.rallit.com/image/meta-image.png">
    <meta property="og:description" content="업계에서 검증된 회사들의 채용 채용 공고를 랠릿에서 만나보세요">
    <meta property="og:site_name" content="랠릿">
    <meta property="og:locale" content="ko_KR">
    <meta property="og:image:width" content="1200">
    <meta property="og:image:height" content="630">
   
    <meta name="naver-site-verification" content="135ce61c0b836150b85556ca84fd83229e12ab67">
    <meta name="theme-color" content="#ffffff">
    <link rel="icon" href="https://cdn.rallit.com/image/favicon.ico" sizes="any">
    <link rel="icon" href="https://cdn.rallit.com/image/favicon.svg" type="image/svg+xml">
    <link rel="mask-icon" href="https://cdn.rallit.com/image/favicon.svg" color="#000000">
    <link rel="apple-touch-icon" href="https://cdn.rallit.com/image/favicon-180x180.png">
    <script src="https://cdn.rallit.com/js/postcode.v2.js" defer=""></script>
    <script src="https://cdn.rallit.com/js/kakao.v1.14.0.min.js" defer=""></script>
    <meta name="next-head-count" content="38">
      
 	<script>
/* 	
    	$(document).ready(function(){
    		$("#posting").hover(
    				function(){
    					$("#posting2").stop().slideDown();
    				},
    				function(){
    					
    				});	
    		$("#posting2").hover(
    				function(){
    					
    				},
    				function(){
    					$("#posting2").stop().slideUp();
    				});	
    	});   	 */
    	
    	$(document).ready(function(){
    		$("#posting").hover(
    				function(){
    					$("#posting2").stop().slideDown();
    				},
    				function(){
    					$("#posting2").stop().slideUp();
    				});
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
                                <div class="rallit-icon  css-5wonz9"><svg width="20" height="20" viewBox="0 0 20 20"
                                        fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path
                                            d="M16.4702 7.30208C16.1056 6.46354 15.6135 5.71615 14.9937 5.07813C14.3558 4.4401 13.6267 3.92969 12.7882 3.5651C11.9497 3.20052 11.0383 3 10.0723 3C9.12446 3 8.21308 3.16406 7.35638 3.52865C6.49969 3.89323 5.75236 4.38542 5.09617 5.00521C4.43998 5.64323 3.92961 6.3724 3.56505 7.21094C3.2005 8.04948 3 8.96094 3 9.92708C3 10.875 3.16405 11.7865 3.5286 12.6432C3.89315 13.5 4.38529 14.2474 5.02326 14.9036C5.66122 15.5599 6.40855 16.0703 7.24702 16.4349C8.10371 16.7995 8.99686 17 9.96292 17H16.9988V10.0365C17.017 9.07031 16.8347 8.15885 16.4702 7.30208ZM7.79384 15.1406C7.11943 14.849 6.51792 14.4297 6.00755 13.9193C5.49717 13.3906 5.09617 12.7891 4.80453 12.1146C4.51289 11.4219 4.38529 10.7109 4.38529 9.94531C4.38529 9.16146 4.54934 8.43229 4.84098 7.75781C5.13262 7.08333 5.55186 6.5 6.06223 5.98958C6.59083 5.47917 7.19234 5.09635 7.86676 4.80469C8.5594 4.51302 9.27028 4.38542 10.0358 4.38542C10.8196 4.38542 11.5487 4.54948 12.2231 4.84115C12.8976 5.13281 13.4808 5.53385 13.9912 6.0625C14.5016 6.57292 14.8844 7.17448 15.176 7.84896C15.4676 8.52344 15.5952 9.25261 15.5952 10.0365V14.7396L10.5644 9.65365L11.6763 6.59115C11.8039 6.26302 11.6216 5.89844 11.2935 5.77083C10.9654 5.64323 10.6009 5.82552 10.4733 6.15365L9.58015 8.63281L8.01258 7.04688C7.75739 6.79167 7.35638 6.79167 7.11943 7.04688C6.86424 7.30208 6.86424 7.70313 7.11943 7.9401L10.9472 11.8594H8.17662C7.8303 11.8594 7.53866 12.151 7.53866 12.4974C7.53866 12.8438 7.8303 13.1354 8.17662 13.1354H12.1502C12.1685 13.1354 12.1867 13.1354 12.1867 13.1354L14.6656 15.6146H9.96292C9.17914 15.5964 8.48649 15.4505 7.79384 15.1406Z"
                                            fill="#878E98"></path>
                                    </svg></div><span>교육</span>
                            </a></li>
                        <li><a href="/ex/" class="active">
                                <div class="rallit-icon  css-5wonz9"><svg width="20" height="20" viewBox="0 0 20 20"
                                        fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd" clip-rule="evenodd"
                                            d="M3 10.7626C3 7.3177 5.76662 4.52502 9.17943 4.52502H12.7955V7.11248H9.17943C7.1823 7.11248 5.56332 8.74672 5.56332 10.7626C5.56332 12.7786 7.1823 14.4128 9.17943 14.4128C11.1765 14.4128 12.7955 12.7786 12.7955 10.7626V7.11248H15.3589V10.7626C15.3589 14.2076 12.5922 17.0003 9.17943 17.0003C5.76662 17.0003 3 14.2076 3 10.7626Z"
                                            fill="#21252A"></path>
                                        <path
                                            d="M15.4272 5.91089C16.2235 5.91089 16.8691 5.25927 16.8691 4.45545C16.8691 3.65163 16.2235 3 15.4272 3C14.6309 3 13.9854 3.65163 13.9854 4.45545V5.91089H15.4272Z"
                                            fill="#00CCAA"></path>
                                    </svg></div><span>채용</span>
                            </a></li>
                    </ul><a href="jobSeeker/login"> <!--기업서비스 로그인 링크-->
                        <p class="css-11cix4b">기업 서비스</p>
                    </a>
                </div>
            </div>
        </section>
        <header class="css-1gzra86">
            <nav class="css-o8aacz">
                <div class="left-GNB css-p1vanc"><a aria-label="홈" href="/ex/" class="css-avxbst">
                        <div class="css-wodprq">
                            <div class="GNB-menu__noti-container">
                                <div class="rallit-icon  css-1sepp5i"><svg width="20" height="20" fill="none"
                                        xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd" clip-rule="evenodd"
                                            d="M10.19 3.155a.302.302 0 0 0-.38 0L3.437 8.302a.306.306 0 0 0-.115.24v8.063c0 .17.136.307.304.307h3.34v-5.895c0-.244.095-.478.266-.65a.906.906 0 0 1 .644-.27h4.25c.242 0 .473.098.644.27.17.172.267.406.267.65v5.895h3.339a.303.303 0 0 0 .304-.307V8.541a.31.31 0 0 0-.115-.239L10.19 3.155zM8.671 1.72a2.113 2.113 0 0 1 2.655 0l6.375 5.147c.504.407.798 1.024.798 1.676v8.062c0 .57-.224 1.115-.622 1.517a2.115 2.115 0 0 1-1.503.628h-4.25a.907.907 0 0 1-.644-.27.923.923 0 0 1-.267-.65v-5.894H8.786v5.895a.923.923 0 0 1-.267.65.906.906 0 0 1-.644.269h-4.25a2.115 2.115 0 0 1-1.503-.628 2.155 2.155 0 0 1-.622-1.517V8.541c0-.65.294-1.267.798-1.674L8.672 1.72z"
                                            fill="#00CCAA"></path>
                                    </svg></div>
                            </div><span class="css-ekuvz3">홈</span>
                        </div>
                        <div class="GNB-menu__noti-container css-176b8zp">
                            <h1 class="css-1ttw3p7"><strong class="visually-hidden">랠릿</strong><svg viewBox="0 0 82 22"
                                    width="82" height="22" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" clip-rule="evenodd" fill="#21252A"
                                        d="M0 12.198c0-5.413 4.348-9.802 9.71-9.802h5.683v4.066H9.711c-3.139 0-5.683 2.569-5.683 5.736 0 3.168 2.544 5.736 5.683 5.736 3.138 0 5.682-2.568 5.682-5.736V6.462h4.028v5.736c0 5.414-4.348 9.802-9.71 9.802C4.348 22 0 17.612 0 12.198zM25.176 21.129V3.703h8.308c3.396 0 6.15 2.78 6.15 6.208 0 2.445-1.4 4.56-3.437 5.572a3.73 3.73 0 0 0 3.043 1.58h.394v4.066h-.394c-3.146 0-5.98-1.915-7.18-4.85l-.066-.16h-2.79v5.01h-4.028zm4.028-13.36h4.28c1.172 0 2.122.96 2.122 2.142 0 1.183-.95 2.142-2.122 2.142h-4.28V7.769z">
                                    </path>
                                    <path fill-rule="evenodd" clip-rule="evenodd" fill="#21252A"
                                        d="M56.321 3.703V21.13h4.029V3.703H56.32zM62.507 21.129V3.703h4.028V21.13h-4.028zM72.721 5.736a2.024 2.024 0 0 0-2.014-2.033c-1.112 0-2.014.91-2.014 2.033V7.77h2.014c1.113 0 2.014-.91 2.014-2.033zM68.693 21.129V9.657h4.028v11.472h-4.028zM74.88 3.703v12.489c0 2.726 2.19 4.937 4.89 4.937H82v-4.066h-2.23a.867.867 0 0 1-.863-.871v-4.357H82V7.77h-3.093V3.703H74.88z">
                                    </path>
                                    <path fill-rule="evenodd" clip-rule="evenodd" fill="#21252A"
                                        d="M47.618 7.914c3.543 0 6.428 2.841 6.542 6.39h.004v6.825h-4.029v-.507a6.473 6.473 0 0 1-2.517.507c-3.615 0-6.546-2.958-6.546-6.607 0-3.65 2.93-6.608 6.546-6.608zm0 9.149c1.39 0 2.517-1.138 2.517-2.541 0-1.404-1.127-2.542-2.517-2.542S45.1 13.118 45.1 14.522c0 1.403 1.127 2.54 2.518 2.54z">
                                    </path>
                                    <path fill-rule="evenodd" clip-rule="evenodd" fill="#0CA"
                                        d="M19.53 4.574a2.277 2.277 0 0 0 2.265-2.287A2.276 2.276 0 0 0 19.53 0a2.277 2.277 0 0 0-2.265 2.287v2.287h2.265z">
                                    </path>
                                </svg></h1>
                        </div>
                    </a>
                    <div class="dropdownList__wrapper css-3fe575" id="posting"><a aria-label="탐색" href="/ex/jps"
                            class="css-avxbst">
                            <div class="css-wodprq">
                                <div class="GNB-menu__noti-container">
                                    <div class="rallit-icon  css-1sepp5i"><svg width="20" height="20" fill="none"
                                            viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" clip-rule="evenodd"
                                                d="M14.374 8.75a5.623 5.623 0 0 1-5.625 5.625A5.627 5.627 0 0 1 3.124 8.75a5.625 5.625 0 1 1 11.25 0zm-1.025 5.925a7.5 7.5 0 1 1 1.325-1.325l3.8 3.8a.938.938 0 1 1-1.325 1.325l-3.8-3.8z"
                                                fill="#a1aab2"></path>
                                        </svg></div>
                                </div><span class="css-jk5git">탐색</span>
                            </div>
                            <div class="GNB-menu__noti-container css-176b8zp">
                            <button type="button" class="css-4qldrf">채용 공고</button></div>
                        </a>
                        <div class="dropdownList__container css-1gkmlwz" id="posting2">
                            <div class="css-1395hwr">
                                <div class="css-1n7ju9x">
                                    <div class="css-14ypdl9">
                                        <div class="css-1so5lt">
                                            <div class="css-1fdx6k3"><label class="css-1k185p7">직군</label>
                                                <ul class="css-1piurjj">
                                                    <li class="css-494cde"><button type="button" name="직군 개발"
                                                            class="css-184xd0e">개발</button></li>
                                                    <li class="css-494cde"><button type="button" name="직군 게임개발"
                                                            class="css-184xd0e">게임개발</button></li>
                                                    <li class="css-494cde"><button type="button" name="직군 디자인"
                                                            class="css-184xd0e">디자인</button></li>
                                                    <li class="css-494cde"><button type="button" name="직군 기획"
                                                            class="css-184xd0e">기획</button></li>
                                                    <li class="css-494cde"><button type="button" name="직군 마케팅"
                                                            class="css-184xd0e">마케팅</button></li>
                                                    <li class="css-494cde"><button type="button" name="직군 경영/인사"
                                                            class="css-184xd0e">경영/인사</button></li>
                                                    <li class="css-494cde"><button type="button" name="직군 영업"
                                                            class="css-184xd0e">영업</button></li>
                                                    <li class="css-494cde"><button type="button" name="직군 엔지니어링"
                                                            class="css-184xd0e">엔지니어링</button></li>
                                                </ul>
                                            </div>
                                            <div class="css-ziljwy"><label class="css-pwu5ys">직무</label>
                                                <ul class="css-1piurjj">
                                                    <p class="css-1kxn32n">직군을 선택해주세요</p>
													<li class="css-494cde"><button type="button"
															name="직군 개발" class="css-184xd0e">개발</button></li>
													<li class="css-494cde"><button type="button"
															name="직군 게임개발" class="css-184xd0e">게임개발</button></li>
													<li class="css-494cde"><button type="button"
															name="직군 디자인" class="css-184xd0e">디자인</button></li>
													<li class="css-494cde"><button type="button"
															name="직군 기획" class="css-184xd0e">기획</button></li>
													<li class="css-494cde"><button type="button"
															name="직군 마케팅" class="css-184xd0e">마케팅</button></li>
													<li class="css-494cde"><button type="button"
															name="직군 경영/인사" class="css-184xd0e">경영/인사</button></li>
													<li class="css-494cde"><button type="button"
															name="직군 영업" class="css-184xd0e">영업</button></li>
													<li class="css-494cde"><button type="button"
															name="직군 엔지니어링" class="css-184xd0e">엔지니어링</button></li>
												</ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div><a aria-label="이력서" href="https://i.ytimg.com/vi/5rCcqk2QxrM/maxresdefault.jpg" class="css-avxbst">
                            <div class="css-wodprq">
                                <div class="GNB-menu__noti-container">
                                    <div class="rallit-icon  css-1sepp5i"><svg width="20" height="20"
                                            viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" clip-rule="evenodd"
                                                d="M4.10417 2.4C4.04339 2.4 3.9851 2.42458 3.94212 2.46834C3.89915 2.5121 3.875 2.57145 3.875 2.63333V13.3667C3.875 13.4955 3.97767 13.6 4.10417 13.6H11.8958C11.9566 13.6 12.0149 13.5755 12.0579 13.5317C12.1009 13.4879 12.125 13.4285 12.125 13.3667V6.6H9.60417C9.17871 6.6 8.77069 6.42792 8.46985 6.12161C8.16901 5.8153 8 5.39985 8 4.96667V2.4H4.10417ZM9.375 2.92267V4.96667C9.375 5.09547 9.47767 5.2 9.60417 5.2H11.6117L9.375 2.92267ZM2.5 2.63333C2.5 1.73173 3.21867 1 4.10417 1H8.76633C9.19167 1 9.59958 1.17173 9.90025 1.4788L13.0298 4.6652C13.3313 4.97133 13.5 5.38667 13.5 5.81973V13.3667C13.5 13.7998 13.331 14.2153 13.0301 14.5216C12.7293 14.8279 12.3213 15 11.8958 15H4.10417C3.67871 15 3.27069 14.8279 2.96985 14.5216C2.66901 14.2153 2.5 13.7998 2.5 13.3667V2.63333Z"
                                                fill="#a1aab2"></path>
                                        </svg></div>
                                </div><span class="css-jk5git">이력서</span>
                            </div>
                            <div class="GNB-menu__noti-container css-176b8zp"><button type="button"
                                    class="css-4qldrf">이력서</button></div>
                        </a></div>
                </div>
                <div class="right-GNB css-5by9vu">
                    <div data-error="false" class="css-1xxao48"><label>
                            <div class=" header__search-wrapper css-1u763tv"><input type="text"
                                    placeholder="회사/채용 공고 검색" spellcheck="false" data-testid="input" value=""
                                    class="css-10xzrfw"><button type="button" aria-label="search"
                                    class="css-1gerhyj"><svg width="16" height="16" fill="none" viewBox="0 0 20 20"
                                        xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd" clip-rule="evenodd"
                                            d="M14.374 8.75a5.623 5.623 0 0 1-5.625 5.625A5.627 5.627 0 0 1 3.124 8.75a5.625 5.625 0 1 1 11.25 0zm-1.025 5.925a7.5 7.5 0 1 1 1.325-1.325l3.8 3.8a.938.938 0 1 1-1.325 1.325l-3.8-3.8z"
                                            fill="#535961"></path>
                                    </svg></button></div>
                        </label></div>
                <div class="left-GNB css-p1vanc">        
            <sec:authorize access="isAnonymous()">
                    <div class="css-fi5x0a"><a
                            href="main/login"
                            class="css-avxbst">
                            <div class="css-wodprq">
                                <div class="GNB-menu__noti-container"></div><span class="css-jk5git"></span>
                            </div>
                            <div class="GNB-menu__noti-container css-176b8zp"><button type="button"
                                    class="css-4qldrf">로그인</button></div>
                        </a></div></sec:authorize>
                     
                   <sec:authorize access="isAnonymous()">    
                    <div class="css-fi5x0a"><a
                            href="main/register"
                            class="css-avxbst">
                            <div class="css-wodprq">
                                <div class="GNB-menu__noti-container"></div><span class="css-jk5git"></span>
                            </div>
                            <div class="GNB-menu__noti-container css-176b8zp"><button type="button"
                                    class="css-4qldrf">회원가입</button></div>
                        </a></div>    
                   </sec:authorize>
                   </div> 
  
          
          <!-- -------------------------MY 랠릿 드롭다운 메뉴 버튼 ------------------------ -->
          
          
          
           <sec:authorize access="isAuthenticated()">
                      <div class="dropdown">
                        <button onclick="myFunction()" class="dropbtn">MY 랠릿</button>
                        <div id="myDropdown" class="dropdown-content">
                          <a href="#">내 정보</a>
                          <form class="1" action="${pageContext.request.contextPath}/main/logout" method="POST">
                     	<input class="1" type="submit" value="로그아웃">
                     </form>
                        </div>
                      </div>      
                   </sec:authorize>
                   
                   
                   
         <!-------------------------------------------------------------------------- -->
         
         
         
                </div>
            </nav>
 
            <div class="css-1ljwjjg"></div>
        </header>
        <main class="css-ac13em">
            <h1 class="css-8mcuh1">랠릿 메인페이지</h1>
            <section class="css-14c50mj">
                <div class="css-1yposw6">
                    <div style="z-index:2" 
                        class="swiper swiper-initialized swiper-horizontal swiper-pointer-events swiper-backface-hidden">
                        <div class="swiper-scrollbar"></div>
                        <div class="swiper-wrapper"
                            style="transition-duration: 0ms; transform: translate3d(-1084px, 0px, 0px);">
                            <div class="swiper-slide swiper-slide-duplicate swiper-slide-prev"
                                data-swiper-slide-index="5" style="width: 1084px;"><a
                                    href="https://www.inflearn.com/roadmaps/634">
                                    <figure class="css-176lt66"><img
                                            data-src="https://cdn.rallit.com/image/2023-01-19/TIPgmaWdeb983SqKVBdat.png"
                                            alt="게임듀오 로드맵" sizes="1084px"
                                            srcset="https://cdn.rallit.com/image/2023-01-19/TIPgmaWdeb983SqKVBdat.png?w=16 16w, https://cdn.rallit.com/image/2023-01-19/TIPgmaWdeb983SqKVBdat.png?w=32 32w, https://cdn.rallit.com/image/2023-01-19/TIPgmaWdeb983SqKVBdat.png?w=48 48w, https://cdn.rallit.com/image/2023-01-19/TIPgmaWdeb983SqKVBdat.png?w=64 64w, https://cdn.rallit.com/image/2023-01-19/TIPgmaWdeb983SqKVBdat.png?w=96 96w, https://cdn.rallit.com/image/2023-01-19/TIPgmaWdeb983SqKVBdat.png?w=128 128w, https://cdn.rallit.com/image/2023-01-19/TIPgmaWdeb983SqKVBdat.png?w=256 256w, https://cdn.rallit.com/image/2023-01-19/TIPgmaWdeb983SqKVBdat.png?w=384 384w, https://cdn.rallit.com/image/2023-01-19/TIPgmaWdeb983SqKVBdat.png?w=640 640w, https://cdn.rallit.com/image/2023-01-19/TIPgmaWdeb983SqKVBdat.png?w=750 750w, https://cdn.rallit.com/image/2023-01-19/TIPgmaWdeb983SqKVBdat.png?w=828 828w, https://cdn.rallit.com/image/2023-01-19/TIPgmaWdeb983SqKVBdat.png?w=1080 1080w, https://cdn.rallit.com/image/2023-01-19/TIPgmaWdeb983SqKVBdat.png?w=1084 1200w, https://cdn.rallit.com/image/2023-01-19/TIPgmaWdeb983SqKVBdat.png?w=1084 1920w, https://cdn.rallit.com/image/2023-01-19/TIPgmaWdeb983SqKVBdat.png?w=1084 2048w, https://cdn.rallit.com/image/2023-01-19/TIPgmaWdeb983SqKVBdat.png?w=1084 3840w"
                                            src="https://cdn.rallit.com/image/2023-01-19/TIPgmaWdeb983SqKVBdat.png?w=1084"
                                            decoding="async" data-nimg="future-fill" class="swiper-lazy" loading="lazy"
                                            style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent">
                                    </figure>
                                </a></div>
                            <div class="swiper-slide swiper-slide-active" data-swiper-slide-index="0"
                                style="width: 1084px;"><a
                                    href="https://www.inflearn.com/tag-curation/tag/rallit-newresume-230119?utm_source=rallit&amp;utm_medium=mainbanner&amp;utm_campaign=traffic_event_newresume&amp;utm_content=&amp;utm_term=20230119">
                                    <figure class="css-1eg6wcz"><img alt="랠릿 이력서 이벤트 " sizes="1084px"
                                            srcset="https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=16 16w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=32 32w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=48 48w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=64 64w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=96 96w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=128 128w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=256 256w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=384 384w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=640 640w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=750 750w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=828 828w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=1080 1080w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=1084 1200w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=1084 1920w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=1084 2048w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=1084 3840w"
                                            src="https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif"
                                            decoding="async" data-nimg="future-fill"
                                            class="swiper-lazy swiper-lazy-loaded"
                                            style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent">
                                    </figure>
                                </a></div>
                            <div class="swiper-slide swiper-slide-next" data-swiper-slide-index="1"
                                style="width: 1084px;"><a href="https://www.rallit.com/events/gaebal-badak">
                                    <figure class="css-176lt66"><img
                                            data-src="https://cdn.rallit.com/image/2023-01-26/N5N3NWJ0Lk0SPEPg-VOqS.png"
                                            alt="개발바닥이력서 이벤트 (02.01.수 까지)" sizes="1084px"
                                            srcset="https://cdn.rallit.com/image/2023-01-26/N5N3NWJ0Lk0SPEPg-VOqS.png?w=16 16w, https://cdn.rallit.com/image/2023-01-26/N5N3NWJ0Lk0SPEPg-VOqS.png?w=32 32w, https://cdn.rallit.com/image/2023-01-26/N5N3NWJ0Lk0SPEPg-VOqS.png?w=48 48w, https://cdn.rallit.com/image/2023-01-26/N5N3NWJ0Lk0SPEPg-VOqS.png?w=64 64w, https://cdn.rallit.com/image/2023-01-26/N5N3NWJ0Lk0SPEPg-VOqS.png?w=96 96w, https://cdn.rallit.com/image/2023-01-26/N5N3NWJ0Lk0SPEPg-VOqS.png?w=128 128w, https://cdn.rallit.com/image/2023-01-26/N5N3NWJ0Lk0SPEPg-VOqS.png?w=256 256w, https://cdn.rallit.com/image/2023-01-26/N5N3NWJ0Lk0SPEPg-VOqS.png?w=384 384w, https://cdn.rallit.com/image/2023-01-26/N5N3NWJ0Lk0SPEPg-VOqS.png?w=640 640w, https://cdn.rallit.com/image/2023-01-26/N5N3NWJ0Lk0SPEPg-VOqS.png?w=750 750w, https://cdn.rallit.com/image/2023-01-26/N5N3NWJ0Lk0SPEPg-VOqS.png?w=828 828w, https://cdn.rallit.com/image/2023-01-26/N5N3NWJ0Lk0SPEPg-VOqS.png?w=1080 1080w, https://cdn.rallit.com/image/2023-01-26/N5N3NWJ0Lk0SPEPg-VOqS.png?w=1084 1200w, https://cdn.rallit.com/image/2023-01-26/N5N3NWJ0Lk0SPEPg-VOqS.png?w=1084 1920w, https://cdn.rallit.com/image/2023-01-26/N5N3NWJ0Lk0SPEPg-VOqS.png?w=1084 2048w, https://cdn.rallit.com/image/2023-01-26/N5N3NWJ0Lk0SPEPg-VOqS.png?w=1084 3840w"
                                            src="https://cdn.rallit.com/image/2023-01-26/N5N3NWJ0Lk0SPEPg-VOqS.png?w=1084"
                                            decoding="async" data-nimg="future-fill" class="swiper-lazy" loading="lazy"
                                            style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent">
                                    </figure>
                                </a></div>
                            <div class="swiper-slide" data-swiper-slide-index="2" style="width: 1084px;"><a
                                    href="https://www.rallit.com/companies/38/%ED%81%AC%EB%A6%AC%EC%97%90%EC%9D%B4%ED%8A%B8%EB%A6%BD">
                                    <figure class="css-176lt66"><img
                                            data-src="https://cdn.rallit.com/image/2022-12-19/tQqBXVsFiak6s_rxDySdD.jpg"
                                            alt="크리에이트립 " sizes="1084px"
                                            srcset="https://cdn.rallit.com/image/2022-12-19/tQqBXVsFiak6s_rxDySdD.jpg?w=16 16w, https://cdn.rallit.com/image/2022-12-19/tQqBXVsFiak6s_rxDySdD.jpg?w=32 32w, https://cdn.rallit.com/image/2022-12-19/tQqBXVsFiak6s_rxDySdD.jpg?w=48 48w, https://cdn.rallit.com/image/2022-12-19/tQqBXVsFiak6s_rxDySdD.jpg?w=64 64w, https://cdn.rallit.com/image/2022-12-19/tQqBXVsFiak6s_rxDySdD.jpg?w=96 96w, https://cdn.rallit.com/image/2022-12-19/tQqBXVsFiak6s_rxDySdD.jpg?w=128 128w, https://cdn.rallit.com/image/2022-12-19/tQqBXVsFiak6s_rxDySdD.jpg?w=256 256w, https://cdn.rallit.com/image/2022-12-19/tQqBXVsFiak6s_rxDySdD.jpg?w=384 384w, https://cdn.rallit.com/image/2022-12-19/tQqBXVsFiak6s_rxDySdD.jpg?w=640 640w, https://cdn.rallit.com/image/2022-12-19/tQqBXVsFiak6s_rxDySdD.jpg?w=750 750w, https://cdn.rallit.com/image/2022-12-19/tQqBXVsFiak6s_rxDySdD.jpg?w=828 828w, https://cdn.rallit.com/image/2022-12-19/tQqBXVsFiak6s_rxDySdD.jpg?w=1080 1080w, https://cdn.rallit.com/image/2022-12-19/tQqBXVsFiak6s_rxDySdD.jpg?w=1084 1200w, https://cdn.rallit.com/image/2022-12-19/tQqBXVsFiak6s_rxDySdD.jpg?w=1084 1920w, https://cdn.rallit.com/image/2022-12-19/tQqBXVsFiak6s_rxDySdD.jpg?w=1084 2048w, https://cdn.rallit.com/image/2022-12-19/tQqBXVsFiak6s_rxDySdD.jpg?w=1084 3840w"
                                            src="https://cdn.rallit.com/image/2022-12-19/tQqBXVsFiak6s_rxDySdD.jpg?w=1084"
                                            decoding="async" data-nimg="future-fill" class="swiper-lazy" loading="lazy"
                                            style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent">
                                    </figure>
                                </a></div>
                            <div class="swiper-slide" data-swiper-slide-index="3" style="width: 1084px;"><a
                                    href="https://www.rallit.com/positions/747">
                                    <figure class="css-176lt66"><img
                                            data-src="https://cdn.rallit.com/image/2022-09-23/4xR2lQBMHHlQIaP37_yOR.png"
                                            alt="인프랩 백엔드개발자" sizes="1084px"
                                            srcset="https://cdn.rallit.com/image/2022-09-23/4xR2lQBMHHlQIaP37_yOR.png?w=16 16w, https://cdn.rallit.com/image/2022-09-23/4xR2lQBMHHlQIaP37_yOR.png?w=32 32w, https://cdn.rallit.com/image/2022-09-23/4xR2lQBMHHlQIaP37_yOR.png?w=48 48w, https://cdn.rallit.com/image/2022-09-23/4xR2lQBMHHlQIaP37_yOR.png?w=64 64w, https://cdn.rallit.com/image/2022-09-23/4xR2lQBMHHlQIaP37_yOR.png?w=96 96w, https://cdn.rallit.com/image/2022-09-23/4xR2lQBMHHlQIaP37_yOR.png?w=128 128w, https://cdn.rallit.com/image/2022-09-23/4xR2lQBMHHlQIaP37_yOR.png?w=256 256w, https://cdn.rallit.com/image/2022-09-23/4xR2lQBMHHlQIaP37_yOR.png?w=384 384w, https://cdn.rallit.com/image/2022-09-23/4xR2lQBMHHlQIaP37_yOR.png?w=640 640w, https://cdn.rallit.com/image/2022-09-23/4xR2lQBMHHlQIaP37_yOR.png?w=750 750w, https://cdn.rallit.com/image/2022-09-23/4xR2lQBMHHlQIaP37_yOR.png?w=828 828w, https://cdn.rallit.com/image/2022-09-23/4xR2lQBMHHlQIaP37_yOR.png?w=1080 1080w, https://cdn.rallit.com/image/2022-09-23/4xR2lQBMHHlQIaP37_yOR.png?w=1084 1200w, https://cdn.rallit.com/image/2022-09-23/4xR2lQBMHHlQIaP37_yOR.png?w=1084 1920w, https://cdn.rallit.com/image/2022-09-23/4xR2lQBMHHlQIaP37_yOR.png?w=1084 2048w, https://cdn.rallit.com/image/2022-09-23/4xR2lQBMHHlQIaP37_yOR.png?w=1084 3840w"
                                            src="https://cdn.rallit.com/image/2022-09-23/4xR2lQBMHHlQIaP37_yOR.png?w=1084"
                                            decoding="async" data-nimg="future-fill" class="swiper-lazy" loading="lazy"
                                            style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent">
                                    </figure>
                                </a></div>
                            <div class="swiper-slide" data-swiper-slide-index="4" style="width: 1084px;"><a
                                    href="/resume">
                                    <figure class="css-176lt66"><img
                                            data-src="https://cdn.rallit.com/image/2023-01-09/cKy--nJ0tZDKtTboHmcAW.png"
                                            alt="랠릿 new 이력서 커스터마이징 기능" sizes="1084px"
                                            srcset="https://cdn.rallit.com/image/2023-01-09/cKy--nJ0tZDKtTboHmcAW.png?w=16 16w, https://cdn.rallit.com/image/2023-01-09/cKy--nJ0tZDKtTboHmcAW.png?w=32 32w, https://cdn.rallit.com/image/2023-01-09/cKy--nJ0tZDKtTboHmcAW.png?w=48 48w, https://cdn.rallit.com/image/2023-01-09/cKy--nJ0tZDKtTboHmcAW.png?w=64 64w, https://cdn.rallit.com/image/2023-01-09/cKy--nJ0tZDKtTboHmcAW.png?w=96 96w, https://cdn.rallit.com/image/2023-01-09/cKy--nJ0tZDKtTboHmcAW.png?w=128 128w, https://cdn.rallit.com/image/2023-01-09/cKy--nJ0tZDKtTboHmcAW.png?w=256 256w, https://cdn.rallit.com/image/2023-01-09/cKy--nJ0tZDKtTboHmcAW.png?w=384 384w, https://cdn.rallit.com/image/2023-01-09/cKy--nJ0tZDKtTboHmcAW.png?w=640 640w, https://cdn.rallit.com/image/2023-01-09/cKy--nJ0tZDKtTboHmcAW.png?w=750 750w, https://cdn.rallit.com/image/2023-01-09/cKy--nJ0tZDKtTboHmcAW.png?w=828 828w, https://cdn.rallit.com/image/2023-01-09/cKy--nJ0tZDKtTboHmcAW.png?w=1080 1080w, https://cdn.rallit.com/image/2023-01-09/cKy--nJ0tZDKtTboHmcAW.png?w=1084 1200w, https://cdn.rallit.com/image/2023-01-09/cKy--nJ0tZDKtTboHmcAW.png?w=1084 1920w, https://cdn.rallit.com/image/2023-01-09/cKy--nJ0tZDKtTboHmcAW.png?w=1084 2048w, https://cdn.rallit.com/image/2023-01-09/cKy--nJ0tZDKtTboHmcAW.png?w=1084 3840w"
                                            src="https://cdn.rallit.com/image/2023-01-09/cKy--nJ0tZDKtTboHmcAW.png?w=1084"
                                            decoding="async" data-nimg="future-fill" class="swiper-lazy" loading="lazy"
                                            style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent">
                                    </figure>
                                </a></div>
                            <div class="swiper-slide swiper-slide-duplicate-prev" data-swiper-slide-index="5"
                                style="width: 1084px;"><a href="https://www.inflearn.com/roadmaps/634">
                                    <figure class="css-176lt66"><img
                                            data-src="https://cdn.rallit.com/image/2023-01-19/TIPgmaWdeb983SqKVBdat.png"
                                            alt="게임듀오 로드맵" sizes="1084px"
                                            srcset="https://cdn.rallit.com/image/2023-01-19/TIPgmaWdeb983SqKVBdat.png?w=16 16w, https://cdn.rallit.com/image/2023-01-19/TIPgmaWdeb983SqKVBdat.png?w=32 32w, https://cdn.rallit.com/image/2023-01-19/TIPgmaWdeb983SqKVBdat.png?w=48 48w, https://cdn.rallit.com/image/2023-01-19/TIPgmaWdeb983SqKVBdat.png?w=64 64w, https://cdn.rallit.com/image/2023-01-19/TIPgmaWdeb983SqKVBdat.png?w=96 96w, https://cdn.rallit.com/image/2023-01-19/TIPgmaWdeb983SqKVBdat.png?w=128 128w, https://cdn.rallit.com/image/2023-01-19/TIPgmaWdeb983SqKVBdat.png?w=256 256w, https://cdn.rallit.com/image/2023-01-19/TIPgmaWdeb983SqKVBdat.png?w=384 384w, https://cdn.rallit.com/image/2023-01-19/TIPgmaWdeb983SqKVBdat.png?w=640 640w, https://cdn.rallit.com/image/2023-01-19/TIPgmaWdeb983SqKVBdat.png?w=750 750w, https://cdn.rallit.com/image/2023-01-19/TIPgmaWdeb983SqKVBdat.png?w=828 828w, https://cdn.rallit.com/image/2023-01-19/TIPgmaWdeb983SqKVBdat.png?w=1080 1080w, https://cdn.rallit.com/image/2023-01-19/TIPgmaWdeb983SqKVBdat.png?w=1084 1200w, https://cdn.rallit.com/image/2023-01-19/TIPgmaWdeb983SqKVBdat.png?w=1084 1920w, https://cdn.rallit.com/image/2023-01-19/TIPgmaWdeb983SqKVBdat.png?w=1084 2048w, https://cdn.rallit.com/image/2023-01-19/TIPgmaWdeb983SqKVBdat.png?w=1084 3840w"
                                            src="https://cdn.rallit.com/image/2023-01-19/TIPgmaWdeb983SqKVBdat.png?w=1084"
                                            decoding="async" data-nimg="future-fill" class="swiper-lazy" loading="lazy"
                                            style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent">
                                    </figure>
                                </a></div>
                            <div class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-active"
                                data-swiper-slide-index="0" style="width: 1084px;"><a
                                    href="https://www.inflearn.com/tag-curation/tag/rallit-newresume-230119?utm_source=rallit&amp;utm_medium=mainbanner&amp;utm_campaign=traffic_event_newresume&amp;utm_content=&amp;utm_term=20230119">
                                    <figure class="css-1eg6wcz"><img alt="랠릿 이력서 이벤트 " sizes="1084px"
                                            srcset="https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=16 16w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=32 32w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=48 48w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=64 64w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=96 96w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=128 128w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=256 256w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=384 384w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=640 640w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=750 750w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=828 828w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=1080 1080w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=1084 1200w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=1084 1920w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=1084 2048w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=1084 3840w"
                                            src="https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif"
                                            decoding="async" data-nimg="future-fill"
                                            class="swiper-lazy swiper-lazy-loaded"
                                            style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent">
                                    </figure>
                                </a></div>
                        </div>
                    </div>
                    <div class="css-y033ci">
                        <div class="css-b4963y">
                            <p class="css-oz575p">1/6</p>
                        </div><button type="button" aria-label="이전 배너" class="css-1ccx5y7">
                            <div class="rallit-icon  css-1gvano"><svg xmlns="http://www.w3.org/2000/svg" width="16"
                                    height="16" fill="none" viewBox="0 0 24 24">
                                    <path fill-rule="evenodd" clip-rule="evenodd" fill="#fff"
                                        d="M14.67 19.17c-.439.44-1.151.44-1.59 0l-6.375-6.375a1.125 1.125 0 0 1 0-1.59l6.374-6.375a1.125 1.125 0 0 1 1.591 1.59L9.091 12l5.58 5.58c.439.439.439 1.151 0 1.59z">
                                    </path>
                                </svg></div>
                        </button><button type="button" aria-label="다음 배너" class="css-1ccx5y7">
                            <div class="rallit-icon  css-1gvano"><svg xmlns="http://www.w3.org/2000/svg" width="16"
                                    height="16" fill="none" viewBox="0 0 24 24">
                                    <path fill-rule="evenodd" clip-rule="evenodd" fill="#fff"
                                        d="M9.33 4.83c.439-.44 1.151-.44 1.59 0l6.375 6.374c.44.44.44 1.152 0 1.591L10.92 19.17a1.125 1.125 0 1 1-1.59-1.59L14.909 12l-5.58-5.58a1.125 1.125 0 0 1 0-1.59z">
                                    </path>
                                </svg></div>
                        </button>
                    </div>
                </div>
            </section>
            <div class="css-19wcm20">
                <section class="css-1xw6rpm">
                    <div class="css-1ixgpnt">
                        <h2 class="css-1elspdf">채용 중인 공고</h2>
                        <div class="css-fl7us7"><a href="/ex/jps">
                                <div class="css-p1vanc">
                                    <p class="css-byjqmz">전체보기</p><span>
                                        <div class="rallit-icon  css-1gvano"><svg xmlns="http://www.w3.org/2000/svg"
                                                width="14" height="14" fill="none" viewBox="0 0 24 24">
                                                <path fill-rule="evenodd" clip-rule="evenodd" fill="#535961"
                                                    d="M9.33 4.83c.439-.44 1.151-.44 1.59 0l6.375 6.374c.44.44.44 1.152 0 1.591L10.92 19.17a1.125 1.125 0 1 1-1.59-1.59L14.909 12l-5.58-5.58a1.125 1.125 0 0 1 0-1.59z">
                                                </path>
                                            </svg></div>
                                    </span>
                                </div>
                            </a></div>
                    </div>

                    <!--------------------------채용중인 공고 껍데기 자리----------------------->
                    <ul class="css-1nwykk">
                        <c:forEach var="test" items="${test }"> <!-- c태그 forEach 실행 시작(채용공고 데이터) -->
                            <li>
                                <article class="css-1pr9edg">
                                <a href="/ex/jpd">
                                    <!-- <a href="/positions/1235">  -->
                                        <figure class="css-1gd0osy"> <!-- 이 부분 이미지 삽입 방식 수정 예정 -->
                                            <img alt="주식회사 게임듀오 대표이미지" sizes="100vw"
                                                srcset="https://cdn.rallit.com/image/2022-12-20/fR6s4a6N3X4YxmOFJDvdo.png?w=640 640w, https://cdn.rallit.com/image/2022-12-20/fR6s4a6N3X4YxmOFJDvdo.png?w=720 750w, https://cdn.rallit.com/image/2022-12-20/fR6s4a6N3X4YxmOFJDvdo.png?w=720 828w, https://cdn.rallit.com/image/2022-12-20/fR6s4a6N3X4YxmOFJDvdo.png?w=720 1080w, https://cdn.rallit.com/image/2022-12-20/fR6s4a6N3X4YxmOFJDvdo.png?w=720 1200w, https://cdn.rallit.com/image/2022-12-20/fR6s4a6N3X4YxmOFJDvdo.png?w=720 1920w, https://cdn.rallit.com/image/2022-12-20/fR6s4a6N3X4YxmOFJDvdo.png?w=720 2048w, https://cdn.rallit.com/image/2022-12-20/fR6s4a6N3X4YxmOFJDvdo.png?w=720 3840w"
                                                src="https://cdn.rallit.com/image/2022-12-20/fR6s4a6N3X4YxmOFJDvdo.png?w=720"
                                                decoding="async" data-nimg="future-fill" loading="lazy"
                                                style="position: absolute; height: 100%; width: 100%; left: 0; top: 0; right: 0; bottom: 0; color: transparent">
                                        </figure>
                                        <div class="css-1gw9rd1">
                                            <div>
                                                <div role="button" tabindex="0">
                                                    <p class="summary__company-name css-fk1zjv">${test.company_id}<!--회사명-->
                                                    </p>
                                                </div>
                                                <div role="button" tabindex="0">
                                                    <h3 class="summary__title css-1to8sx0">${test.occupation}<!--직무(ex.서버 프로그래머)-->
                                                    </h3>
                                                </div>
                                            </div>
                                            <ul class="css-1kivyvq">
                                                <li class="css-1uz98zw">
                                                    <p class="css-1cyvqo4">${test.mainwork}<!--ex Node.js-->
                                                    </p>
                                                </li>
                                                <li class="css-1uz98zw">
                                                    <p class="css-1cyvqo4">${test.mainwork}<!--ex TypeScript 배열처리로 나오게 하기 -->
                                                    </p>
                                                </li>
                                            </ul>
                                            <div class="css-1rtzn1u">
                                                <span>
                                                    <p class="css-oz575p">${test.minCareer}
                                                        ~ ${test.maxCareer}년
                                                        <!--ex.주니어 (1~3년) if넣어서 경력에 따른 표현-->
                                                    </p>
                                                </span>
                                                <div class="css-106dojg"></div>
                                                <span>
                                                    <p class="css-oz575p">${test.city}<!--ex.서울-->
                                                    </p>
                                                </span>
                                            </div>
                                        </div>
                                    </a>
                                    <button type="button" aria-label="북마크" class="css-mzz592">
                                        <div class="rallit-icon  css-1bdht9e">
                                            <svg width="16" height="16" viewBox="0 0 16 16" fill="none"
                                                xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd"
                                                    clip-rule="evenodd"
                                                    d="M4.75 2.5a.25.25 0 0 0-.25.25v9.91l3.023-2.489a.75.75 0 0 1 .954 0l3.023 2.49V2.75a.25.25 0 0 0-.25-.25h-6.5zM3 2.75C3 1.784 3.784 1 4.75 1h6.5c.966 0 1.75.784 1.75 1.75v11.5a.75.75 0 0 1-1.227.579L8 11.722l-3.773 3.107A.75.75 0 0 1 3 14.25V2.75z"
                                                    fill="#eaecee"></path>
                                </svg>
                                        </div>
                                    </button>
                                </article>
                            </li>
                            </c:forEach> <!-- c태그 forEach 실행 종료(채용공고 데이터) -->
                            
                            
                        </ul>
                </section>
                <section class="css-xi4ft8">
                    <h2 class="css-6gjqqg">요즘 핫한 직업</h2>
                    <ul class="css-pjp278">
                        <li>
                            <div href="/positions?jobGroup=DEVELOPER&amp;job=BACKEND_DEVELOPER" class="css-o1ev2s">
                                <h3 class="skill-tag-link__name css-b3w4y1">#백엔드/서버 개발자</h3>
                            </div>
                        </li>
                        <li>
                            <div href="/positions?jobGroup=DEVELOPER&amp;job=FRONTEND_DEVELOPER" class="css-o1ev2s">
                                <h3 class="skill-tag-link__name css-b3w4y1">#프론트엔드/웹퍼블리셔</h3>
                            </div>
                        </li>
                        <li>
                            <div href="/positions?jobGroup=DEVELOPER&amp;job=SOFTWARE_ENGINEER" class="css-o1ev2s">
                                <h3 class="skill-tag-link__name css-b3w4y1">#SW 엔지니어</h3>
                            </div>
                        </li>
                        <li>
                            <div href="/positions?jobGroup=DEVELOPER&amp;job=ANDROID_DEVELOPER" class="css-o1ev2s">
                                <h3 class="skill-tag-link__name css-b3w4y1">#안드로이드 개발자</h3>
                            </div>
                        </li>
                        <li>
                            <div href="/positions?jobGroup=DEVELOPER&amp;job=IOS_DEVELOPER" class="css-o1ev2s">
                                <h3 class="skill-tag-link__name css-b3w4y1">#IOS 개발자</h3>
                            </div>
                        </li>
                        <li>
                            <div href="/positions?jobGroup=DEVELOPER&amp;job=DEV_OPS" class="css-o1ev2s">
                                <h3 class="skill-tag-link__name css-b3w4y1">#DevOps</h3>
                            </div>
                        </li>
                        <li>
                            <div href="/positions?jobGroup=DESIGN&amp;job=PRODUCT_DESIGNER" class="css-o1ev2s">
                                <h3 class="skill-tag-link__name css-b3w4y1">#프로덕트 디자이너</h3>
                            </div>
                        </li>
                        <li>
                            <div href="/positions?jobGroup=DESIGN&amp;job=WEB_APP_DESIGNER" class="css-o1ev2s">
                                <h3 class="skill-tag-link__name css-b3w4y1">#웹/앱 디자이너</h3>
                            </div>
                        </li>
                    </ul>
                </section>
            </div>
        </main>
        <footer class="css-nzv1o8">
            <div class="css-yyqtxc"></div>
            <div class="css-8t0ewa">
                <div class="css-192tn2r">
                    <div class="css-120gsus"><a aria-label="홈" href="/"><svg viewBox="0 0 82 22" width="82" height="22"
                                fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd" clip-rule="evenodd" fill="#21252A"
                                    d="M0 12.198c0-5.413 4.348-9.802 9.71-9.802h5.683v4.066H9.711c-3.139 0-5.683 2.569-5.683 5.736 0 3.168 2.544 5.736 5.683 5.736 3.138 0 5.682-2.568 5.682-5.736V6.462h4.028v5.736c0 5.414-4.348 9.802-9.71 9.802C4.348 22 0 17.612 0 12.198zM25.176 21.129V3.703h8.308c3.396 0 6.15 2.78 6.15 6.208 0 2.445-1.4 4.56-3.437 5.572a3.73 3.73 0 0 0 3.043 1.58h.394v4.066h-.394c-3.146 0-5.98-1.915-7.18-4.85l-.066-.16h-2.79v5.01h-4.028zm4.028-13.36h4.28c1.172 0 2.122.96 2.122 2.142 0 1.183-.95 2.142-2.122 2.142h-4.28V7.769z">
                                </path>
                                <path fill-rule="evenodd" clip-rule="evenodd" fill="#21252A"
                                    d="M56.321 3.703V21.13h4.029V3.703H56.32zM62.507 21.129V3.703h4.028V21.13h-4.028zM72.721 5.736a2.024 2.024 0 0 0-2.014-2.033c-1.112 0-2.014.91-2.014 2.033V7.77h2.014c1.113 0 2.014-.91 2.014-2.033zM68.693 21.129V9.657h4.028v11.472h-4.028zM74.88 3.703v12.489c0 2.726 2.19 4.937 4.89 4.937H82v-4.066h-2.23a.867.867 0 0 1-.863-.871v-4.357H82V7.77h-3.093V3.703H74.88z">
                                </path>
                                <path fill-rule="evenodd" clip-rule="evenodd" fill="#21252A"
                                    d="M47.618 7.914c3.543 0 6.428 2.841 6.542 6.39h.004v6.825h-4.029v-.507a6.473 6.473 0 0 1-2.517.507c-3.615 0-6.546-2.958-6.546-6.607 0-3.65 2.93-6.608 6.546-6.608zm0 9.149c1.39 0 2.517-1.138 2.517-2.541 0-1.404-1.127-2.542-2.517-2.542S45.1 13.118 45.1 14.522c0 1.403 1.127 2.54 2.518 2.54z">
                                </path>
                                <path fill-rule="evenodd" clip-rule="evenodd" fill="#0CA"
                                    d="M19.53 4.574a2.277 2.277 0 0 0 2.265-2.287A2.276 2.276 0 0 0 19.53 0a2.277 2.277 0 0 0-2.265 2.287v2.287h2.265z">
                                </path>
                            </svg></a></div>
                    <div class="css-sx764e">
                        <div class="css-p1vanc"><a href="https://business.rallit.com" target="_blank" rel="noreferrer"
                                class="css-0">기업 서비스</a><a href="https://www.inflearn.com" target="_blank"
                                rel="noreferrer" class="css-0">인프런</a></div>
                        <div class="css-szycpx"><a href="/terms-of-service" target="_blank" rel="noreferrer"
                                class="css-0">이용약관</a><a href="/privacy-policy" target="_blank" rel="noreferrer"
                                class="css-0">개인정보 처리방침</a><a
                                href="https://inflearn.typeform.com/rallit-cs#rallit_id=&amp;rallit_email="
                                target="_blank" rel="noreferrer" class="css-0">문의하기</a><a href="/propose-feature">기능
                                제안하기</a></div>
                    </div>
                </div>
                <p class="css-b3uwyt">(주)인프랩 | 대표 : 이형주 | 개인정보보호책임자 : 이동욱 | 사업자등록번호 : 499-81-00612 | 직업정보제공사업 신고번호 :
                    J1516020220003<br>경기도 성남시 분당구 대왕판교로 660 유스페이스 1A동 405호 <br>©Rallit. All rights reserved.</p>
            </div>
        </footer>

        </div>
    </div>
</body>

</html>