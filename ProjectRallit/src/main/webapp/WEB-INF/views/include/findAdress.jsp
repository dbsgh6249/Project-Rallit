<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script
	src="${pageContext.request.contextPath }/resources/js/daumpost.js"></script>
<script type="text/javascript">
	function reg() {
		var addr1 = $("#addr1").val()
		var full_address = $("#full_address").val()
		var addr3 = $("#user_city").val()
		user_province = addr2;
		$("full_address").val(full_address)
		fo.submit()
	}
	function daumPost() {
		new daum.Postcode({
			oncomplete : function(data) {
				//도로명일 경우 R, 지번일 경우 J 의 값을 가지고 있다.
				console.log('data.userSelectedType : ' + data.userSelectedType)
				console.log('data.roadAddress : ' + data.roadAddress)
				console.log('data.jibunAddress : ' + data.jibunAddress)
				console.log('data.zonecode : ' + data.zonecode)
				var addr = ""
				if (data.userSelectedType == 'R') {//도로명일 경우 R
					addr = data.roadAddress
				} else {//지번일 경우 J
					addr = data.jibunAddress
				}
				$("#full_address").val(addr)
				$("#addr3").focus()

			}
		}).open()
	}
</script>