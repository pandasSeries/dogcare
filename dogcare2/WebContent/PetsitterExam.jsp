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
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/final.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">

	$().ready(function() 
	{
		$("#submitBtn").click(function() {
			
			$(location).attr("href", "petsitterexam.action");	
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
		펫시터 자격 응시 시험 
		<div style="background-color: white; font-family: Pretendard; font-weight: 600; font-size: 12pt;">
			<hr>
			<br>
			<div style="width: 60%; margin: 0 auto; font-family: Pretendard; font-weight: 600; font-size: 18pt; text-align: center;" >
				<div >
				</div>
			<button type="button" style="font-size: 20pt; width: 250px; height: 50px;" id="submitBtn">응시하기 </button>
			</div>			
			<br><br><br>
		</div>
	</div>
	<br><br>
</div>

</body>
</html>