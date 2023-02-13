<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file = "../include/header.jsp"%>
<title>기업회원 마이페이지</title>
      <link href="${pageContext.request.contextPath}/resources/css/myInfo.css"
      rel="stylesheet" type="text/css">
          <style> 
     
     @keyframes up-down{
    	  from{
    	    transform: translatey(0px);
    	  }
    	  to{
    	    transform: translatey(-20px);
    	  }
    	}
.myinfoPic{
height:90%;
margin-left:200px;
margin-top:10px;
}
    	
    	</style>
     
     <main class="css-ac13em">
            <div class="css-ftt0tl">
                <nav class="css-uebuml">
                    <div class="css-1qtribh">
                        <div class="css-139kjpe"><span>MY 홈 - 기업 회원</span><button class="css-1vgm1p2" type="button">
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
                    <h1 class="css-vvbno4">MY 홈 - 기업 회원</h1>
                    <div class="css-uaw2kl">
                        <div class="css-9j3f84">
                            <header class="css-1en5oz">
                                <h2 class="my-dashboard__title css-fstzjo">환영합니다! 원하는 메뉴를 선택하십시오.</h2>
                            </header>
                           <div>
                           <img class="myinfoPic" src="resources/imgs/myinfo2.png" style="animation: up-down 2s infinite ease-in-out alternate; background-color:transparent;">
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </main>

<%@include file = "../include/footer.jsp" %>