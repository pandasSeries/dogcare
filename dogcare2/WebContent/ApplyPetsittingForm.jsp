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
<title>ApplyPetSitting.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/final.css">
</head>
<body>

<c:import url="Menu.jsp"></c:import>

 <div class="main" style="background-color: white; display: flex; justify-content: space-between;">
	<br><br>
	<div class="left" style="font-family: Pretendard; font-size: 18pt; width: 20%; text-align: right;">
		<br><br>
		<a href="PetSittingList.jsp" style="font-weight: 500;">공고보기<br></a>
		<span style="font-weight: 800; line-height: 150%;">신청하기</span>
	</div>
	<div class="right" style="width: 60%; display: flex; justify-content: space-around;">
		<div style="width: 20%;"></div>
		<div style="width: 60%; line-height: 70%; box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.2); margin-top: 25px; margin-bottom: 25px;">
			<div style="background-color: #F2F2F2; display: flex; justify-content: space-around; font-size: 14pt;">
				<div style="width: 3%;"></div>
				<div style="width: 97%;">
					<br><br><br>
					<span style="font-weight: 700; font-size: 26pt;">&nbsp;펫시팅 신청하기</span><br><br><br><br>
					<!-- 
					&nbsp;● 신청 시 예약금 20,000원이 부과됩니다.<br><br>
					&nbsp;● 맡길 반려견이 2마리 이상일 시, 반려견 크기에 따른 추가금이 부과됩니다.  
					-->
					&nbsp;
					<img src="images/check.png" style="width: 2%;">
					신청 시 예약금 20,000원이 부과됩니다.<br><br>
					&nbsp;
					<img src="images/check.png" style="width: 2%;">
					한 의뢰 건에 대해 반려견은 최대 3마리까지 등록 가능합니다.<br><br>
					&nbsp;
					<img src="images/check.png" style="width: 2%;">
					맡길 반려견이 2마리 이상일 시, 추가되는 반려견 수에 따른 추가금이 부과됩니다. 
					<br><br><br><br>
				</div>
			</div>
			<div style="display: flex; justify-content: space-around;">
				<div style="width: 5%;"></div>
				<div style="width: 95%;">
					<br>
					<span style="font-weight: 600; font-size: 14pt; vertical-align: middle;">맡길 반려견&nbsp;</span>
					<div style="width: 70px; border-radius: 50px; background-color: #F2F2F2; line-height: 50%; display: inline-block; text-align: center; vertical-align: middle; padding: 10px 0;">
						&nbsp;보리&nbsp;&nbsp;x
					</div>
					<br><br>
					<select>
						<option>선택하기</option>
						<option>보리</option>
						<option>두부</option>
						<option>마루</option>
					</select>
					<br><br><br>
					<span style="font-weight: 600; font-size: 14pt;">맡길 장소&nbsp;</span>
					서울시 마포구 서교동
					<br><br>
					<input type="text" readonly="readonly" style="width: 70px;">
					<button type="button">검색</button>
					<button type="button">거주지 불러오기</button><br>
					<input type="text" readonly="readonly" style="width: 250px;"><br>
					<input type="text" style="width: 250px;">
					<br><br><br>
					<span style="font-weight: 600; font-size: 14pt;">예약 일시&nbsp;</span>
					2024년 9월 2일 14:00
					<br><br>
					<input type="text" readonly="readonly" placeholder="일자 자동입력" style="width: 100px;">
					<button type="button" style="border: none; background-color: white;"><img src="images/calendar.png" style="width: 20px; vertical-align: middle;"></button><br>
					<!-- 일자 선택시에만 활성화되게 -->
					<select style="width: 100px;">
						<option>00:00</option>
						<option>01:00</option>
						<option>02:00</option>
						<option>03:00</option>
						<option>04:00</option>
						<option>05:00</option>
						<option>06:00</option>
						<option>07:00</option>
						<option>08:00</option>
						<option>09:00</option>
						<option>10:00</option>
						<option>11:00</option>
						<option>12:00</option>
						<option>13:00</option>
						<option>14:00</option>
						<option>15:00</option>
						<option>16:00</option>
						<option>17:00</option>
						<option>18:00</option>
						<option>19:00</option>
						<option>20:00</option>
						<option>21:00</option>
						<option>22:00</option>
						<option>23:00</option>
						<option>24:00</option>
					</select>
					<br><br><br>
					<span style="font-weight: 600; font-size: 14pt;">맡길 시간&nbsp;</span>
					3시간
					<br><br>
					<select style="width: 100px;">
						<option>2시간</option>
						<option>3시간</option>
						<option>4시간</option>
						<option>5시간</option>
						<option>6시간</option>
						<option>7시간</option>
						<option>8시간</option>
					</select>
					<br><br><br>
					<span style="font-weight: 600; font-size: 14pt;">요청사항&nbsp;</span>
					<select>
						<option>사료 주기</option>
						<option>산책 시키기</option>
						<option>간식 주기</option>
						<option>목욕 시켜주기</option>
						<option>털 빗겨주기</option>
					</select>
					<br><br>
					<div style="width: 200px; background-color: #F2F2F2; border-radius: 5px; display: flex; justify-content: space-between;">
						<div style="width: 80%; text-align: left;">
							<br>
							&nbsp;&nbsp;● 사료 주기
							<hr style="border: 1px solid white;">
							&nbsp;&nbsp;● 간식 주기
							<hr style="border: 1px solid white;">
							&nbsp;&nbsp;● 산책 시키기
							<br><br>
						</div>
						<div style="width: 20%; text-align: right; color: gray;">
							<br>
							x&nbsp;&nbsp;
							<hr style="border: 1px solid white;">
							x&nbsp;&nbsp;
							<hr style="border: 1px solid white;">
							x&nbsp;&nbsp;
							<br><br>
						</div>
					</div>
					<br><br><br>
					<span style="font-weight: 600; font-size: 14pt;">참고사항&nbsp;</span>
					<br><br>
					<textarea rows="10" cols="50" style="border: none; background-color: #F2F2F2;"></textarea>
					<br><br><br>
					<button type="button" style="border: none; background-color: #F2F2F2; border-radius: 50px; width: 100px; font-weight: 600;"><br>신청하기<br><br></button>
					<br><br><br>
				</div>
			</div>
		</div>
		<div style="width: 20%;"></div>
	</div>
	<div style="width: 20%;"></div>
</div>
 
 
<div class="footer" style="background-color: #BBBBBB;">
	<br><br><br><br><br><br>
</div>

</body>
</html>