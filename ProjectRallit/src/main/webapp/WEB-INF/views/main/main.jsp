<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
   uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@include file = "../include/header.jsp"%>
 <style>

</style>
 <link href="${pageContext.request.contextPath}/resources/css/main.css"
      rel="stylesheet" type="text/css">
      <main class="css-ac13em">
      <h1 class="css-8mcuh1">랠릿 메인페이지</h1>
      <section class="css-14c50mj">
         <div class="css-1yposw6">
            <div style="z-index: 2"
               class="swiper swiper-initialized swiper-horizontal swiper-pointer-events swiper-backface-hidden">
               <div class="swiper-scrollbar"></div>
               <div class="swiper-wrapper"
                  style="transition-duration: 0ms; transform: translate3d(-1084px, 0px, 0px);">
             
                  <div class="swiper-slide swiper-slide-active"
                     data-swiper-slide-index="0" style="width: 1084px;">
                     <a
                        href="https://www.inflearn.com/tag-curation/tag/rallit-newresume-230119?utm_source=rallit&amp;utm_medium=mainbanner&amp;utm_campaign=traffic_event_newresume&amp;utm_content=&amp;utm_term=20230119">
                        <figure class="css-1eg6wcz">
                           <img alt="랠릿 이력서 이벤트 " sizes="1084px"
                              srcset="https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=16 16w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=32 32w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=48 48w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=64 64w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=96 96w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=128 128w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=256 256w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=384 384w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=640 640w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=750 750w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=828 828w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=1080 1080w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=1084 1200w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=1084 1920w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=1084 2048w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=1084 3840w"
                              src="https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif"
                              decoding="async" data-nimg="future-fill"
                              class="swiper-lazy swiper-lazy-loaded"
                              style="position: absolute; height: 100%; width: 100%; left: 0; top: 0; right: 0; bottom: 0; color: transparent">
                        </figure>
                     </a>
                  </div>
                  <div
                     class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-active"
                     data-swiper-slide-index="0" style="width: 1084px;">
                     <a
                        href="https://www.inflearn.com/tag-curation/tag/rallit-newresume-230119?utm_source=rallit&amp;utm_medium=mainbanner&amp;utm_campaign=traffic_event_newresume&amp;utm_content=&amp;utm_term=20230119">
                        <figure class="css-1eg6wcz">
                           <img alt="랠릿 이력서 이벤트 " sizes="1084px"
                              srcset="https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=16 16w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=32 32w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=48 48w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=64 64w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=96 96w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=128 128w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=256 256w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=384 384w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=640 640w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=750 750w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=828 828w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=1080 1080w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=1084 1200w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=1084 1920w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=1084 2048w, https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif?w=1084 3840w"
                              src="https://cdn.rallit.com/image/2023-01-26/-blAX8KlJELNWz8aw7AbL.gif"
                              decoding="async" data-nimg="future-fill"
                              class="swiper-lazy swiper-lazy-loaded"
                              style="position: absolute; height: 100%; width: 100%; left: 0; top: 0; right: 0; bottom: 0; color: transparent">
                        </figure>
                     </a>
                  </div>
               </div>
            </div>
       
         </div>
      </section>
      <div class="css-19wcm20">
         <section class="css-1xw6rpm">
            <div class="css-1ixgpnt">
               <h2 class="css-1elspdf">채용 중인 공고</h2>
               <div class="css-fl7us7">
                  <a href="/ex/jobPostList">
                     <div class="css-p1vanc">
                        <p class="css-byjqmz">전체보기</p>
                        <span>
                           <div class="rallit-icon  css-1gvano">
                              <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14"
                                 fill="none" viewBox="0 0 24 24">
                                                <path
                                    fill-rule="evenodd" clip-rule="evenodd" fill="#535961"
                                    d="M9.33 4.83c.439-.44 1.151-.44 1.59 0l6.375 6.374c.44.44.44 1.152 0 1.591L10.92 19.17a1.125 1.125 0 1 1-1.59-1.59L14.909 12l-5.58-5.58a1.125 1.125 0 0 1 0-1.59z">
                                                </path>
                                            </svg>
                           </div>
                        </span>
                     </div>
                  </a>
               </div>
            </div>

            <!---------------------------채용중인 공고 껍데기 자리----------------------->
            <ul class="css-1nwykk">
               
               <c:forEach items="${list }" var="jobPosting">
               <c:set var="ran"><%= java.lang.Math.round(java.lang.Math.random() * 21)+1%></c:set>
                  <!-- c태그 forEach 실행 시작(채용공고 데이터) -->
                  <li>
                     <article class="css-1pr9edg">
                        <a href="/ex/readPost?posting_num=${jobPosting.posting_num }"> <!-- <a href="/positions/1235">  -->
                           <figure class="css-1gd0osy">
                              <!-- 이 부분 이미지 삽입 방식 수정 예정 -->
                              <!-- 사진첨부 가능해지면 처리 예정(23.02.09 10:22) -->
                              <img 
                                 srcset="resources/imgs/thumbnail/thum (${ran}).jpg"
                                 src="resources/imgs/thumbnail/thum (${ran}).jpg"
                                 decoding="async" data-nimg="future-fill" loading="lazy"
                                 style="position: absolute; height: 100%; width: 100%; left: 0; top: 0; right: 0; bottom: 0; color: transparent">
                           </figure>
                           <div class="css-1gw9rd1">
                              <div>
                                 <div role="button" tabindex="0">
                                    <p class="summary__company-name css-fk1zjv">${jobPosting.user_company}<!--회사명-->
                                    </p>
                                 </div>
                                 <div role="button" tabindex="0">
                                    <h3 class="summary__title css-1to8sx0">${jobPosting.title}
                                    </h3>
                                 </div>
                              </div>
                              <ul class="css-1kivyvq">
                              	<c:forEach items= '${jobPosting.languageTags }' var='postingTag'>
                              		<li class="css-1uz98zw">
                                    	<p class="css-1cyvqo4">${postingTag}</p>                                	
                                    </li>
                              	</c:forEach>
                              </ul>
                              <div class="css-1rtzn1u">
                                 <span>
                                    <p class="css-oz575p">${jobPosting.minCareer}~${jobPosting.maxCareer}년
                                       <!--ex.주니어 (1~3년) if넣어서 경력에 따른 표현 (+ 안 쓸 것 같음 귀찮아(23.02.09 10:22))-->
                                    </p>
                                 </span>
                                 <div class="css-106dojg"></div>
                                 <span>
                                    <p class="css-oz575p">${jobPosting.address}
                                    </p>
                                 </span>
                              </div>
                           </div>
                        </a> <!-- 북마크 버림(23.02.09 10:22) -->
                     </article>
                  </li>
               </c:forEach>
               <!-- c태그 forEach 실행 종료(채용공고 데이터) -->


            </ul>
         </section>
         <section class="css-xi4ft8">
            <h2 class="css-6gjqqg">요즘 핫한 직업</h2>
            <ul class="css-pjp278">
            <c:forEach items='${jobGroup }' var='occ_sub'>
            	<li>
                  <div href="/positions?jobGroup=DEVELOPER&amp;job=BACKEND_DEVELOPER" class="css-o1ev2s">
                  <!-- href 나중에 변경 필요(23.02.09 10:22) -->
                     <h3 class="skill-tag-link__name css-b3w4y1">${occ_sub}</h3>
                  </div>
               </li>
            </c:forEach>
            </ul>
         </section>
      </div>
      </main>
<%@include file = "../include/footer.jsp" %>