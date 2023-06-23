<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file = "../include/header.jsp"%>
      <link href="${pageContext.request.contextPath}/resources/css/myInfo.css"
      rel="stylesheet" type="text/css">
     <style> 
     .updateButton{
     font-size: 15px;
    font-weight: bolder;
    color: white;
    margin-top: 5px;
    margin-bottom: 10px;
    border-radius: 5px;
    border-width: 1px;
    height: 40px;
    width: auto;
    background-color: #6e93ac;

    cursor: pointer;
    margin-top:30px;
    
    }
    input::placeholder{
  font-size:12px;
    color: rgba(0, 0, 0, 0.3);
  }
     
    	input:focus{
    	    	background-color:rgb(240, 240, 240);
    	
    	}
    	input{
    	cursor:default;
    	background-color:rgb(240, 240, 240);
    	}
    	input:hover{
    	 background-color: rgb(240, 240, 240);
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
                    <h1 class="css-vvbno4">내 정보</h1>
                    <div class="css-uaw2kl">
                        <div class="css-9j3f84">
                          
                           <div>
<div>
				<input type="hidden" name="user_company">
				<p>이메일</p>
				<input type="text" name="user_id"
					placeholder="${user.user_id }" readonly><br>
				<p>비밀번호</p>
				<input type="password" name="user_pw" placeholder="******" readonly><br>
				<p>회사명</p>
				<input type="text" name="user_company" placeholder="${user.user_company }" readonly><br>
				<p>담당자 이름</p>
				<input type="text" name="user_name" placeholder="${user.user_name }" readonly><br>
				<p>휴대폰 번호</p>
				<input type="text" name="user_phone"
					placeholder="${user.user_phone }" readonly><br>
					
					
				<p>주소</p>
				
	
				<input type="text" id="full_address" name="full_address" 
				placeholder="${user.user_province } ${user.user_city}" readonly><br>
				<input type="text" id="addr3" name="user_address" placeholder="${user.user_address }" readonly><br><br>


	<div style="max-width:400px; text-align:right;">
				<button class="updateButton" onclick="location.href='/ex/infoUp'">수정하기</button>
				</div>
				<br>
				<br>
			</div>
			                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </main>

<%@include file = "../include/footer.jsp" %>