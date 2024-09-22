<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JobApplication.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/final.css">
</head>
<body>

<br><br><br>

<div class="header" style="display: flex; align-items: center; justify-content: space-between;">

    <div style="display: flex; align-items: center;">
    	&nbsp;&nbsp;&nbsp;&nbsp;
        <img src="images/logo.png" style="width: 120px; vertical-align: middle;">
    </div>
    
    <div id="tab" style="display: flex; align-items: center;">
        <a style="font-size: 14pt; margin-left: 20px;">홈</a>
        <a style="font-size: 14pt; margin-left: 30px;">펫시팅</a>
        <a style="font-size: 14pt; margin-left: 30px;">커뮤니티</a>
        <a href="MyPagePetPartners.jsp" style="font-size: 14pt; margin-left: 30px;">마이페이지</a>
    </div>
    
    <div style="display: flex; align-items: center;">
        <img src="images/bell.png" style="width: 20px; margin-left: 10px;">
        <img src="images/gear.png" style="width: 20px; margin-left: 10px;">
        <img src="images/user.png" style="width: 25px; margin-left: 10px;">
        &nbsp;&nbsp;&nbsp;&nbsp;
    </div>
</div>
<br>

<div class="main" style="background-color: #F2F2F2;">
	<br><br>
	<div style="background-color: white; width: 40%; margin: 0 auto; text-align: center;">
		<br><br>
		<div>
		<img src="images/logoImg.png" style="width: 70px; vertical-align: middle;"><br>
		<img src="images/logoName.png" style="width: 50px; vertical-align: middle;">
		</div>
		<br><br>
		<div style="display: flex; justify-content: space-between;">
			<div style="width: 5%;"></div>
			<div style="width: 50%; margin: 0 auto; background-color: #F2F2F2; font-weight: 800; border-right: 3px solid white;">
				<br>
				견주로 시작하기
				<br><br>
			</div>
			<div style="width: 50%; margin: 0 auto; background-color: #F2F2F2; font-weight: 800;">
				<br>
				펫시터로 시작하기
				<br><br>
			</div>
			<div style="width: 5%;"></div>
		</div>
		<div style="width: 90%; margin: 0 auto; display: flex; justify-content: space-between; border: 2px solid #F2F2F2;">
			<div style="width: 50%; margin: 0 auto; font-weight: 600;">
				<br><br>
				<img src="images/user_1.png" style="width: 100px;"><br>
				<a style="font-size: 10pt; vertical-align: top;">사진 변경하기</a>
			</div>
			<div style="width: 50%; margin: 0 auto; text-align: left;">
				<br><br>
				아이디 *<br>
				<input type="text" style="width: 100px;">
				<span style="font-family: Pretendard; font-weight: 400; font-size: 12pt; color: red; display: none;">아이디는 필수입력항목입니다.</span>
				<br><br>
				비밀번호 *<br>
				<input type="text" style="width: 150px;">
				<span style="font-family: Pretendard; font-weight: 400; font-size: 12pt; color: red; display: none;">비밀번호는 필수입력항목입니다.</span>
				<br><br>
				이름 *<br>
				<input type="text" style="width: 100px;"> 
				<span style="font-family: Pretendard; font-weight: 400; font-size: 12pt; color: red; display: none;">이름은 필수입력항목입니다.</span>
				<br><br>
				주민등록번호 *<br>
				<input type="text" style="width: 100px;"> - <input type="text" style="width: 10px;">******
				<span style="font-family: Pretendard; font-weight: 400; font-size: 12pt; color: red; display: none;">주민등록번호는 필수입력항목입니다.</span>
				<br><br>
				주소지 *<br>
				<input type="text" style="width: 100px;">
				<button type="button">검색</button><br>
				<input type="text" style="width: 300px;"><br>
				<input type="text" style="width: 300px;"><br>
				<span style="font-family: Pretendard; font-weight: 400; font-size: 12pt; color: red; display: none;">주소지는 필수입력항목입니다.</span>
				<br>
				이메일 *<br>
				<input type="text" style="width: 100px;"> @ <input type="text" style="width: 100px;">
				<select>
					<option>직접입력</option>
					<option>naver.com</option>
					<option>gmail.com</option>
					<option>daum.net</option>
				</select>
				<span style="font-family: Pretendard; font-weight: 400; font-size: 12pt; color: red; display: none;">이메일은 필수입력항목입니다.</span>
				<br><br>
				연락처<br>
				<input type="text" style="width: 150px;">
				<br><br>
				<button type="button">가입하기</button>
				<br><br>
			</div>
		</div>
		<br><br>
	</div>	
	<br><br>
</div>

<div class="footer" style="background-color: #BBBBBB;">
	<br><br><br><br><br><br>
</div>

</body>
</html>