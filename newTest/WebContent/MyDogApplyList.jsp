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
<title>MyDogApplyList.jsp</title>
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
			<a href="MyDogApplyList.jsp" style="font-weight: 800; line-height: 150%;">의뢰내역&nbsp;&nbsp;&nbsp;&nbsp;<br></a>
			<a href="MyDogPetSittingList.jsp" style="font-weight: 500;">이용내역&nbsp;&nbsp;&nbsp;&nbsp;</a>
		</div>
		<div class="content" style="width: 60%; text-align: left; font-size: 18pt; font-weight: 600;">
			<br><br>
			&nbsp;&nbsp;&nbsp;&nbsp;모집중
			<div style="float: right;">
				<select>
					<option>정렬</option>
				</select>
			</div>
			<hr style="border: 1px solid #F2F2F2;">
			<!-- 
			<div style="width: 100%; background-color: #F2F2F2; font-size: 14pt; font-weight: 400; border-radius: 5px;">
				<br>
				&nbsp;&nbsp;2024.09.10 14:00 ~ 16:00&nbsp;<span style="font-size: 12pt; color: gray;">2024.09.01 작성</span>
				<br><br>
			</div> 
			-->
			<table style="font-size: 12pt; width: 100%; text-align: center;">
				<tr style="background-color: #F2F2F2; font-weight: 600;">
					<th>예약일시</th>
					<th>작성일자</th>
					<th>지원자수</th>
					<th>마감일시</th>
					<th></th>
				</tr>
				<tr style="font-weight: 400; border-bottom: 1px solid #F2F2F2;">
					<td>2024.09.10 14:00 ~ 16:00</td>
					<td>2024.09.01</td>
					<td>5</td>
					<td>2024.09.10 08:00</td>
					<td>
						<button type="button">보기</button>
					</td>
				</tr>
				<tr style="font-weight: 400; border-bottom: 1px solid #F2F2F2;">
					<td>2024.09.16 8:00 ~ 12:00</td>
					<td>2024.09.02</td>
					<td>2</td>
					<td>2024.09.16 02:00</td>
					<td>
						<button type="button">보기</button>
					</td>
				</tr>
			</table>
			<br><br>
			&nbsp;&nbsp;&nbsp;&nbsp;마감
			<div style="float: right;">
				<select>
					<option>정렬</option>
				</select>
			</div>
			<hr style="border: 1px solid #F2F2F2;">
			<table style="font-size: 12pt; width: 100%; text-align: center;">
				<tr style="background-color: #F2F2F2; font-weight: 600;">
					<th>예약일시</th>
					<th>작성일자</th>
					<th>지원자수</th>
					<th>마감일시</th>
					<th></th>
				</tr>
				<tr style="font-weight: 400; border-bottom: 1px solid #F2F2F2;">
					<td>2024.09.10 14:00 ~ 16:00</td>
					<td>2024.09.01</td>
					<td>5</td>
					<td>2024.09.10 08:00</td>
					<td>
						<button type="button">보기</button>
					</td>
				</tr>
				<tr style="font-weight: 400; border-bottom: 1px solid #F2F2F2;">
					<td>2024.09.16 8:00 ~ 12:00</td>
					<td>2024.09.02</td>
					<td>2</td>
					<td>2024.09.16 02:00</td>
					<td>
						<button type="button">보기</button>
					</td>
				</tr>
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