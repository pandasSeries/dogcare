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
<title>petsitterExamResult.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/final.css">
<script type="text/javascript">
	var score = ${score};
	
	function scoreCheck()
	{
		if (score>=50)
		{
			document.getElementById("pass").style.display = "inline";
		}
		else
		{
			document.getElementById("nonpass").style.display="inline"; 
		}
	}
	
	$().ready(function()
	{
		$("#pageMoveBtn").click(function()
		{
			$(location).attr("href", "main.action");
		});
	});
	
</script>

</head>
<body onload="scoreCheck()">

<c:import url="Menu.jsp"></c:import>

<div class="main" style="background-color: white; display: flex; justify-content: space-between;">
	<!-- <hr style="color: #F2F2F2; box-shadow: 0px 2px 2px gray;"> -->
	<br><br>
	<div style="background-color: white; width: 60%; margin: 0 auto;">
		<br><br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<img src="images/user_1.png" style="width: 70px; vertical-align: middle;">
		&nbsp;&nbsp;
			<span style="font-family: 'Pretendard'; font-weight: 700; font-size: 16pt;">김예지</span>
			님, 안녕하세요!&nbsp;<br><hr>
			
			<div style="vertical-align: middle; text-align: center; margin-top: 20px;">
				시험 응시 결과<br> 
				점수 : ${score }점<br>
				<span id="pass" style="display: none;">축하합니다. 합격하셨습니다.</span>
				<span id="nonpass" style="display: none;" >너 불합격</span>
				<br><br>
				<button type="button" id="pageMoveBtn">홈으로 돌아가기</button>
			</div>

		<br><br>
	</div>
	</div>


</body>
</html>
