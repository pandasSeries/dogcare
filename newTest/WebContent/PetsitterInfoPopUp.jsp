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
			<img src="images/user_1.png" style="width: 20%;"><br><br>
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
				<span style="font-weight: 600;">대형견</span>&nbsp;&nbsp;&nbsp;5건
			</div>
			<div style="width: 33%; margin-top: 20px; margin-bottom: 20px;">
				<span style="font-weight: 600;">중형견</span>&nbsp;&nbsp;&nbsp;5건
			</div>
			<div style="width: 33%; margin-top: 20px; margin-bottom: 20px;">
				<span style="font-weight: 600;">소형견</span>&nbsp;&nbsp;&nbsp;5건
			</div>	
		</div>
		
		<div style="background-color: #F2F2F2; font-size: 14pt; font-weight: 600; text-align: center;">
			<br>
			최근평가
			<br><br>
		</div>
		<div style="display: flex; justify-content: space-around; text-align: center; align-items: center;">
			<div style="width: 10%; margin-top: 20px; margin-bottom: 10px;">
				<img src="images/user.png" style="width: 60%;">
			</div>
			<div style="width: 10%; margin-top: 20px; margin-bottom: 10px; font-weight: 600;">
				8.0/10
			</div>
			<div style="width: 5%;"></div>
			<div style="width: 70%; margin-top: 20px; margin-bottom: 10px;">
				사진이랑 코멘트를 성의있게 남겨주셔서 좋았어요!
			</div>		
			<div style="width: 5%;"></div>
		</div>
		<hr style="border: 1px solid #F2F2F2;">
		<div style="display: flex; justify-content: space-between; text-align: center; align-items: center;">
			<div style="width: 10%; margin-top: 20px; margin-bottom: 10px;">
				<img src="images/user.png" style="width: 60%;">
			</div>
			<div style="width: 10%; margin-top: 20px; margin-bottom: 10px; font-weight: 600;">
				8.0/10
			</div>
			<div style="width: 5%;"></div>
			<div style="width: 70%; margin-top: 20px; margin-bottom: 10px;">
				산책 요청했는데 보리가 넘 만족스러웠는지 밤에 꿀잠 자더라구용 추천합니당
			</div>		
			<div style="width: 5%;"></div>
		</div>
		<hr style="border: 1px solid #F2F2F2;">
		
		<div style="background-color: #F2F2F2; font-size: 14pt; font-weight: 600; text-align: center;">
			<br>
			보유자격증
			<br><br>
		</div>
		<div style="text-align: center; font-weight: 500; margin-top: 20px; margin-bottom: 20px;">
			자격증이름 <span style="color: gray; font-weight: 400;">&nbsp;&nbsp;등록기관</span>		
		</div>
		<hr style="border: 1px solid #F2F2F2;">
		<div style="text-align: center; font-weight: 500; margin-top: 20px; margin-bottom: 20px;">
			자격증이름 <span style="color: gray; font-weight: 400;">&nbsp;&nbsp;등록기관</span>		
		</div>
		<hr style="border: 1px solid #F2F2F2;">
		<div style="text-align: center; font-weight: 500; margin-top: 20px; margin-bottom: 20px;">
			자격증이름 <span style="color: gray; font-weight: 400;">&nbsp;&nbsp;등록기관</span>		
		</div>
		<hr style="border: 1px solid #F2F2F2;">
		
		<br><br>
		<div style="text-align: center;">
		<button type="button" style="width:15%; height: 40px; border: none; border-radius: 5px; background-color: #F2F2F2; font-weight: 600;">닫기</button>
		</div>
	</div>
</body>
</html>