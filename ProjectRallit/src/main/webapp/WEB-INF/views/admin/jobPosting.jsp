<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<ul class="css-1nwykk">
               <c:forEach items="${list }" var="jobPosting">
                  <!-- c태그 forEach 실행 시작(채용공고 데이터) -->
                  <li>
                     <article class="css-1pr9edg">
                        <a href="/ex/jpd"> <!-- <a href="/positions/1235">  -->
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
</body>
</html>