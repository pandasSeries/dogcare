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
<title>Unregister.jsp</title>
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
	<div style="font-family: Cafe24Ssurround; font-size: 28pt; width: 60%; margin: 0 auto; text-align: center;">
		회원탈퇴
		<div style="background-color: white; font-family: Pretendard; font-weight: 500; font-size: 12pt;">
			<hr>
			<br><br>
			<div style="width: 80%; margin: 0 auto; text-align: center;">
				<div style="font-family: Cafe24Ssurround; font-size: 20pt; text-align: left;">
				정말 탈퇴하시겠어요?
				</div>
				<br><br>
				<div style="border: 1px solid black; text-align: left;">
				(견주로 탈퇴 시)<br>
				지금 탈퇴하시면 보리, 두부에 대한 케어 일지들이 전부 사라져요!<br>
				정말 탈퇴하시겠어요?
				</div>
				<br><br>
				<div style="border: 1px solid black; text-align: left;">
				(펫시터로 탈퇴 시)<br>
				지금 탈퇴하시면 000님이 펫시터로 활동하면서 쌓은 경력 내역들이 전부 사라져요!<br>
				정말 탈퇴하시겠어요?
				</div>
				<br><br>
				<button type="button">예</button>
				<button type="button">아니오</button>
			</div>
			<br><br>
		</div>
	</div>
	<br><br>
</div>

<div class="footer" style="background-color: #BBBBBB;">
	<br><br><br><br><br><br>
</div>

</body>
</html>