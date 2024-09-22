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
<title>DogNull.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/final.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">

	$().ready(function()
	{
		$("#pageMoveBtn").click(function()
		{
			$(location).attr("href", "doginsertform.action");
		});
	});

</script>
</head>
<body>

<c:import url="Menu.jsp"></c:import>

	<div class="main" style="background-color: white; display: flex; justify-content: center; align-items: center; height: 500px; margin-bottom: 100px; padding-top: 100px;">
	    <p style="text-align: center; margin: 50px 0; font-family: Cafe24Ssurround; font-size: 30pt; line-height: 150%;">
	        <img src="images/logoImg.png" style="width: 10%;"><br>
	        아직 등록된 반려견이 없어요!<br>
	        반려견을 등록하러 갈까요?
		    <br><br>
		    <button type="button" id="pageMoveBtn" style="background-color: #F2F2F2; border: none; border-radius: 50px; width: 30%; height: 80px; font-family: Pretendard; font-size: 16pt; font-weight: 600;">등록하러 가기</button>
	    </p>
	</div>

	
	<div class="footer" style="background-color: #BBBBBB;">
		<br><br><br><br><br><br>
	</div>

</body>
</html>