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
<title>DogCodeInsert</title>
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/final.css">
<script>
var errorMessage2 = "${error2}";
if (errorMessage2) {
     // 오류 메시지를 alert으로 표시합니다
     alert(errorMessage2);
     <% session.removeAttribute("error2"); %>
 }
var errorMessage3 = "${error3}";
if (errorMessage3) {
     // 오류 메시지를 alert으로 표시합니다
     alert(errorMessage3);
     <% session.removeAttribute("error3"); %>
 }
</script>
<style type="text/css">
input {
	background-color: white; /* Light sky blue */;
	border: none;
	padding: 12px 15px;
	margin: 8px 0;
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
	background-color: #f9f9f9; /* Light grey background color */
	padding: 10px; /* Optional: Add padding inside the form group */
	border: 1px solid #ddd;
	/* Optional: Add a border around the form group */
	border-radius: 4px; /* Optional: Rounded corners */
	margin-bottom: 15px; /* Optional: Space between form groups */
	width: 60%; /* Adjust width to reduce content width */
	box-sizing: border-box;
	/* Include padding and border in the element's total width and height */
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
					<br> <span style="font-size: 20pt; font-weight: 600;">&nbsp;반려견 코드 입력</span> <br> <br>
				</div>
				<div style="width: 75%; text-align: left;">
					<br> <span style="line-height: 150%;"> &nbsp;● 반려견은 최대 3마리까지 등록 가능합니다.<br> &nbsp;● 공유받은 코드가 있을 경우, '코드 입력하기' 클릭 후 코드와 비밀번호를 입력하면 등록이 완료됩니다.
					</span> <br> <br>
				</div>
			</div>
		
			<form action="dogcodeinsert.action" id="dogForm">
				<div class="photo-container" style="background-color: white; text-align: left; display: flex; justify-content: space-between;">
					<div style="width: 40%; text-align: center;">
						<br /><br />  <img style="height:150px; width: 150px;" id="dogImage" src="images/dog.png" alt="Dog Photo"> <br> 
						
					</div>
					<div style="font-family: Pretendard; font-weight: 600; font-size: 14pt; width: 60%;">
						<br>

						<div class=form-group>
							<div>
								반려견 코드 입력 : <input type="text" name="dog_cd"/>
							</div>
						</div>
						<div class=form-group>
							<div>
								비밀번호 입력 : <input type="text" name="dog_pass"/>
							</div>
						</div>

						<button type="submit" style="width: 80px; border: none; border-radius: 20px; background-color: #F2F2F2; font-weight: 800; font-size: 10pt;">
							<br>등록하기<br> <br>
						</button>
						<button type="submit" style="width: 80px; border: none; border-radius: 20px; background-color: #F2F2F2; font-weight: 800; font-size: 10pt;">
							<br><a style="width: 80px; border: none; border-radius: 20px; background-color: #F2F2F2; font-weight: 800; font-size: 10pt;" href="javascript:history.back()">뒤로가기</a><br> <br>
						</button>
						
						<br> <br>
					</div>
				</div>
			</form>
		</div>
		<br> <br>
	</div>


	<div class="footer" style="background-color: white;">
		<br> <br> <br> <br> <br> <br>
	</div>

</body>
</html>