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
<title>Fail.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/final.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">

	$().ready(function()
	{
		$("#createAccountBtn").click(function()
		{
			$(location).attr("href", "memberinsertform.action");
		});
		
		$("#loginBtn").click(function()
		{
			$(location).attr("href", "loginform.action");
		});
	});

</script>
</head>
<body>

<c:import url="Menu.jsp"></c:import>

	<div class="main" style="background-color: white; display: flex; justify-content: center; align-items: center; height: 500px; margin-bottom: 100px; padding-top: 100px;">
	    <p style="text-align: center; margin: 50px 0; font-family: Cafe24Ssurround; font-size: 30pt; line-height: 150%;">
	        <img src="images/logoImg.png" style="width: 10%;"><br>
	        회원가입 후에 이용할 수 있는 서비스에요!<br>
	  		회원가입을 먼저 해주세요!
		    <br><br>
		    <button type="button" id="createAccountBtn" style="background-color: #F2F2F2; border: none; border-radius: 50px; width: 30%; height: 80px; font-family: Pretendard; font-size: 16pt; font-weight: 600; margin-bottom: 10px;">회원가입하기</button><br>
		    <button type="button" id="loginBtn" style="background-color: #F2F2F2; border: none; border-radius: 50px; width: 30%; height: 80px; font-family: Pretendard; font-size: 16pt; font-weight: 600; margin-bottom: 10px;">로그인하기</button><br>
	    </p>
	</div>

	
	<div class="footer" style="background-color: #BBBBBB;">
		<br><br><br><br><br><br>
	</div>

</body>
</html>