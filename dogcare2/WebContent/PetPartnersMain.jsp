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
<title>PetPartnersMain.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/final.css">
</head>
<body>
	
	<c:import url="Menu.jsp"></c:import>
	
	<div class="main" style="background-color: white; display: flex; justify-content: space-between;">
		<br><br>
		<div class="left" style="font-family: Pretendard; font-size: 14pt; width: 20%; text-align: right;">
			<br><br> 
			<!-- <a href="" style="font-weight: 800; line-height: 150%;">보리&nbsp;&nbsp;&nbsp;&nbsp;<br></a>
			<a href="" style="font-weight: 500;">마루&nbsp;&nbsp;&nbsp;&nbsp;</a> -->
			<c:forEach var="list" items="${mydoglist}">
				<a href="">${list.dog_name }</a>
			</c:forEach>
		</div>
		<div class="content" style="width: 60%; text-align: center; font-size: 12pt; font-weight: 400;">
			<br><br><br>
			<span style="font-family: 'Cafe24Ssurround'; font-size: 20pt;">최근 5일간 보리의 활동량이 다소 줄었어요.</span>
			<br><br><span style="font-size: 12pt; color: gray;">▶ 통계 보기</span>
			<hr style="border: 2px solid #F2F2F2;">
			<div style="display: flex; justify-content: space-between;">
				<div style="width: 20%; text-align: right;">
					<br>
					<img src="images/dog.png" style="width: 50%;">
				</div>
				<div style="width: 15%; text-align: left;">
					<br><br><br>
					<span style="font-size: 16pt; font-weight: 800;">보리(♀)</span>
					<br><span style="color: gray;">24.06.30 등록</span>
				</div>
				<div style="width: 15%; text-align: left; font-size: 14pt;">
					<br>
					<span style="font-weight: 700;">견종</span><br>
					말티즈
					<br><br>
					<span style="font-weight: 700;">나이</span><br>
					5세
					<br>
				</div>
				<div style="width: 15%; text-align: left; font-size: 14pt;">
					<br>
					<span style="font-weight: 700;">몸무게</span><br>
					3.2kg
					<br><br>
					<span style="font-weight: 700;">활동량</span><br>
					활발
					<br>			
				</div>
				<div style="width: 15%; text-align: left; font-size: 14pt;">
					<br>
					<span style="font-weight: 700;">사료</span><br>
					힐스
					<br><br>
					<span style="font-weight: 700;">영양제</span><br>
					OOO
					<br>			
				
				</div>
				<div style="width: 10%; text-align: right;">
					<br><br><br><br><br><br>
					<span style="color: gray;">▶ 자세히보기</span>
				</div>
			</div>
			<hr style="border: 2px solid #F2F2F2;">
			<div style="display: flex; justify-content: space-between; align-items: center;">
				<div style="width: 30%; font-size: 14pt;">
					<br>
					<span style="font-weight: 600;">그룹원</span><br><br>
					<!-- <span style="font-size: 16pt;">4<span style="font-size: 10pt;">명</span></span><br> -->
					<img src="images/user.png" style="width: 8%; vertical-align: middle; margin-right: 5px;"> OOO<br>
					<img src="images/user.png" style="width: 8%; vertical-align: middle; margin-right: 5px;"> OOO<br>
					<img src="images/user.png" style="width: 8%; vertical-align: middle; margin-right: 5px;"> OOO<br>
					<img src="images/user.png" style="width: 8%; vertical-align: middle; margin-right: 5px;"> OOO<br><br>
					<span style="color: gray; font-size: 12pt;">▶ 그룹원 관리</span>
				</div>
				<hr style="border: 1px solid #F2F2F2;">
				<div style="width: 70%;">
					<div style="display: flex; justify-content: space-between;">
						<div style="width: 5%;">
						</div>
						<div style="width: 15%; font-weight: 600; font-size: 14pt;">
							<br><br>
							오늘의 일지 
							<br><br>							
						</div>
						<div style="width: 5%;">
						</div>
						<div style="width: 7%; font-weight: 800; font-size: 14pt;">
						<br>
						<img src="images/check.png" style="width: 30%;"><br>
						사료
						</div>
						<div style="width: 7%; font-size: 14pt;">
						<br><br>
						영양제
						</div>
						<div style="width: 7%; font-weight: 800; font-size: 14pt;">
						<br>
						<img src="images/check.png" style="width: 30%;"><br>
						간식
						</div>
						<div style="width: 7%; font-size: 14pt;">
						<br><br>
						산책
						</div>
						<div style="width: 7%; font-size: 14pt;">
						<br><br>
						목욕
						</div>
						<div style="width: 5%;">
						</div>
						<div style="width: 25%; line-height: 150%; color: gray; text-align: right;">
							<br><br>
							▶ 일지 작성하기
						</div>
					</div>
					<hr style="border: 1px solid #F2F2F2;">
					<div style="display: flex; justify-content: space-between;">
						<div style="width: 5%;">
						</div>
						<div style="width: 15%; font-weight: 600; font-size: 14pt;">
							<br><br>
							건강수첩 
							<br><br>
						</div>
						<div style="width: 5%;">
						</div>
						<div style="width: 45%; font-size: 14pt;">
							<div style="line-height: 100%;">
								<br><br>
								<span style="font-weight: 600;">최근 방문일</span> 
								2024.08.29
							</div>
							<div>
								<span style="font-weight: 600;">다음 방문일</span> 
								2024.09.15
								<br>								
							</div>
						</div>
						<div style="width: 5%;">
						</div>
						<div style="width: 25%; line-height: 150%; color: gray; text-align: right;">
							<br><br>
							▶ 건강수첩 작성하기
						</div>
					</div>
				</div>
			</div>
			<hr style="border: 2px solid #F2F2F2;">
			<div style="display: flex; justify-content: space-between; align-items: center;">
				<div style="width: 30%; font-size: 14pt;">
					<span style="font-weight: 600;">펫시팅 이용건수</span><br><br>
					<span style="font-size: 20pt;">4<span style="font-size: 12pt;">건</span></span><br><br>
					<span style="color: gray; font-size: 12pt;">▶ 펫시팅내역 관리</span>
				</div>
				<hr style="border: 1px solid #F2F2F2;">
				<div style="width: 70%; display: flex; justify-content: space-between; align-items: center; text-align: left;">
					<div style="width: 10%;">

						<span style="font-weight: 600; font-size: 14pt; text-align: left;">사진첩</span>
						<br>
					</div> 				
					<div style="width: 25%;">
						<img src="images/dailyDog.jpg" style="width: 90%; border: 3px solid #BBBBBB; border-radius: 5px;">
					</div>
					<div style="width: 25%;">
						<img src="images/dailyDog.jpg" style="width: 90%; border: 3px solid #BBBBBB; border-radius: 5px;">
					</div>
					<div style="width: 25%;">
						<img src="images/dailyDog.jpg" style="width: 90%; border: 3px solid #BBBBBB; border-radius: 5px;">
					</div>
					<div style="width: 15%; text-align: right;">
						<span style="color: gray; font-size: 12pt;">▶ 더보기</span>
					</div>
				</div>
			</div>
			<hr style="border: 2px solid #F2F2F2;">
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