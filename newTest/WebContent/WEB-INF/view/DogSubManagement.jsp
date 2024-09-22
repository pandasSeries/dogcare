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
<title>DogSubManagement.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/final.css">
<!-- jQuery UI CSS -->
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- jQuery and jQuery UI JavaScript -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<style>
/* Optional: Some custom styling */
.ui-datepicker {
	font-size: 14px;
}
</style>
<script type="text/javascript">
	// Handle click event on activity level
	// Show the detail tooltip on mouse enter
	$('.acti-lv').on('mouseenter', function() {
		$(this).siblings('.acti-detail-tooltip').fadeIn(200); // Show with fade effect
	});

	// Hide the detail tooltip on mouse leave
	$('.acti-lv').on('mouseleave', function() {
		$(this).siblings('.acti-detail-tooltip').fadeOut(200); // Hide with fade effect
	});
</script>


<style type="text/css">
.activity-item {
	position: relative;
	display: inline-block;
}

.acti-detail-tooltip {
	display: none;
	position: absolute;
	top: 100%; /* Position the tooltip below the activity level */
	left: 50%;
	transform: translateX(-50%);
	padding: 8px;
	background-color: rgba(0, 0, 0, 0.7);
	color: #fff;
	border-radius: 4px;
	font-size: 12px;
	width: 200px; /* Adjust width as needed */
	z-index: 1000;
	white-space: pre-wrap; /* Preserves formatting of text */
}

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

/* Custom styling for input fields */
select {
	padding: 5px;
	width: 200px;
	margin-top: 5px;
}

.valid {
	border: 2px solid blue;
}

.invalid {
	border: 2px solid;
}

.form-group {
	margin-bottom: 20px;
}

.form-group label {
	display: block;
	font-weight: bold;
	margin-bottom: 5px;
}

.form-group .info {
	font-family: Pretendard;
	font-weight: 400;
	font-size: 12pt;
	color: red;
	display: none;
}

.error {
	color: red;
	font-size: 10pt;
	display: none;
}

.error-border {
	border: 2px solid red;
}

.normal-border {
	border: 1px solid #ccc;
}

.error-message {
	color: red;
	display: none; /* 기본적으로 숨김 */
	font-size: 8pt;
}
/* 성공 메시지 스타일 */
.select-message {
	color: blue;
	display: none;
	font-size: 8pt;
}

.detail {
	font-size: 8pt;
	color: gray;
}
/* 테이블에 행 구분선 추가 */
.table-bordered th, .table-bordered td {
	border: 1px solid #dee2e6;
}

/* 행의 하단 구분선 추가 */
.table




 




tbody




 




tr








:not




 




