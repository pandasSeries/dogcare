<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/final.css">
</head>
<body>

<c:import url="Menu.jsp"></c:import>

	<div class="main" style="background-color: #F2F2F2;">
		<br>
		<br>

		<div
			style="font-family: Cafe24Ssurround; font-size: 28pt; width: 50%; margin: 0 auto; text-align: center;">
			펫시팅 가능 반려견 사이즈 
			<div
				style="background-color: white; font-family: Pretendard; font-weight: 600; font-size: 12pt;">
				<hr>
				<br>
				<div
					style="font-family: Cafe24Ssurround; font-size: 20pt; width: 60%; margin: 0 auto; text-align: center;">
					<span>관리가능한 반려견의 사이즈를 선택해주세요.</span>
				</div>
				<div style="width: 80%; margin: 0 auto; text-align: left;">
					<div
						style="margin-top:10px; text-align: center; background-color: #f8d7da; color: #721c24; border: 1px solid #f5c6cb; padding: 15px; border-radius: 5px;">
						<p style="margin: 10px 0 0;">
							펫시팅시 사고 발생을 방지하기 위한 차원입니다. 
						</p>
					</div>
				</div>
				<div
					style="display: flex; flex-wrap: wrap; justify-content: center; padding-top: 50px;">

					<input type="checkbox" name="weekDays" value="SIZ1"
						style="transform: scale(2.5); margin-right: 15px;">소형견 
					<input type="checkbox" name="weekDays" value="SIZ2"
						style="transform: scale(2.5); margin-left: 20px; margin-right: 15px;">중형견
					<input type="checkbox" name="weekDays" value="SIZ3"
						style="transform: scale(2.5); margin-left: 20px; margin-right: 15px;">대형견

				</div>
				<div
					style="width: 60%; margin: 0 auto; text-align: center; margin-top: 50px; margin-bottom: 50px;">
					<button type="submit"
						style="font-family: Cafe24Ssurround; font-size: 20pt;"
						id="pageMoveBtn">다음으로</button>
				</div>
			</div>
		</div>
		<br>
		<br>
	</div>
	</div>

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
