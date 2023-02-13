<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <aside class="css-1xgvj9r">
                    <ul class="css-1b7sljm">
                    	
                        <li class="css-e0v95d"><a href="/ex/info" class="css-tukp59">MY 홈</a></li>
                       <c:choose>
									<c:when test="${user_autho == 'ROLE_COMPANY'}">
										<li class="css-e0v95d"><a href="/ex/info" class="css-tukp59">나의 공고 확인</a></li>
									</c:when>
									<c:otherwise>
						
									</c:otherwise>
								</c:choose>
                        <li class="css-e0v95d"><a href="/ex/infoUp" class="css-jvnoiv">내 정보 수정</a></li>
                        <li class="css-e0v95d"><a href="/ex/infoDel" class="css-jvnoiv">회원 탈퇴</a></li>
                    </ul>
                    <div class="LNB__border-bottom css-4cw3x0"></div>
                </aside>