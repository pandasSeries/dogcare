<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PetsitterMain.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/final.css">
</head>
<body>

<c:import url="Menu.jsp"></c:import>
	
	<div class="main" style="background-color: white; display: flex; justify-content: space-between;">
		<div class="left" style="font-family: Pretendard; font-size: 14pt; width: 20%; text-align: right;">
		</div>
		<div class="content" style="width: 60%; text-align: center; font-size: 12pt; font-weight: 400;">
			<br><br><br>
			<span style="font-family: 'Cafe24Ssurround'; font-size: 20pt;">${sInfo.name } 펫시터님,<br> 앞으로 6회 더 활동하시면 B등급으로 올라가요!</span>
			<br><br>
			<!-- <span style="font-size: 12pt; color: gray;">▶ 통계 보기</span> -->
			<hr style="border: 2px solid #F2F2F2;">
			<div style="display: flex; justify-content: space-between; margin-bottom: 20px;">
				<div style="width: 20%; text-align: right;">
					<br>
					<c:if test="${sInfo.gender=='남' }">
					<img src="images/user_m.png" style="width: 50%;">
					</c:if>
					<c:if test="${sInfo.gender=='여' }">
					<img src="images/user_w.png" style="width: 50%;">
					</c:if>
				</div>
				<div style="width: 15%; text-align: left;">
					<br><br><br>
					<span style="font-size: 16pt; font-weight: 600;">${sInfo.name } <span style="font-size: 12pt; font-weight: 500;">펫시터</span></span>
					<br><span style="color: gray;">${sInfo.reg_date.substring(0,2) }.${sInfo.reg_date.substring(3,5) }.${sInfo.reg_date.substring(6,8) } 승인</span>
					<br><span style="color: gray;">${sInfo.gr }등급</span>
				</div>
				<div style="width: 15%; text-align: left; font-size: 14pt;">
					<br>
					<span style="font-weight: 700;">수행건수</span><br>
					${sInfo.perform_count }건
					<br><br>
					<span style="font-weight: 700;">돌봄가능</span><br>
					<c:forEach var="siz" items="${crbSize }" varStatus="status">
						${siz.siz_name }<c:if test="${!status.last }">, </c:if>
					</c:forEach>
					<br>
				</div>
				<div style="width: 15%; text-align: left; font-size: 14pt;">
					<br>
					<span style="font-weight: 700;">평균평점</span><br>
					${sInfo.rating_avg }/10
					<br><br>
					<span style="font-weight: 700;">근무가능</span><br>
					<c:forEach var="day" items="${workDay }" varStatus="status">
						${day.week_name }<c:if test="${!status.last }">, </c:if>
					</c:forEach>
					<br>			
				</div>
				<div style="width: 15%; text-align: left; font-size: 14pt;">
					<br>
					<span style="font-weight: 700;">시급</span><br>
					<fmt:formatNumber value="${sInfo.h_pay}" type="number" pattern="#,##0" />
					<br><br>
					<!-- 
					<span style="font-weight: 700;">영양제</span><br>
					OOO
					<br>			
					 -->
				</div>
				<div style="width: 10%; text-align: right;">
					<br><br><br><br><br><br>
					<span style="color: gray;">▶ 자세히보기</span>
				</div>
			</div>
			<hr style="border: 2px solid #F2F2F2;">
			<div style="display: flex; justify-content: space-between; align-items: center;">
				<div style="width: 50%; font-size: 14pt;">
					<br>
					<span style="font-weight: 600;">일정</span><br><br>
				</div>
				<div style="width: 5%;"></div>
				<div style="width: 40%;">
					<div style="display: flex; justify-content: space-between;">
						<div style="width: 5%;">
						</div>
						<div style="width: 60%; font-weight: 600; font-size: 14pt; text-align: left;">
							<br>
							지원내역<br><br>
							현재 지원 건수&nbsp;&nbsp;&nbsp;<span style="font-weight: 400;">${sInfo.apply_count }건</span>
							<br><br>							
						</div>
						<div style="width: 5%;">
						</div>
						<div style="width: 25%; line-height: 150%; color: gray; text-align: right;">
							<br>
							<a href="myperformlist.action" style="color: gray;">▶ 지원내역 보기</a>
						</div>
					</div>
					<hr style="border: 1px solid #F2F2F2;">
					<div style="display: flex; justify-content: space-between;">
						<div style="width: 5%;">
						</div>
						<div style="width: 60%; font-weight: 600; font-size: 14pt; text-align: left;">
							<br>
							정산관리<br><br>
							이번달 정산금액&nbsp;&nbsp;&nbsp;
							<span style="font-weight: 400;"><fmt:formatNumber value="${sInfo.month_acc_pay}" type="number" pattern="#,##0" />원</span>
							<br><br>							
						</div>
						<div style="width: 5%;">
						</div>
						<div style="width: 25%; line-height: 150%; color: gray; text-align: right;">
							<br>
							▶ 정산내역 보기
						</div>
					</div>
					<hr style="border: 1px solid #F2F2F2;">
					<div style="display: flex; justify-content: space-between;">
						<div style="width: 5%;">
						</div>
						<div style="width: 60%; font-weight: 600; font-size: 14pt; text-align: left;">
							<br>
							정기시험<br><br>
							응시<span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;${examInfo.rs_omr_date.substring(0,2) }.${examInfo.rs_omr_date.substring(3,5) }.${examInfo.rs_omr_date.substring(6,8) }</span><br>
							점수<span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;${examInfo.score }점</span><br>
							결과<span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;${examInfo.pf }</span><br>
							<br>			
						</div>
						<div style="width: 5%;">
						</div>
						<div style="width: 25%; line-height: 150%; text-align: right;">
							<br>
							<a href="petsitterexam.action" style="color: gray;">▶ 응시하기</a>
						</div>
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