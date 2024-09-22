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
<title>HealthLog.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/final.css">
<style type="text/css">
.main {
	position: relative; /* 추가된 코드 */
	background-color: white;
}

.main::before {
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
<c:import url="Menu.jsp"></c:import>
	<br>
	<br>
	<br>
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
			<a href="DailyLog.jsp" style="font-weight: 500; line-height: 150%;">일지&nbsp;&nbsp;&nbsp;&nbsp;<br></a>
			<a href="HealthLog.jsp" style="font-weight: 800;">건강수첩&nbsp;&nbsp;&nbsp;&nbsp;</a>
		</div>
		<div class="content" style="width: 60%; text-align: center; font-size: 20pt; font-weight: 600;">
			<br><br> 
			<select style="border: none; font-size: 18pt;">
				<option>2024</option>
			</select> 년 <select style="border: none; font-size: 18pt;">
				<option>9</option>
			</select> 월 <select style="border: none; font-size: 18pt;">
				<option>1</option>
			</select> 일
			<button type="button" style="border: none; background-color: white; vertical-align: middle;">
				<img src="images/calendar.png" style="width: 20px;">
			</button>
			<br><br>
			<div style="display: flex; justify-content: space-around;">
				<div style="width: 20%; display: flex; align-items: center; justify-content: center; color: gray;">
					◀
				</div>
    			<div style="width: 60%; border-radius: 10px; box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.15); display: flex; justify-content: space-between; padding: 20px 0;">
        			<div style="width: 35%; font-size: 14pt; font-weight: 600; text-align: right; line-height: 90%;">
            			<br>
            			병원명<br><br>
            			몸무게<br><br>
            			진료종류<br><br>
            			병명<br><br>
            			진단결과<br><br>            								
            			비용<br><br>            								
            			다음예약일
            			<br><br>            								
        			</div>			
	        		<div style="width: 63%; text-align: left; font-size: 14pt; font-weight: 400; line-height: 90%;">
			            <br>
			            우리 동물병원<br><br>
			            3.5kg<br><br>
			            질병<br><br>
			            슬개골 탈구<br><br>
			            지난 방문 때보다 완화됨. 산책 30분 이내로 권장.<br><br>
			            70,000원<br><br>			            
			            2024-09-10
			            <br><br>	            
			        </div>			
    			</div>
    			<div style="width: 20%; display: flex; align-items: center; justify-content: center; color: gray;">
					▶
				</div>
			</div>
		</div>
		<div style="width: 20%;"></div>
	</div>

	<br>
	<br>

	<div style="text-align: center;">
		<form action="HealthLogForm.jsp">
			<button type="submit" style="width: 100px; border: none; border-radius: 20px; background-color: #F2F2F2; font-size: 12pt; font-weight: 600; line-height: 80%;">
				<br>수정하기<br>
				<br>
			</button>
		</form>
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