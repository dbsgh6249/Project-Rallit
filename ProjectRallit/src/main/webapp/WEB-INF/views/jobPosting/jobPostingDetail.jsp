<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">

<head>
     <link href="${pageContext.request.contextPath}/resources/css/jobPostingDetail.css"
      rel="stylesheet" type="text/css">
    <script type="text/javascript" async=""
        src="https://www.googletagmanager.com/gtag/js?id=G-QL4WB566QC&amp;l=dataLayer&amp;cx=c"></script>
    <script src="https://connect.facebook.net/signals/config/663413858428656?v=2.9.95&amp;r=stable" async=""></script>
    <script async="" src="https://connect.facebook.net/en_US/fbevents.js"></script>
    <script async="" src="https://www.googletagmanager.com/gtm.js?id=GTM-WGJ7X69"></script>

    <meta charset="utf-8">
    <title>[백패커/아이디어스] 웹서비스 프론트엔드 개발자(Vue) | (주)백패커 채용</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0, user-scalable=yes">
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="랠릿">
    <meta property="og:locale" content="ko_KR">
    <meta property="og:image:width" content="1200">
    <meta property="og:image:height" content="630">
    <meta name="theme-color" content="#ffffff">

    <!-- <link rel="manifest" href="/manifest.json"> -->
    <script src="https://cdn.rallit.com/js/postcode.v2.js" defer=""></script>
    <script src="https://cdn.rallit.com/js/kakao.v1.14.0.min.js" defer=""></script>
    <meta name="robots" content="index, follow">
    <meta name="title" content="[백패커/아이디어스] 웹서비스 프론트엔드 개발자(Vue) | (주)백패커 채용">
    <!-- <script
        type="application/ld+json">{"@context":"https://schema.org/","@type":"JobPosting","title":"[백패커/아이디어스] 웹서비스 프론트엔드 개발자(Vue)","description":"<p>웹서비스 프론트엔드 개발자(Vue) (경력 3년 이상)</p>","identifier":{"@type":"PropertyValue","name":"Google","value":1023},"datePosted":"1970-01-01","validThrough":"9999-12-3125340218200000000:00","employmentType":{"code":"FRONTEND_DEVELOPER","name":"프론트엔드/웹퍼블리셔"},"hiringOrganization":{"@type":"Organization","name":"(주)백패커","sameAs":"https://team.idus.com/","companyLogo":"https://cdn.rallit.com/image/2022-03-14/k-kO_VYdDeIKSLHcv9Vfz.png"},"jobLocation":{"@type":"Place","address":{"@type":"PostalAddress","streetAddress":"서울 서초구 서초대로 398","addressLocality":"서울 서초구 서초대로 398","addressRegion":"서울 서초구 서초대로 398","postalCode":"06619","addressCountry":"KO"}},"baseSalary":{"@type":"MonetaryAmount","currency":"KRW","value":{"@type":"QuantitativeValue","value":"","unitText":"YEAR"}}}</script> -->
    <meta name="next-head-count" content="38">
</head>

<body class=""><noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-WGJ7X69" height="0" width="0"
            style="display:none;visibility:hidden"></iframe></noscript>
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
                    </ul><a href="jobSeeker/login">
                        <p class="css-11cix4b">기업 서비스</p>
                    </a>
                </div>
            </div>
        </section>
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
                            <h2 class="css-10lpnky">${company.user_company }</h2>
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
                            <h2 class="css-16a5xne">${company.user_company }, 어떤 곳인가요?</h2>
                            <p class="css-19hzmb1"> ${jobPosting.text1 }</p>
                        </section>
                        <section class="css-y1gt6f">
                            <h2 class="css-16a5xne">${jobPosting.title }, 어떤 일을 하나요?</h2>
                            <p class="css-19hzmb1">업무 컬럼을 추가하나</p>
                            <ul class="css-104fbyc">
                            <c:forEach items='${jobPosting.postingTags }' var='postingTag'>
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
                            <h2 class="css-16a5xne">${company.user_company }에서 전하는 미래 동료에게 한마디</h2>
                            <p class="css-19hzmb1">${jobPosting.text6 }</p>
                        </section>
                        <div class="css-1r56nfl"></div>
                        <section class="css-1xcwzc">
                            <h2 class="css-1lazorv">근무 지역</h2>
                            <p class="css-1do0vae">${company.user_province } ${company.user_city } ${company.user_address }</p>
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