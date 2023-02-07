<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">

<head>
     <link href="${pageContext.request.contextPath}/resources/css/jobPostingDetail.css"
      rel="stylesheet" type="text/css">
<%@include file = "../include/header.jsp" %> 
        <main class="css-ac13em">
            <section class="css-1f20ni2">
                <header class="css-j9rl1c"><button type="button" class="css-dg9k1l"><svg width="20" height="20"
                            viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd" clip-rule="evenodd"
                                d="M8.753 14.097a.844.844 0 0 1-1.193 0L2.778 9.315a.844.844 0 0 1 0-1.193L7.56 3.341a.844.844 0 1 1 1.193 1.193L5.412 7.875h8.37a.844.844 0 1 1 0 1.688h-8.37l3.34 3.34c.33.33.33.864 0 1.194z"
                                fill="#535961"></path>
                        </svg></button><a class="css-3oq5by">
                        <div class="css-70qvj9"><img
                                src="https://cdn.rallit.com/image/2022-03-14/k-kO_VYdDeIKSLHcv9Vfz.png"
                                alt="(주)백패커 로고 이미지" class="css-g298dc">
                            <h2 class="css-10lpnky">${company }</h2>
                        </div>
                    </a>
                    <h1 class="css-17ueevk">${jobPosting.title }</h1>
                </header>
                <section class="css-1gli82r">
                    <section class="css-1rlc6km">
                        <div
                            class="swiper swiper-initialized swiper-horizontal swiper-pointer-events swiper-backface-hidden">
                            <div class="swiper-wrapper"
                                style="transform: translate3d(-2060px, 0px, 0px); transition-duration: 0ms;">
                                <div class="swiper-slide" style="width: 515px;">
                                    <figure class="css-1ymg2sk"><img alt="회사 대표 이미지" sizes="720px"
                                            srcset="https://cdn.rallit.com/image/2022-11-23/j7XcOPhuRDvlqAiW447dB.jpg?w=16 16w, https://cdn.rallit.com/image/2022-11-23/j7XcOPhuRDvlqAiW447dB.jpg?w=32 32w, https://cdn.rallit.com/image/2022-11-23/j7XcOPhuRDvlqAiW447dB.jpg?w=48 48w, https://cdn.rallit.com/image/2022-11-23/j7XcOPhuRDvlqAiW447dB.jpg?w=64 64w, https://cdn.rallit.com/image/2022-11-23/j7XcOPhuRDvlqAiW447dB.jpg?w=96 96w, https://cdn.rallit.com/image/2022-11-23/j7XcOPhuRDvlqAiW447dB.jpg?w=128 128w, https://cdn.rallit.com/image/2022-11-23/j7XcOPhuRDvlqAiW447dB.jpg?w=256 256w, https://cdn.rallit.com/image/2022-11-23/j7XcOPhuRDvlqAiW447dB.jpg?w=384 384w, https://cdn.rallit.com/image/2022-11-23/j7XcOPhuRDvlqAiW447dB.jpg?w=640 640w, https://cdn.rallit.com/image/2022-11-23/j7XcOPhuRDvlqAiW447dB.jpg?w=750 750w, https://cdn.rallit.com/image/2022-11-23/j7XcOPhuRDvlqAiW447dB.jpg?w=828 828w, https://cdn.rallit.com/image/2022-11-23/j7XcOPhuRDvlqAiW447dB.jpg?w=1080 1080w, https://cdn.rallit.com/image/2022-11-23/j7XcOPhuRDvlqAiW447dB.jpg?w=1200 1200w, https://cdn.rallit.com/image/2022-11-23/j7XcOPhuRDvlqAiW447dB.jpg?w=1440 1920w, https://cdn.rallit.com/image/2022-11-23/j7XcOPhuRDvlqAiW447dB.jpg?w=1440 2048w, https://cdn.rallit.com/image/2022-11-23/j7XcOPhuRDvlqAiW447dB.jpg?w=1440 3840w"
                                            src="https://cdn.rallit.com/image/2022-11-23/j7XcOPhuRDvlqAiW447dB.jpg"
                                            decoding="async" data-nimg="future-fill"
                                            class="swiper-lazy css-tlmr97 swiper-lazy-loaded" loading="lazy"
                                            style="position: absolute; height: 100%; width: 100%; inset: 0px; color: transparent;">
                                    </figure>
                                </div>
                                <div class="swiper-slide" style="width: 515px;">
                                    <figure class="css-1ymg2sk"><img alt="회사 대표 이미지" sizes="720px"
                                            srcset="https://cdn.rallit.com/image/2022-11-23/mRplGJu1V58mzybEOr_oR.jpg?w=16 16w, https://cdn.rallit.com/image/2022-11-23/mRplGJu1V58mzybEOr_oR.jpg?w=32 32w, https://cdn.rallit.com/image/2022-11-23/mRplGJu1V58mzybEOr_oR.jpg?w=48 48w, https://cdn.rallit.com/image/2022-11-23/mRplGJu1V58mzybEOr_oR.jpg?w=64 64w, https://cdn.rallit.com/image/2022-11-23/mRplGJu1V58mzybEOr_oR.jpg?w=96 96w, https://cdn.rallit.com/image/2022-11-23/mRplGJu1V58mzybEOr_oR.jpg?w=128 128w, https://cdn.rallit.com/image/2022-11-23/mRplGJu1V58mzybEOr_oR.jpg?w=256 256w, https://cdn.rallit.com/image/2022-11-23/mRplGJu1V58mzybEOr_oR.jpg?w=384 384w, https://cdn.rallit.com/image/2022-11-23/mRplGJu1V58mzybEOr_oR.jpg?w=640 640w, https://cdn.rallit.com/image/2022-11-23/mRplGJu1V58mzybEOr_oR.jpg?w=750 750w, https://cdn.rallit.com/image/2022-11-23/mRplGJu1V58mzybEOr_oR.jpg?w=828 828w, https://cdn.rallit.com/image/2022-11-23/mRplGJu1V58mzybEOr_oR.jpg?w=1080 1080w, https://cdn.rallit.com/image/2022-11-23/mRplGJu1V58mzybEOr_oR.jpg?w=1200 1200w, https://cdn.rallit.com/image/2022-11-23/mRplGJu1V58mzybEOr_oR.jpg?w=1440 1920w, https://cdn.rallit.com/image/2022-11-23/mRplGJu1V58mzybEOr_oR.jpg?w=1440 2048w, https://cdn.rallit.com/image/2022-11-23/mRplGJu1V58mzybEOr_oR.jpg?w=1440 3840w"
                                            src="https://cdn.rallit.com/image/2022-11-23/mRplGJu1V58mzybEOr_oR.jpg"
                                            decoding="async" data-nimg="future-fill"
                                            class="swiper-lazy css-tlmr97 swiper-lazy-loaded" loading="lazy"
                                            style="position: absolute; height: 100%; width: 100%; inset: 0px; color: transparent;">
                                    </figure>
                                </div>
                                <div class="swiper-slide" style="width: 515px;">
                                    <figure class="css-1ymg2sk"><img alt="회사 대표 이미지" sizes="720px"
                                            srcset="https://cdn.rallit.com/image/2022-11-23/5HoCGlP3dDN_YZQKI59iz.jpg?w=16 16w, https://cdn.rallit.com/image/2022-11-23/5HoCGlP3dDN_YZQKI59iz.jpg?w=32 32w, https://cdn.rallit.com/image/2022-11-23/5HoCGlP3dDN_YZQKI59iz.jpg?w=48 48w, https://cdn.rallit.com/image/2022-11-23/5HoCGlP3dDN_YZQKI59iz.jpg?w=64 64w, https://cdn.rallit.com/image/2022-11-23/5HoCGlP3dDN_YZQKI59iz.jpg?w=96 96w, https://cdn.rallit.com/image/2022-11-23/5HoCGlP3dDN_YZQKI59iz.jpg?w=128 128w, https://cdn.rallit.com/image/2022-11-23/5HoCGlP3dDN_YZQKI59iz.jpg?w=256 256w, https://cdn.rallit.com/image/2022-11-23/5HoCGlP3dDN_YZQKI59iz.jpg?w=384 384w, https://cdn.rallit.com/image/2022-11-23/5HoCGlP3dDN_YZQKI59iz.jpg?w=640 640w, https://cdn.rallit.com/image/2022-11-23/5HoCGlP3dDN_YZQKI59iz.jpg?w=750 750w, https://cdn.rallit.com/image/2022-11-23/5HoCGlP3dDN_YZQKI59iz.jpg?w=828 828w, https://cdn.rallit.com/image/2022-11-23/5HoCGlP3dDN_YZQKI59iz.jpg?w=1080 1080w, https://cdn.rallit.com/image/2022-11-23/5HoCGlP3dDN_YZQKI59iz.jpg?w=1200 1200w, https://cdn.rallit.com/image/2022-11-23/5HoCGlP3dDN_YZQKI59iz.jpg?w=1440 1920w, https://cdn.rallit.com/image/2022-11-23/5HoCGlP3dDN_YZQKI59iz.jpg?w=1440 2048w, https://cdn.rallit.com/image/2022-11-23/5HoCGlP3dDN_YZQKI59iz.jpg?w=1440 3840w"
                                            src="https://cdn.rallit.com/image/2022-11-23/5HoCGlP3dDN_YZQKI59iz.jpg"
                                            decoding="async" data-nimg="future-fill"
                                            class="swiper-lazy css-tlmr97 swiper-lazy-loaded" loading="lazy"
                                            style="position: absolute; height: 100%; width: 100%; inset: 0px; color: transparent;">
                                    </figure>
                                </div>
                                <div class="swiper-slide swiper-slide-prev" style="width: 515px;">
                                    <figure class="css-1ymg2sk"><img alt="회사 대표 이미지" sizes="720px"
                                            srcset="https://cdn.rallit.com/image/2022-11-23/aJk3WyPa0uLNqLOOYvc5w.jpg?w=16 16w, https://cdn.rallit.com/image/2022-11-23/aJk3WyPa0uLNqLOOYvc5w.jpg?w=32 32w, https://cdn.rallit.com/image/2022-11-23/aJk3WyPa0uLNqLOOYvc5w.jpg?w=48 48w, https://cdn.rallit.com/image/2022-11-23/aJk3WyPa0uLNqLOOYvc5w.jpg?w=64 64w, https://cdn.rallit.com/image/2022-11-23/aJk3WyPa0uLNqLOOYvc5w.jpg?w=96 96w, https://cdn.rallit.com/image/2022-11-23/aJk3WyPa0uLNqLOOYvc5w.jpg?w=128 128w, https://cdn.rallit.com/image/2022-11-23/aJk3WyPa0uLNqLOOYvc5w.jpg?w=256 256w, https://cdn.rallit.com/image/2022-11-23/aJk3WyPa0uLNqLOOYvc5w.jpg?w=384 384w, https://cdn.rallit.com/image/2022-11-23/aJk3WyPa0uLNqLOOYvc5w.jpg?w=640 640w, https://cdn.rallit.com/image/2022-11-23/aJk3WyPa0uLNqLOOYvc5w.jpg?w=750 750w, https://cdn.rallit.com/image/2022-11-23/aJk3WyPa0uLNqLOOYvc5w.jpg?w=828 828w, https://cdn.rallit.com/image/2022-11-23/aJk3WyPa0uLNqLOOYvc5w.jpg?w=1080 1080w, https://cdn.rallit.com/image/2022-11-23/aJk3WyPa0uLNqLOOYvc5w.jpg?w=1200 1200w, https://cdn.rallit.com/image/2022-11-23/aJk3WyPa0uLNqLOOYvc5w.jpg?w=1440 1920w, https://cdn.rallit.com/image/2022-11-23/aJk3WyPa0uLNqLOOYvc5w.jpg?w=1440 2048w, https://cdn.rallit.com/image/2022-11-23/aJk3WyPa0uLNqLOOYvc5w.jpg?w=1440 3840w"
                                            src="https://cdn.rallit.com/image/2022-11-23/aJk3WyPa0uLNqLOOYvc5w.jpg"
                                            decoding="async" data-nimg="future-fill"
                                            class="swiper-lazy css-tlmr97 swiper-lazy-loaded" loading="lazy"
                                            style="position: absolute; height: 100%; width: 100%; inset: 0px; color: transparent;">
                                    </figure>
                                </div>
                                <div class="swiper-slide swiper-slide-active" style="width: 515px;">
                                    <figure class="css-1ymg2sk"><img alt="회사 대표 이미지" sizes="720px"
                                            srcset="https://cdn.rallit.com/image/2022-11-23/qm_JQ4wcB0K2glgpx4O2O.jpg?w=16 16w, https://cdn.rallit.com/image/2022-11-23/qm_JQ4wcB0K2glgpx4O2O.jpg?w=32 32w, https://cdn.rallit.com/image/2022-11-23/qm_JQ4wcB0K2glgpx4O2O.jpg?w=48 48w, https://cdn.rallit.com/image/2022-11-23/qm_JQ4wcB0K2glgpx4O2O.jpg?w=64 64w, https://cdn.rallit.com/image/2022-11-23/qm_JQ4wcB0K2glgpx4O2O.jpg?w=96 96w, https://cdn.rallit.com/image/2022-11-23/qm_JQ4wcB0K2glgpx4O2O.jpg?w=128 128w, https://cdn.rallit.com/image/2022-11-23/qm_JQ4wcB0K2glgpx4O2O.jpg?w=256 256w, https://cdn.rallit.com/image/2022-11-23/qm_JQ4wcB0K2glgpx4O2O.jpg?w=384 384w, https://cdn.rallit.com/image/2022-11-23/qm_JQ4wcB0K2glgpx4O2O.jpg?w=640 640w, https://cdn.rallit.com/image/2022-11-23/qm_JQ4wcB0K2glgpx4O2O.jpg?w=750 750w, https://cdn.rallit.com/image/2022-11-23/qm_JQ4wcB0K2glgpx4O2O.jpg?w=828 828w, https://cdn.rallit.com/image/2022-11-23/qm_JQ4wcB0K2glgpx4O2O.jpg?w=1080 1080w, https://cdn.rallit.com/image/2022-11-23/qm_JQ4wcB0K2glgpx4O2O.jpg?w=1200 1200w, https://cdn.rallit.com/image/2022-11-23/qm_JQ4wcB0K2glgpx4O2O.jpg?w=1440 1920w, https://cdn.rallit.com/image/2022-11-23/qm_JQ4wcB0K2glgpx4O2O.jpg?w=1440 2048w, https://cdn.rallit.com/image/2022-11-23/qm_JQ4wcB0K2glgpx4O2O.jpg?w=1440 3840w"
                                            src="https://cdn.rallit.com/image/2022-11-23/qm_JQ4wcB0K2glgpx4O2O.jpg"
                                            decoding="async" data-nimg="future-fill"
                                            class="swiper-lazy css-tlmr97 swiper-lazy-loaded" loading="lazy"
                                            style="position: absolute; height: 100%; width: 100%; inset: 0px; color: transparent;">
                                    </figure>
                                </div>
                            </div>
                        </div>
                        <div class="css-164zaq6">
                            <div class="css-1fby83s"><button class="css-s6yz71" type="button">
                                    <div class="rallit-icon  css-12r39mb"><svg xmlns="http://www.w3.org/2000/svg"
                                            width="14" height="14" fill="none" viewBox="0 0 24 24">
                                            <path fill-rule="evenodd" clip-rule="evenodd" fill="#eaecee"
                                                d="M14.67 19.17c-.439.44-1.151.44-1.59 0l-6.375-6.375a1.125 1.125 0 0 1 0-1.59l6.374-6.375a1.125 1.125 0 0 1 1.591 1.59L9.091 12l5.58 5.58c.439.439.439 1.151 0 1.59z">
                                            </path>
                                        </svg></div>
                                </button><button class="css-1no16mp swiper-button-disabled" type="button" disabled="">
                                    <div class="rallit-icon  css-1gvano"><svg xmlns="http://www.w3.org/2000/svg"
                                            width="14" height="14" fill="none" viewBox="0 0 24 24">
                                            <path fill-rule="evenodd" clip-rule="evenodd" fill="#535961"
                                                d="M9.33 4.83c.439-.44 1.151-.44 1.59 0l6.375 6.374c.44.44.44 1.152 0 1.591L10.92 19.17a1.125 1.125 0 1 1-1.59-1.59L14.909 12l-5.58-5.58a1.125 1.125 0 0 1 0-1.59z">
                                            </path>
                                        </svg></div>
                                </button></div>
                            <div class="css-7tzyz7">
                                <p class="css-oz575p">5/5</p>
                            </div>
                        </div>
                    </section>
                    <div class="css-1vbiael">
                        <section class="css-1yoja6p">
                            <h2 class="css-16a5xne">${company }, 어떤 곳인가요?</h2>
                            <p class="css-19hzmb1"> ${jobPosting.text1 }</p>
                        </section>
                        <section class="css-y1gt6f">
                            <h2 class="css-16a5xne">${jobPosting.title }, 어떤 일을 하나요?</h2>
                            <p class="css-19hzmb1">업무 컬럼을 추가하나</p>
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
                        <section class="css-1p3fgy4">
                            <h2 class="css-16a5xne">${company }에서 전하는 미래 동료에게 한마디</h2>
                            <p class="css-19hzmb1">${jobPosting.text6 }</p>
                        </section>
                        <div class="css-1r56nfl"></div>
                        <section class="css-1xcwzc">
                            <h2 class="css-1lazorv">근무 지역</h2>
                            <p class="css-1do0vae">${address } </p>
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
                                                <dd class="css-1pvdrt3">연봉 컬럼 추가 필요</dd>
                                            </div>
                                        </dl>
                                        <dl class="css-dnxlq5">
                                            <div class="css-150elap">
                                                <dt class="css-1u8yjw6">마감일</dt>
                                                <dd class="css-1pvdrt3">${jobPosting.deadline}</dd>
                                            </div>
                                        </dl>
                                        <div class="css-16s6tkq">
                                            <button class="css-85pt97" type="button">지원하기</button>
                                        </div>
                                    </div>
                                </div>
                            </aside>
                        </div>
                    </div>
                </section>
            </section>
        </main>
    <%@include file = "../include/footer.jsp" %>;