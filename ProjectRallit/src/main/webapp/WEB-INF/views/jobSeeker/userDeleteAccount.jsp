<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@include file = "../include/header.jsp" %> <!-- header섹션 -->
 <link href="${pageContext.request.contextPath}/resources/css/jobPostingDetail.css"
      rel="stylesheet" type="text/css">
  <main class="css-ac13em">
            <div class="css-cho4vs">
                <nav aria-label="top-bar" class="css-ipnh08">
                    <div class="css-ttryxt">
                        <div class="rallit-icon  css-1sepp5i">
                    
                </nav>
                <div class="css-wopn3h">
                    <div class="css-588s5y">
                        <h1 class="css-19w2d2h">${username }님,<br>정말로 랠릿을 떠나실건가요? 😢</h1>
                    </div>
                    <div class="delete-account__divider css-1wy2d5j"></div>
                    <div>
                        <div class="css-yqh0t0">
                            <p class="css-101o7j4">- 통합계정은 인프런과 랠릿 서비스를 모두 사용하실 수 있는 계정입니다. <span
                                    class="css-dveqd6">통합계정을 탈퇴하시면 인프런과 랠릿 서비스에서 모두 탈퇴됩니다.</span><br>- 탈퇴는 인프런 프로필 페이지에서
                                가능합니다.<br>- 탈퇴 시 회원님의 이력서를 포함하여 회원님의 계정에 저장된 모든 정보가 영구적으로 삭제되며, 다시는 복구할 수 없습니다.<br>- 이력서
                                저장을 원하실 경우, 탈퇴 이전에 이력서 페이지에서 다운로드해 주시기 바랍니다.<br>- 기업에 대한 부정 이용 방지를 위해, 기업에 대한 지원 내역은 관련
                                법령에 의거하여 탈퇴 후 최장 5년간 저장됩니다.</p>
                            <p class="css-101o7j4">위의 내용에 동의하여 탈퇴를 원하실 경우, 아래의 “탈퇴하기” 버튼을 클릭해 주세요.</p>
                        </div>
                        <div class="css-1v7dd7t"><button onclick="alert('탈퇴?? 아 에바임 ㅋㅋ 진짜 다시 생각하셈')" class="css-1cbgkmn" type="button">탈퇴하기</button></div>
                    </div>
                </div>
            </div> 
        </main>


<%@include file = "../include/footer.jsp" %>; <!-- footer섹션 -->