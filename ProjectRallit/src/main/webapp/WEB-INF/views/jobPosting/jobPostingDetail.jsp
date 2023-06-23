<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">

<head>
     <link href="${pageContext.request.contextPath}/resources/css/jobPostingDetail.css"
      rel="stylesheet" type="text/css">
<%@include file = "../include/header.jsp"%> 
        <main class="css-ac13em">
            <section class="css-1f20ni2">
                <header class="css-j9rl1c"><a class="css-3oq5by">
                 <c:set var="ranI"><%= java.lang.Math.round(java.lang.Math.random() * 17)+1%></c:set>
                        <div class="css-70qvj9"><img
                                src="resources/imgs/icon/icon (${ranI}).png"
                               class="css-g298dc">
                            <h2 class="css-10lpnky">${jobPosting.user_company }</h2>
                        </div>
                    </a>
                    <h1 class="css-17ueevk">${jobPosting.title }</h1>
                </header>
                <section class="css-1gli82r">
                    <section class="css-1rlc6km">
                        <div class="swiper swiper-initialized swiper-horizontal swiper-pointer-events swiper-backface-hidden">
                            <div class="swiper-wrapper">
                             <c:set var="ran"><%= java.lang.Math.round(java.lang.Math.random() * 21)+1%></c:set>
                                    <div class="swiper-slide swiper-slide-active" style="width: 515px;">
                                    <figure class="css-1ymg2sk"><img alt="회사 대표 이미지" sizes="720px"
											srcset="resources/imgs/thumbnail/thum (${ran}).jpg"                                            
											src="resources/imgs/thumbnail/thum (${ran}).jpg"
                                            decoding="async" data-nimg="future-fill"
                                            class="swiper-lazy css-tlmr97 swiper-lazy-loaded" loading="lazy"
                                            style="position: absolute; height: 100%; width: 100%; inset: 0px; color: transparent;">
                                    </figure>
                                </div>
                            </div>
                        </div>
                        <div class="css-164zaq6">
                           
              
                        </div>
                    </section>
                    <div class="css-1vbiael">
                        <section class="css-1yoja6p">
                            <h2 class="css-16a5xne">${jobPosting.user_company }, 어떤 곳인가요?</h2>
                            <p class="css-19hzmb1"> ${jobPosting.text1 }</p>
                        </section>
                        <section class="css-y1gt6f">
                            <h2 class="css-16a5xne">${jobPosting.title }, 어떤 일을 하나요?</h2>
                            <ul class="css-104fbyc">
                            <c:forEach items='${jobPosting.languageTags }' var='postingTag'>
                                <div class="css-kgsirb">
                                   <span>${postingTag }</span>
                                </div>
                            </c:forEach>
                            </ul>
                            <section class="css-idx0da">
                                <div class="css-1dcto04"><span class="css-12z0wuy"><svg width="18" height="18"
                                            fill="none" viewBox="0 0 14 14" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" clip-rule="evenodd"
                                                d="M12.057 3.692a.657.657 0 0 1 0 .928l-6.343 6.344a.657.657 0 0 1-.928 0L1.942 8.12a.656.656 0 0 1 .928-.927l2.38 2.38 5.88-5.88a.656.656 0 0 1 .927 0z"
                                                fill="#21252a"></path>
                                        </svg></span>
                                    <h3 class="css-l8sxp3">주요업무</h3>
                                </div>
                                <p class="css-19hzmb1">${jobPosting.text2 }</p>
                            </section>
                            <section class="css-idx0da">
                                <div class="css-1dcto04"><span class="css-12z0wuy"><svg width="18" height="18"
                                            fill="none" viewBox="0 0 14 14" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" clip-rule="evenodd"
                                                d="M12.057 3.692a.657.657 0 0 1 0 .928l-6.343 6.344a.657.657 0 0 1-.928 0L1.942 8.12a.656.656 0 0 1 .928-.927l2.38 2.38 5.88-5.88a.656.656 0 0 1 .927 0z"
                                                fill="#21252a"></path>
                                        </svg></span>
                                    <h3 class="css-l8sxp3">자격요건</h3>
                                </div>
                                <p class="css-19hzmb1">${jobPosting.text3 }</p>
                            </section>
                            <section class="css-idx0da">
                                <div class="css-1dcto04"><span class="css-12z0wuy"><svg width="18" height="18"
                                            fill="none" viewBox="0 0 14 14" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" clip-rule="evenodd"
                                                d="M12.057 3.692a.657.657 0 0 1 0 .928l-6.343 6.344a.657.657 0 0 1-.928 0L1.942 8.12a.656.656 0 0 1 .928-.927l2.38 2.38 5.88-5.88a.656.656 0 0 1 .927 0z"
                                                fill="#21252a"></path>
                                        </svg></span>
                                    <h3 class="css-l8sxp3">우대사항</h3>
                                </div>
                                <p class="css-19hzmb1">${jobPosting.text4 }</p>
                            </section>
                            <section class="css-idx0da">
                                <div class="css-1dcto04"><span class="css-12z0wuy"><svg width="18" height="18"
                                            fill="none" viewBox="0 0 14 14" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" clip-rule="evenodd"
                                                d="M12.057 3.692a.657.657 0 0 1 0 .928l-6.343 6.344a.657.657 0 0 1-.928 0L1.942 8.12a.656.656 0 0 1 .928-.927l2.38 2.38 5.88-5.88a.656.656 0 0 1 .927 0z"
                                                fill="#21252a"></path>
                                        </svg></span>
                                    <h3 class="css-l8sxp3">혜택 및 복지</h3>
                                </div>
                                <p class="css-19hzmb1">${jobPosting.text5 }</p>
                            </section>
                        </section>
                        <br>
                        <section class="css-1p3fgy4">
                            <h2 class="css-16a5xne">${jobPosting.user_company }에서 전하는 미래 동료에게 한마디</h2>
                            <p class="css-19hzmb1">${jobPosting.text6 }</p>
                        </section>
                        <div class="css-1r56nfl"></div>
                        <section class="css-1xcwzc">
                            <h2 class="css-1lazorv">근무 지역</h2>
                            <p class="css-1do0vae">${address} </p>
                        </section>
                    </div>
                    <div class="css-et343p">
                        <div class="css-79elbk">
                            <aside class="css-5ltb0x">
                                <div class="css-ldqbpg">
                                    <header class="css-bnqzkw">
                                        <h2 class="css-1qamhtj">${jobPosting.title }</h2>
                                    </header>
                                    <div class="css-1385rv7">
                                        <dl class="css-dnxlq5">
                                            <div class="css-150elap">
                                                <dt class="css-1u8yjw6">경력</dt>
                                                <dd class="css-1pvdrt3">${jobPosting.minCareer }~${jobPosting.maxCareer }년</dd>
                                            </div>
                                        </dl>
                                        <dl class="css-dnxlq5">
                                            <div class="css-150elap">
                                                <dt class="css-1u8yjw6">최소 연봉</dt>
                                                <dd class="css-1pvdrt3">${jobPosting.sal }만원 이상</dd>
                                            </div>
                                        </dl>
                                        <dl class="css-dnxlq5">
                                            <div class="css-150elap">
                                                <dt class="css-1u8yjw6">마감일</dt>
                                                <dd class="css-1pvdrt3"><fmt:formatDate pattern="yyyy년 MM월 dd일" value='${jobPosting.deadline}' />
                                            </div>
                                        </dl>
                                        <c:choose>
                           <c:when test="${user_autho == 'ROLE_ADMIN'}">
                           
                                        </c:when>
                                        <c:when test="${user_autho == 'ROLE_COMPANY'}">
                                        
                                        </c:when>
                                        
                                        <c:otherwise>
     <a href="/ex/"><button onclick="alert('지원하기')" class="css-85pt97" style="width:250px; margin-top:15px; margin-bottom:10px;" type="button">지원하기</button></a>
                                        </c:otherwise>
                                    </c:choose>
                                    </div>
                                </div>
                                <!-- ---------------------------------밑으로 뜨는 관리자 메뉴 테스트 -->
                                <c:choose>
                           <c:when test="${user_autho == 'ROLE_ADMIN'}">
                                <div class="css-rzlz8n"></div>
                                <div class="css-n1n4ej">
                                    <button style="height:25px; width:70px; background-color:#478373; color:white; border-radius:6px;" aria-label="관리자-수정" type="button"
                                        class="css-j6s3yv" onclick="location.href='/ex/admin/updateJobPosting?posting_num=${jobPosting.posting_num} '">
                                        수정하기
                                    </button>
                                    <button onclick="location.href='/ex/admin/deleteJobPosting?posting_num=${jobPosting.posting_num}'" style="height:25px; width:70px; background-color:#478373; color:white; border-radius:6px;" type="button" aria-label="관리자 삭제"
                                        class="css-j6s3yv">
                                        삭제하기
                                    </button></div>
                                    </c:when>
                                    </c:choose>
                                    <!-- ------------------------------------------------------------------------------------- -->
                            </aside>
                        </div>
                    </div>
                </section>
            </section>
        </main>
    <%@include file = "../include/footer.jsp" %>;