(
:last-child




 




)
{
border-bottom








:




 




1
px




 




solid




 




#dee2e6








;
}
/* 테이블을 감싸는 div의 배경 스타일 */
.table-wrapper {
	background-color: #f8f9fa; /* 배경색 설정 */
	padding: 20px; /* 패딩 추가 */
	border-radius: 8px; /* 모서리 둥글게 */
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* 그림자 추가 */
}
</style>
</head>
<body>
	<c:import url="Menu.jsp"></c:import>
	<div class="main" style="background-color: #EBF7FF;">
		<br> <br>
		<div class="left" style="font-family: Pretendard; font-size: 14pt; width: 20%; float: left; text-align: right;">
			<br> <br> <br> <span style="font-weight: 800; line-height: 150%;">반려견 등록&nbsp;&nbsp;&nbsp;&nbsp;<br>
			</span> <a href="dogmanagement.action" style="font-weight: 500;">반려견 관리&nbsp;&nbsp;&nbsp;&nbsp;</a>
		</div>
		<div style="width: 60%; margin: 0 auto;">
			<div style="background-color: #A3DBFF; color: white; display: flex; justify-content: space-between; align-items: center;">
				<div style="width: 20%; text-align: right;">
					<br> <span style="font-size: 20pt; font-weight: 600;">&nbsp;</span> <br> <br>
				</div>
				<div style="width: 75%; text-align: left;">
					<br> <span style="line-height: 150%;"> &nbsp;<br> &nbsp;
					</span> <br> <br>
				</div>
			</div>


			<div class="photo-container" style="background-color: white; text-align: left; display: flex; justify-content: space-between;">
				<div style="width: 40%; text-align: center;">
					<br> <br> <br> &nbsp;&nbsp;&nbsp;&nbsp; 
					
					<div style="width: 150px; height =150px; padding-left: 150px">
							<img style="border: solid white 1px; width: 100%; height: 100%; object-fit: cover; border-radius: 50%" id="dogImage" src="${pageContext.request.contextPath}/images/${p}" alt="Dog Photo">
						</div>
					
					<br>
					<!-- 숨겨진 파일 입력 -->
					<input hidden type="file" id="fileInput" accept="image/*" name="picture">
				</div>
				<div style="font-family: Pretendard; font-weight: 600; font-size: 14pt; width: 60%;">


					<div class="table-wrapper">
						<table class="table table-bordered table-hover">
							<tbody>
								<tr>
									<td><label for="dogName">이름</label></td>
									<c:forEach var="dto" items="${dogSubList}">


										<td>
											<ul>
												<li>${dto.DOG_NAME}</li>
											</ul>


										</td>
									</c:forEach>
								</tr>
								<tr>
									<td><label for="datepicker">생년월일</label></td>

									<c:forEach var="dto" items="${dogSubList}">

										<td>
											<ul>
												<li>${dto.DOG_BIRTH}</li>
											</ul>


										</td>
									</c:forEach>

								</tr>
								<tr>
									<td>견종</td>
									<c:forEach var="dto" items="${dogSubList}">
										<td>
											<ul>
												<li>${dto.BREED}</li>
											</ul>


										</td>
									</c:forEach>
								</tr>
								<tr>
									<td>배변습성</td>
									<c:forEach var="dto" items="${dogSubList}">
										<td>
											<ul>
												<li>${dto.FOO_HABIT}</li>
											</ul>


										</td>

									</c:forEach>
								</tr>
								<tr>
									<td>활동량</td>
									<c:forEach var="dto" items="${dogSubList}">
										<td>
										<ul>
										<div class="activity-item" style="position: relative; display: inline-block;">
												<li><span class="acti-lv">${dto.ACTI_LV}</span></li>
											</ul>
												<!-- Hidden detail container that shows on hover -->
												<div class="acti-detail-tooltip" style="display: none;">${dto.ACTI_DETAIL}</div>
											</div>
										</td>
									</c:forEach>
								</tr>
								<tr>
									<td>크기</td>
									<c:forEach var="dto" items="${dogSubList}">
										<td>
											<ul>
												<li>${dto.FOO_HABIT}</li>
											</ul>


										</td>
									</c:forEach>
								</tr>
								
								<tr>
									<td><label for="weight">무게</label></td>
									<c:forEach var="dto" items="${dogSubList}">
										
										<td>
											<ul>
												<li>${dto.DOG_WEIGHT}</li>
											</ul>


										</td>
									</c:forEach>
								</tr>
								<tr>
									<td>영양제</td>
									<td>
										<ul>
											<c:forEach var="dto" items="${my_spl_cd_Search}">
												<li>${dto.SPL_NAME}</li>
											</c:forEach>

											<c:forEach var="dto" items="${my_spl_cd2_Search}">
												<li>${dto.SPL_NAME}</li>
											</c:forEach>

											<c:forEach var="dto" items="${my_spl_cd3_Search}">
												<li>${dto.SPL_NAME}</li>
											</c:forEach>
										</ul>
									</td>
								</tr>
								<tr>
									<td><label for="weight">질병</label></td>
									<c:forEach var="dto" items="${my_dss_Search}">
										<td>
											<ul>
												<li>${dto.DSS_NAME}</li>
											</ul>


										</td>
										
									</c:forEach>
								</tr>
								<tr>
									<td><label for="weight">사료</label></td>
									<td>
										<ul>
											<c:forEach var="dto" items="${my_feed_Search}">
												<li>${dto.FEED_NAME}</li>
											</c:forEach>
										</ul>
									</td>
								</tr>
								<tr>
									<td><button style="background-color: #4CAF50; border: none; color: white; padding: 10px 20px; text-align: center; text-decoration: none; display: inline-block; font-size: 16px; margin: 4px 2px; cursor: pointer; border-radius: 5px;">
											<a href="javascript:history.back()">뒤로가기</a>
										</button></td>

								</tr>
							</tbody>
						</table>
					</div>

				</div>
			</div>
		</div>

	</div>
	<br>
	<br>


	<div class="footer" style="background-color: white;">
		<br> <br> <br> <br> <br> <br>
	</div>
</body>
</html>