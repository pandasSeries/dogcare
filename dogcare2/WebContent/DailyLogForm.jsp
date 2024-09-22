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
<title>DailyLogForm.jsp</title>
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
<c:import url="WEB-INF/view/Menu.jsp"></c:import>

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
				<div style="width: 90%; border-radius: 10px; box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.15); display: flex; justify-content: space-around;">
					<div style="width: 48%; display: flex; flex-direction: column; justify-content: center; align-items: center;">
						<br><br><br>
						<div style="width: 50%; border: 1px dotted #BBBBBB; border-radius: 10px; text-align: center;">
							<br><br>
							+<br>
							사진 추가하기
							<br><br><br>
						</div>
						<br><br>
						<textarea rows="10" cols="50" style="border: none; background-color: #F2F2F2;"></textarea>
						<br><br>
					</div>
					
					<hr style="border: 1px solid #F2F2F2;">
				
					<div style="width: 48%; text-align: left; font-size: 12pt; font-weight: 400;">
						<br><br>
						<span style="font-size: 14pt; font-weight: 600;">사료</span>&nbsp;&nbsp;
						
						<select>
							<option>사료</option>
							<c:forEach var="foodlist" items="${foodlist }">
								<option value="">${foodlist.feed_name}</option><!-- 하 여긴 들어가는거 보니까 되긴 되는데.... 미치겠네 진짜 -->
							</c:forEach>
						</select>
						<input type="text" style="width: 80px;">
						<input type="text" style="width: 20px;">&nbsp;g&nbsp;&nbsp;<button type="button">등록</button><br>
						<hr style="border: 1px solid #F2F2F2;">
						힐스 30g <span style="color : gray; font-size: 10pt;">2024.09.01 07:24</span><span style="float: right; color: gray;">x&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
						<hr style="border: 1px solid #F2F2F2;">
						로얄캐닌 40g <span style="color : gray; font-size: 10pt;">2024.09.01 07:24</span><span style="float: right; color: gray;">x&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
						<hr style="border: 1px solid #F2F2F2;">
						힐스 30g <span style="color : gray; font-size: 10pt;">2024.09.01 07:24</span><span style="float: right; color: gray;">x&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
						<hr style="border: 1px solid #F2F2F2;">
						
						<br>
						<span style="font-size: 14pt; font-weight: 600;">영양제</span>&nbsp;&nbsp;
						<select>
							<option>종류</option>
						</select>
						<select>
							<option>영양제</option>
						</select>
						<input type="text" style="width: 80px;">
						<button type="button">등록</button><br>
						<hr style="border: 1px solid #F2F2F2;">
						닥터바이 브레스 <span style="color : gray; font-size: 10pt;">2024.09.01 07:24</span><span style="float: right; color: gray;">x&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
						<hr style="border: 1px solid #F2F2F2;">
						본아페티 브레스캡스 <span style="color : gray; font-size: 10pt;">2024.09.01 07:24</span><span style="float: right; color: gray;">x&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
						<hr style="border: 1px solid #F2F2F2;">
						디어랩스 울애기쌩쌩 <span style="color : gray; font-size: 10pt;">2024.09.01 07:24</span><span style="float: right; color: gray;">x&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
						<hr style="border: 1px solid #F2F2F2;">
						
						<br>
						<span style="font-size: 14pt; font-weight: 600;">간식</span>&nbsp;&nbsp;
						<input type="text" style="width: 80px;">
						<button type="button">등록</button><br>
						<hr style="border: 1px solid #F2F2F2;">
						고구마말랭이 <span style="color : gray; font-size: 10pt;">2024.09.01 07:24</span><span style="float: right; color: gray;">x&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
						<hr style="border: 1px solid #F2F2F2;">
						북어트릿 <span style="color : gray; font-size: 10pt;">2024.09.01 07:24</span><span style="float: right; color: gray;">x&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
						<hr style="border: 1px solid #F2F2F2;">
						닭연골 <span style="color : gray; font-size: 10pt;">2024.09.01 07:24</span><span style="float: right; color: gray;">x&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
						<hr style="border: 1px solid #F2F2F2;">
						
						<br>
						<span style="font-size: 14pt; font-weight: 600;">산책</span>&nbsp;&nbsp;						
						<input type="text" style="width: 80px;">
						<button type="button">start</button>
						<input type="text" style="width: 80px;">
						<button type="button">end</button>
						<hr style="border: 1px solid #F2F2F2;">
						16:43 ~ 17:20<span style="float: right; color: gray;">x&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
						<hr style="border: 1px solid #F2F2F2;">
						21:30 ~ 22:10<span style="float: right; color: gray;">x&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
						<hr style="border: 1px solid #F2F2F2;">

						<br>
						<span style="font-size: 14pt; font-weight: 600;">목욕</span>&nbsp;&nbsp;						
						<input type="radio" name="bathcheck">O
						<input type="radio" name="bathcheck">X
						
						<br><br>
						<span style="font-size: 14pt; font-weight: 600;">특이사항</span><br>	
						<textarea rows="5" cols="50" style="border: none; background-color: #F2F2F2;"></textarea>					
						
						<br><br><br>
					</div>			
				</div>
			</div>
		</div>
		<div style="width: 20%;"></div>
	</div>
	
	<br><br>

	<div style="text-align: center;">
		<button type="button" style="width: 100px; border: none; border-radius: 20px; background-color: #F2F2F2; font-size: 12pt; font-weight: 600; line-height: 80%;"><br>등록하기<br><br></button>
		<button type="button" style="width: 100px; border: none; border-radius: 20px; background-color: #F2F2F2; font-size: 12pt; font-weight: 600; line-height: 80%;"><br>일괄등록<br><br></button>
	</div>

	<br><br><br>
	
	<div class="footer" style="background-color: #BBBBBB;">
		<br><br><br><br><br><br>
	</div>

</body>
</html>