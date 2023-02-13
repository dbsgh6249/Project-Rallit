<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file = "../include/header.jsp"%>
      <link href="${pageContext.request.contextPath}/resources/css/myInfo.css"
      rel="stylesheet" type="text/css">
     
     
     <main class="css-ac13em">
            <div class="css-ftt0tl">
                <nav class="css-uebuml">
                    <div class="css-1qtribh">
                        <div class="css-139kjpe"><span>MY 홈</span><button class="css-1vgm1p2" type="button">
                                <div class="rallit-icon  css-12r39mb"><svg width="12" height="12" fill="none"
                                        xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd" clip-rule="evenodd"
                                            d="M.938 2.25c0-.31.251-.563.562-.563h9a.562.562 0 1 1 0 1.125h-9a.563.563 0 0 1-.563-.562zM.938 6c0-.31.251-.563.562-.563h9a.562.562 0 1 1 0 1.125h-9A.563.563 0 0 1 .937 6zM.938 9.75c0-.31.251-.563.562-.563h9a.562.562 0 1 1 0 1.126h-9a.562.562 0 0 1-.563-.563z"
                                            fill="#535961"></path>
                                    </svg></div>
                            </button></div>
                       
                    </div>
                    <div role="none" class="css-ntzr4d"></div>
                </nav>
               <%@include file = "../include/myHomeMenuCom.jsp" %>
                <section class="css-8jj0t0">
                    <h1 class="css-vvbno4">MY 홈</h1>
                    <div class="css-uaw2kl">
                        <div class="css-9j3f84">
                            <header class="css-1en5oz">
                                <h2 class="my-dashboard__title css-fstzjo">작성 중인 지원서</h2><button type="button"
                                    class="css-1il9omw"><a href="/my/draft-applicants"><span class="css-70qvj9">전체보기<div
                                                class="rallit-icon  css-1gvano"><svg xmlns="http://www.w3.org/2000/svg"
                                                    width="16" height="16" fill="none" viewBox="0 0 24 24">
                                                    <path fill-rule="evenodd" clip-rule="evenodd" fill="#535961"
                                                        d="M9.33 4.83c.439-.44 1.151-.44 1.59 0l6.375 6.374c.44.44.44 1.152 0 1.591L10.92 19.17a1.125 1.125 0 1 1-1.59-1.59L14.909 12l-5.58-5.58a1.125 1.125 0 0 1 0-1.59z">
                                                    </path>
                                                </svg></div></span></a></button>
                            </header>
                            <div class="css-1miajvq">
                                <div class="css-1mezue1">
                                    <p class="css-1aweud3">작성 중인 지원서가 없어요.</p>
                                    <p class="css-17rq0qv">관심있는 공고에 지원해 보세요.</p><button class="css-1146gk"
                                        type="button">채용 공고 탐색하기</button>
                                </div>
                            </div>
                        </div>
                        <div class="css-9j3f84">
                            <header class="css-1en5oz">
                                <h2 class="my-dashboard__title css-fstzjo">제출한 지원서</h2><button type="button"
                                    class="css-1il9omw"><a href="/my/submitted-applicants"><span class="css-70qvj9">전체보기
                                            <div class="rallit-icon  css-1gvano"><svg xmlns="http://www.w3.org/2000/svg"
                                                    width="16" height="16" fill="none" viewBox="0 0 24 24">
                                                    <path fill-rule="evenodd" clip-rule="evenodd" fill="#535961"
                                                        d="M9.33 4.83c.439-.44 1.151-.44 1.59 0l6.375 6.374c.44.44.44 1.152 0 1.591L10.92 19.17a1.125 1.125 0 1 1-1.59-1.59L14.909 12l-5.58-5.58a1.125 1.125 0 0 1 0-1.59z">
                                                    </path>
                                                </svg></div></span></a></button>
                            </header>
                            <div class="css-sdee4m">
                                <article class="css-11sg0mv"><a
                                        href="/my/submitted-applicants?progressStatus=APPLY_RESUME&amp;pageNumber=1"
                                        class="css-1ovlw77">
                                        <div class="css-j36pxh"><span>서류지원</span>
                                            <div class="rallit-icon  css-1gvano"><svg xmlns="http://www.w3.org/2000/svg"
                                                    width="14" height="14" fill="none" viewBox="0 0 24 24">
                                                    <path fill-rule="evenodd" clip-rule="evenodd" fill="#535961"
                                                        d="M9.33 4.83c.439-.44 1.151-.44 1.59 0l6.375 6.374c.44.44.44 1.152 0 1.591L10.92 19.17a1.125 1.125 0 1 1-1.59-1.59L14.909 12l-5.58-5.58a1.125 1.125 0 0 1 0-1.59z">
                                                    </path>
                                                </svg></div>
                                        </div>
                                        <p class="css-ga0aqu">0</p>
                                    </a></article>
                                <article class="css-11sg0mv"><a
                                        href="/my/submitted-applicants?progressStatus=PROGRESS&amp;pageNumber=1"
                                        class="css-1ovlw77">
                                        <div class="css-j36pxh"><span>진행중</span>
                                            <div class="rallit-icon  css-1gvano"><svg xmlns="http://www.w3.org/2000/svg"
                                                    width="14" height="14" fill="none" viewBox="0 0 24 24">
                                                    <path fill-rule="evenodd" clip-rule="evenodd" fill="#535961"
                                                        d="M9.33 4.83c.439-.44 1.151-.44 1.59 0l6.375 6.374c.44.44.44 1.152 0 1.591L10.92 19.17a1.125 1.125 0 1 1-1.59-1.59L14.909 12l-5.58-5.58a1.125 1.125 0 0 1 0-1.59z">
                                                    </path>
                                                </svg></div>
                                        </div>
                                        <p class="css-ga0aqu">0</p>
                                    </a></article>
                                <article class="css-11sg0mv"><a
                                        href="/my/submitted-applicants?progressStatus=FINAL_PASS&amp;pageNumber=1"
                                        class="css-1ovlw77">
                                        <div class="css-j36pxh"><span>최종합격</span>
                                            <div class="rallit-icon  css-1gvano"><svg xmlns="http://www.w3.org/2000/svg"
                                                    width="14" height="14" fill="none" viewBox="0 0 24 24">
                                                    <path fill-rule="evenodd" clip-rule="evenodd" fill="#535961"
                                                        d="M9.33 4.83c.439-.44 1.151-.44 1.59 0l6.375 6.374c.44.44.44 1.152 0 1.591L10.92 19.17a1.125 1.125 0 1 1-1.59-1.59L14.909 12l-5.58-5.58a1.125 1.125 0 0 1 0-1.59z">
                                                    </path>
                                                </svg></div>
                                        </div>
                                        <p class="css-ga0aqu">0</p>
                                    </a></article>
                            </div>
                        </div>
                        <div class="css-9j3f84">
                            <header class="css-1en5oz">
                                <h2 class="my-dashboard__title css-fstzjo">북마크한 채용 공고</h2><button type="button"
                                    class="css-1il9omw"><a href="/my/bookmarks"><span class="css-70qvj9">전체보기<div
                                                class="rallit-icon  css-1gvano"><svg xmlns="http://www.w3.org/2000/svg"
                                                    width="16" height="16" fill="none" viewBox="0 0 24 24">
                                                    <path fill-rule="evenodd" clip-rule="evenodd" fill="#535961"
                                                        d="M9.33 4.83c.439-.44 1.151-.44 1.59 0l6.375 6.374c.44.44.44 1.152 0 1.591L10.92 19.17a1.125 1.125 0 1 1-1.59-1.59L14.909 12l-5.58-5.58a1.125 1.125 0 0 1 0-1.59z">
                                                    </path>
                                                </svg></div></span></a></button>
                            </header>
                            <div class="css-0">
                                <div class="css-1mezue1">
                                    <p class="css-1aweud3">북마크한 채용 공고가 없어요.</p>
                                    <p class="css-17rq0qv">관심있는 공고를 북마크해 보세요.</p><button class="css-1146gk"
                                        type="button">채용 공고 탐색하기</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </main>

<%@include file = "../include/footer.jsp" %>