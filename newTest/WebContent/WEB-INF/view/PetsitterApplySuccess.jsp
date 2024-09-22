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
<title>PetsitterApplySuccess.jsp</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">

	$().ready(function()
	{
		$("#pageMoveBtn").click(function()
		{
			$(location).attr("href", "main.action");
		});
	});

</script>
</head>
<body>
<c:import url="Menu.jsp"></c:import>


<div class="main" style="background-color: #F2F2F2;">
	<br><br>
	<div class="left" style="font-family: Pretendard; font-size: 14pt; width: 20%; float: left; text-align: right;">

	</div>
	<div style="font-family: Cafe24Ssurround; font-size: 28pt; width: 60%; margin: 0 auto; text-align: center;">
		댕댕 펫시터에 지원이 완료되었습니다!
		<div style="background-color: white; font-family: Pretendard; font-weight: 600; font-size: 12pt;">
			<hr>
			<br>
			<div style="width: 60%; margin: 0 auto; font-family: Pretendard; font-weight: 600; font-size: 18pt; text-align: center;" >
				<img src="images/thankyou.jpg" style="width: 200px; vertical-align: middle;"><br>
				지원해 주셔서 감사합니다.<br>
				결과발표를 기다려주세요!<br>
				<br><br>
			
			<button type="button" id="pageMoveBtn" style="font-size: 20pt; width: 250px; height: 50px;">홈으로 돌아가기 </button>
			</div>			
			<br><br><br>
		</div>
	</div>
	<br><br>
</div>
</body>
</html>