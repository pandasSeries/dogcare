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
<title>PetsitterInfoPopUp.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/final.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">

	$().ready(function()
	{
		$("#closeBtn").click(function()
		{
			window.close();
		});
	});

</script>
</style>
</head>
<body>
	<!-- 
	<div style="text-align: center;">
		<br>
		<img src="images/logoImg.png" style="width: 10%;">
		<br><br>
	</div> 
	-->
	<div style="font-family: Pretendard;">
	<br>
		<div style="text-align: center; font-size: 16pt;">
			<br>
			<c:if test="${petsitterInfo.gender=='남' }">
				<img src="images/user_m.png" style="width: 30%;">
			</c:if>
			<c:if test="${petsitterInfo.gender=='여' }">
				<img src="images/user_w.png" style="width: 30%;">
			</c:if>
			<br><br>
			<span style="font-weight: 600;">${petsitterInfo.name } 펫시터</span><br>
			<span style="font-size: 12pt; color: gray;">${petsitterInfo.age }세 / ${petsitterInfo.gender }</span>
			<br><br>
		</div>
		
		<div style="background-color: #F2F2F2; font-size: 14pt; font-weight: 600; text-align: center;">
			<br>
			수행건수
			<br><br>
		</div>
		<div style="display: flex; justify-content: space-around; text-align: center;">
			<br>
			<div style="width: 33%; margin-top: 20px; margin-bottom: 20px;">
				<span style="font-weight: 600;">대형견</span>&nbsp;&nbsp;&nbsp;${performDetail.perform_b_count }건
			</div>
			<div style="width: 33%; margin-top: 20px; margin-bottom: 20px;">
				<span style="font-weight: 600;">중형견</span>&nbsp;&nbsp;&nbsp;${performDetail.perform_m_count }건
			</div>
			<div style="width: 33%; margin-top: 20px; margin-bottom: 20px;">
				<span style="font-weight: 600;">소형견</span>&nbsp;&nbsp;&nbsp;${performDetail.perform_s_count }건
			</div>	
		</div>
		
		<div style="background-color: #F2F2F2; font-size: 14pt; font-weight: 600; text-align: center;">
			<br>
			최근평가
			<br><br>
		</div>
		<c:forEach var="review" items="${review }" varStatus="status">
			<div style="display: flex; justify-content: space-around; text-align: center; align-items: center;">
				<div style="width: 15%; margin-top: 20px; margin-bottom: 10px;">
					<img src="images/user.png" style="width: 35%;">
				</div>
				<div style="width: 5%; margin-top: 20px; margin-bottom: 10px; font-weight: 600;">
					${review.rating }/10
				</div>
				<div style="width: 5%;"></div>
				<div style="width: 70%; margin-top: 20px; margin-bottom: 10px; text-align: left;">
					${review.review }
				</div>		
				<div style="width: 5%;"></div>
			</div>
			<c:if test="${!status.last }">
				<hr style="border: 1px solid #F2F2F2;">
			</c:if>
		</c:forEach>
		
		<div style="background-color: #F2F2F2; font-size: 14pt; font-weight: 600; text-align: center;">
			<br>
			보유자격증
			<br><br>
		</div>
		<c:forEach var="lcs" items="${lcs }">
			<div style="display: flex; justify-content: space-around; text-align: center;">
				<div style="width: 30%;"></div>
				<div style="width: 40%; font-weight: 500; margin-top: 20px; margin-bottom: 20px;">
					${lcs.lcs_name }
				</div>
				<div style="width: 40%; margin-top: 20px; margin-bottom: 20px;">
				<span style="color: gray; font-weight: 400;">&nbsp;&nbsp;${lcs.lcs_man }</span>	
				</div>	
				<div style="width: 30%;"></div>
			</div>
			<hr style="border: 1px solid #F2F2F2;">
		</c:forEach>
		
		<br><br>
		<div style="text-align: center;">
		<button type="button" id="closeBtn" style="width:15%; height: 40px; border: none; border-radius: 5px; background-color: #F2F2F2; font-weight: 600;">닫기</button>
		</div>
	</div>
</body>
</html>