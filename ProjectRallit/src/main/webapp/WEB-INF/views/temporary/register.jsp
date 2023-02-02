<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h1>User 가입 TEST.jsp</h1>
    <hr>
    <form action="/ex/temporary/register" method="POST">
       1. user_id : <input type="text" name="user_id" id="id"> <br>
       2. user_pw : <input type="password" name="user_pw" id="pw"><br>
       3. user_name : <input type="text" name="user_name" id="name"><br>
       4. user_phone : <input type="text" name="user_phone" id="phone"><br>
       5. user_company : <input type="text" name="user_company" id="company"><br>
       6. user_province(도,시) : <input type="text" name="user_province" id="province"><br>
       7. user_city(시,군,구) : <input type="text" name="user_city" id="city"><br>
       8. user_address(상세 주소) : <input type="text" name="user_address" id="address"><br>
        <input type="submit" value="가입"><br>
    </form>
</body>
</html>