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
<title>Pass.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/final.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">

	$().ready(function()
	{
		$("#pageMoveBtn").click(function()
		{
			$(location).attr("href", "extrainformsmoke.action");
		});
	});

</script>
</head>
<body>

<c:import url="Menu.jsp"></c:import>

	<div class="main" style="background-color: white; display: flex; justify-content: center; align-items: center; height: 500px; margin-bottom: 100px; padding-top: 100px;">
	    <p style="text-align: center; margin: 50px 0; font-family: Cafe24Ssurround; font-size: 30pt; line-height: 150%;">
	        <img src="images/logoImg.png" style="width: 10%;"><br>
	        합격을 축하합니다!<br>
	        펫시터로 활동하기 전에 등록해야 할 정보들이 있어요!<br>
	        정보를 등록하러 갈까요?
		    <br><br>
		    <button type="button" id="pageMoveBtn" style="background-color: #F2F2F2; border: none; border-radius: 50px; width: 30%; height: 80px; font-family: Pretendard; font-size: 16pt; font-weight: 600;">등록하러 가기</button>
	    </p>
	</div>

	
	<div class="footer" style="background-color: #BBBBBB;">
		<br><br><br><br><br><br>
	</div>

</body>
</html>