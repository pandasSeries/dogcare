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
<title>ExtraInformWeek.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/final.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">

	/*
	$().ready(function()
	{
		$("#pageMoveBtn").click(function()
		{
			$(location).attr("href", "extrainformsize.action");
		});
	});
	*/

</script>
</head>
<body>
	<c:import url="Menu.jsp"></c:import>

	<div class="main" style="background-color: #F2F2F2;">
		<br>
		<br>

		<div style="font-family: Cafe24Ssurround; font-size: 28pt; width: 50%; margin: 0 auto; text-align: center;">
			근무 가능 요일
			<div style="background-color: white; font-family: Pretendard; font-weight: 600; font-size: 12pt;">
				<hr>
				<br>
				<div style="font-family: Cafe24Ssurround; font-size: 15pt; width: 60%; margin: 0 auto; text-align: center;">
					<div style="margin-top: 10px; text-align: center; background-color: #f8d7da; color: #721c24; border: 1px solid #f5c6cb; padding: 15px; border-radius: 5px;">
						<p style="margin: 10px 0 0;">
							가능한 근무가능요일을 <strong style="font-size: 20pt; text-decoration: underline;">모두</strong>
							선택해주세요!
						</p>
					</div>
					<form action="weekinsert.action" method="post">
						<div style="width: 80%; margin: 0 auto; text-align: left;">
							<div style="display: flex; flex-wrap: wrap; justify-content: center; padding-top: 50px;">
								<c:forEach var="week" items="${week }">
									<div style="display: inline-flex; align-items: center; margin-right: 20px;">
										<input type="checkbox" name="weekDays" value="${week.week_cd }"
										style="transform: scale(1.5); margin-right: 5px;"> 
										<span
										style="font-size: 14pt;">${week.week}</span>
									</div>
								</c:forEach>
							</div>
							
							<div style="width: 60%; margin: 0 auto; text-align: center; margin-top: 50px; margin-bottom: 50px;">
								<button type="submit" style="font-family: Cafe24Ssurround; font-size: 20pt;" id="pageMoveBtn">	
								다음으로
								</button>
							</div>
						</div>
					</form>
				</div>
				<br>
				<br>
			</div>
		</div>
	</div>

		<div class="footer" style="background-color: #BBBBBB;">
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
		</div>
</body>
</html>
