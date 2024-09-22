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
<title>DailyLog.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/final.css">
<style type="text/css">
	.main 
	{
		position: relative; /* 추가된 코드 */
		background-color: white;
	}

	.main::before 
	{
		content: '';
		position: absolute;
		top: 0;
		left: 0;
		right: 0;
		height: 7px; /* 그림자의 높이 */
		background: linear-gradient(to bottom, rgba(5, 5, 5, 0.1),
			rgba(0, 0, 0, 0)); /* 위쪽에만 그림자 */
		pointer-events: none; /* 요소에 클릭 등 이벤트가 영향을 주지 않도록 설정 */
	}

/* 
	.main .content
	{
		position: relative;
	}
	.main .content::before, .main .content::after 
	{
		z-index: -1;
		position: absolute;
		content: "";
		bottom: 15px;
		left: 10px;
		width: 50%;
		top: 80%;
		max-width: 300px;
		background: #777;
		-webkit-box-shadow: 0 15px 10px #777;
		-moz-box-shadow: 0 15px 10px #777;
		box-shadow: 0 15px 10px #777;
		-webkit-transform: rotate(-3deg);
		-moz-transform: rotate(-3deg);
		-o-transform: rotate(-3deg);
		-ms-transform: rotate(-3deg);
		transform: rotate(-3deg);
	}	
	.main .content::after
	{
	  -webkit-transform: rotate(3deg);
	  -moz-transform: rotate(3deg);
	  -o-transform: rotate(3deg);
	  -ms-transform: rotate(3deg);
	  transform: rotate(3deg);
	  right: 10px;
	  left: auto;
	} 
*/
</style>
</head>
<body>
	<br><br><br>
	<div class="header" style="display: flex; align-items: center; justify-content: space-between;">

		<div style="display: flex; align-items: center;">
			&nbsp;&nbsp;&nbsp;&nbsp; 
			<img src="images/logo.png" style="width: 150px; vertical-align: middle;">
		</div>

		<div id="tab" style="display: flex; align-items: center;">
	        <a>홈</a>
	        <a>펫시팅</a>
	        <a>커뮤니티</a>
	        <a href="MyPagePetPartners.jsp">마이페이지</a>
    	</div>
    
	    <div style="display: flex; align-items: center;">
	        <img src="images/bell.png" style="width: 25px; margin-left: 10px;">
	        <img src="images/gear.png" style="width: 25px; margin-left: 10px;">
	        <img src="images/user.png" style="width: 30px; margin-left: 10px;">
	        &nbsp;&nbsp;&nbsp;&nbsp;
	    </div>
	</div>
	<br>
	<div class="main" style="background-color: white; display: flex; justify-content: space-between;">
		<br><br>
		<div class="left" style="font-family: Pretendard; font-size: 14pt; width: 20%; text-align: right;">
			<br><br> 
			<a href="DailyLog.jsp" style="font-weight: 800; line-height: 150%;">일지&nbsp;&nbsp;&nbsp;&nbsp;<br></a>
			<a href="HealthLog.jsp" style="font-weight: 500;">건강수첩&nbsp;&nbsp;&nbsp;&nbsp;</a>
		</div>
		<div class="content" style="width: 60%; text-align: center; font-size: 20pt; font-weight: 600;">
			<br><br>
			<select style="border: none; font-size: 18pt;">
				<option>2024</option>
			</select>
			년			
			<select style="border: none; font-size: 18pt;">
				<option>9</option>
			</select>
			월
			<select style="border: none; font-size: 18pt;">
				<option>1</option>
			</select>
			일
			<button type="button" style="border: none; background-color: white; vertical-align: middle;"><img src="images/calendar.png" style="width: 20px;"></button>
			<br><br>
			<div style="display: flex; justify-content: space-around;">
				<div style="width:10%; display: flex; align-items: center; justify-content: center; color: gray;">
					◀
				</div>
				<div style="width: 80%; border-radius: 10px; box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.15); display: flex; justify-content: space-around;">
					<div style="width: 52%; font-size: 12pt; font-weight: 500; text-align: left; display: flex; flex-direction: column; justify-content: center; align-items: center;">
						<img src="images/dailyDog.jpg" style="width: 80%; border: 5px solid #BBBBBB; border-radius: 5px;">
						<br><br>
						<div style="width: 80%; border: none;">
						<br>
						오늘은 마루랑 새로운 코스로 산책을 갔다.<br>
						<hr style="border: 1px solid #BBBBBB;">
						꽃이 예쁘게 피어 있어서 마루와 함께 사진을 찍었다.<br>
						<hr style="border: 1px solid #BBBBBB;">
						너무 귀여운 사진이다~
						<hr style="border: 1px solid #BBBBBB;">
						<br><br>
						</div>
					</div>
					
					<hr style="border: 1px solid #F2F2F2;">
				
					<div style="width: 45%; text-align: left; font-size: 12pt; font-weight: 400;">
						<br><br>
						<span style="font-size: 14pt; font-weight: 600;">사료</span>
						<div style="display: flex; justify-content: space-between;">
							<div style="width: 20%; font-weight: 500;">
								<hr style="border: 1px solid #F2F2F2;">
								힐스
								<hr style="border: 1px solid #F2F2F2;">
								로얄캐닌 
								<hr style="border: 1px solid #F2F2F2;">
							</div>
							<div style="width: 80%;">
								<hr style="border: 1px solid #F2F2F2;">
								60g 
								<hr style="border: 1px solid #F2F2F2;">
								40g 
								<hr style="border: 1px solid #F2F2F2;">
							</div>
						</div>
								
						<br>
						<span style="font-size: 14pt; font-weight: 600;">영양제</span>
						<hr style="border: 1px solid #F2F2F2;">
						닥터바이 브레스
						<hr style="border: 1px solid #F2F2F2;">
						본아페티 브레스캡스
						<hr style="border: 1px solid #F2F2F2;">
						디어랩스 울애기쌩쌩
						<hr style="border: 1px solid #F2F2F2;">
						
						<br>
						<span style="font-size: 14pt; font-weight: 600;">간식</span>
						<hr style="border: 1px solid #F2F2F2;">
						고구마말랭이
						<hr style="border: 1px solid #F2F2F2;">
						북어트릿
						<hr style="border: 1px solid #F2F2F2;">
						닭연골
						<hr style="border: 1px solid #F2F2F2;">
						
						<br>
						<span style="font-size: 14pt; font-weight: 600;">산책</span>
						<hr style="border: 1px solid #F2F2F2;">
						16:43 ~ 17:20
						<hr style="border: 1px solid #F2F2F2;">
						21:30 ~ 22:10
						<hr style="border: 1px solid #F2F2F2;">

						<br>
						<span style="font-size: 14pt; font-weight: 600;">목욕</span>&nbsp;&nbsp;						
						<span style="font-size: 14pt;">O</span>
						
						<br><br>
						<span style="font-size: 14pt; font-weight: 600;">특이사항</span><br>	
						<hr style="border: 1px solid #F2F2F2;">
						평소보다 밥을 급하게 먹었다.<br>
						<hr style="border: 1px solid #F2F2F2;">
						덜 씹고 넘긴 것 같아 걱정이다.				
						<hr style="border: 1px solid #F2F2F2;">
						
						<br><br><br>
					</div>			
				</div>
				<div style="width: 10%; display: flex; align-items: center; justify-content: center; color: gray;">
					▶
				</div>
			</div>
		</div>
		<div style="width: 20%;"></div>
	</div>
	
	<br><br>

	<div style="text-align: center;">
		<form action="DailyLogForm.jsp">
			<button type="submit" style="width: 100px; border: none; border-radius: 20px; background-color: #F2F2F2; font-size: 12pt; font-weight: 600; line-height: 80%;"><br>수정하기<br><br></button>
		</form>
	</div>

	<br><br><br>
	
	<div class="footer" style="background-color: #BBBBBB;">
		<br><br><br><br><br><br>
	</div>

</body>
</html>