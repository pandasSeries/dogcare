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
<title>DogManagement.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/final.css">
</head>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function() {

	});
</script>
<style>
#ab {
	position: relative;
	text-decoration: none;
	color: #0066cc; /* 링크 색상 */
}

#ab::after {
	content: attr(data-tooltip); /* 툴팁 내용 */
	position: absolute;
	left: 50%;
	bottom: 125%;
	transform: translateX(-50%);
	padding: 5px;
	background-color: #333;
	color: #fff;
	border-radius: 3px;
	white-space: nowrap;
	font-size: 12px;
	opacity: 0;
	visibility: hidden;
	transition: opacity 0.3s;
}

#ab:hover::after {
	opacity: 1;
	visibility: visible;
}
</style>
<body>

	<c:import url="Menu.jsp"></c:import>

	<div class="main" style="background-color: #F2F2F2;">
		<br>
		<br>
		<div class="left" style="font-family: Pretendard; font-size: 14pt; width: 20%; float: left; text-align: right;">
			<br>
			<br>
			<br> &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; <a href="doginsertform.action" style="font-weight: 500; line-height: 150%;">반려견 등록&nbsp;&nbsp;&nbsp;&nbsp;<br></a> <a href="dogmanagement.action" style="font-weight: 500; line-height: 150%;">반려견 관리&nbsp;&nbsp;&nbsp;&nbsp;<br></a> <span style="font-weight: 800;">공유 반려견 관리&nbsp;&nbsp;&nbsp;&nbsp;</span><br>

		</div>
		<div style="font-family: Cafe24Ssurround; font-size: 28pt; width: 60%; margin: 0 auto; text-align: center;">
			반려견 관리
			<div style="background-color: white; font-family: Pretendard; font-weight: 600; font-size: 12pt;">
				<hr>
				<br>
				<div style="width: 80%; margin: 0 auto; text-align: left;">
					<div style="font-family: Pretendard; font-weight: 800; font-size: 18pt; display: inline-block;">반려견 목록</div>
					<hr>
					<pre style="font-family: Pretendard; font-weight: 800;">번호  		                                         이름				                      등록일자	    			        반려인		   	      </pre>
					<hr>

					<c:forEach var="dto" items="${memDogList}" varStatus="status">

						<pre style="font-family: Pretendard; font-weight: 500;">  ${status.count}  	                                                  <a id="ab" href="dogsubmanagement.action?dog_cd=${dto.DOG_CD }&P2=${dto.PIC_PATH}" data-tooltip="${dto.DOG_NAME } 상세조회">${dto.DOG_NAME }</a>	  			              ${dto.DOG_REG }	                         ${dto.NAME }	      		              		</pre>
						<hr>

					</c:forEach>

				</div>
				1 <br>
				<br>
			</div>
		</div>
		<br>
		<br>
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