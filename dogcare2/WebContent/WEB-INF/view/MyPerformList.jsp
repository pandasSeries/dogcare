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
<title>MyPerformList.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/final.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">

	$().ready(function()
	{
		$("#pageMoveBtn").click(function()
		{
			$(location).attr("href", "petsittingperformform.action?performCd=" + $("button[name='pageMoveBtn']").val())
		});
	});

</script>
</head>
<body>

	<c:import url="Menu.jsp"></c:import>
	
	<div class="main" style="background-color: white; display: flex; justify-content: space-between;">
		<br><br>
		<div class="left" style="font-family: Pretendard; font-size: 14pt; width: 20%; text-align: right;">
			<br><br> 
			<a href="MyDogApplyList.jsp" style="font-weight: 500; line-height: 150%;">지원내역&nbsp;&nbsp;&nbsp;&nbsp;<br></a>
			<a href="MyDogPetsittingList.jsp" style="font-weight: 800;">이용내역&nbsp;&nbsp;&nbsp;&nbsp;</a>
		</div>
		<div class="content" style="width: 60%; text-align: left; font-size: 18pt; font-weight: 600;">
			<br><br>
			&nbsp;&nbsp;&nbsp;&nbsp;수행내역
			<hr style="border: 1px solid #F2F2F2;">
			<table style="font-size: 12pt; width: 100%; text-align: center;">
				<tr style="background-color: #F2F2F2; font-weight: 600;">
					<th>예약일시</th>
					<th style="width: 20%;"></th>
				</tr>
				<c:forEach var="perform" items="${PerformList }">
					<tr style="font-weight: 400; border-bottom: 1px solid #F2F2F2;">
						<td>${perform.work_date }</td>
						<td>
							<button type="button" id="pageMoveBtn" name="pageMoveBtn" value="${perform.perform_cd }">수행하기</button>
						</td>
					</tr>
				</c:forEach>
			</table>
			<br><br>
		</div>
		<div style="width: 20%;"></div>
	</div>

	<br><br><br>

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