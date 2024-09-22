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
	$(document).ready(
			function() {
				var errorMessage = "${error}";
				if (errorMessage) {
					// 오류 메시지를 alert으로 표시합니다
					alert(errorMessage);
<%session.removeAttribute("error");%>
	}

				// Button click event
				$('.dogUpdate').on(
						'click',
						function() {
							
							 var picPath = $(this).data('pic-path');
							// Get the DOG_CD value from the button's value attribute
							var dogCd = $(this).val();

							$(location).attr(
									"href",
									'dogUpdateForm.action?dog_cd='
											+ dogCd + '&P2=' + picPath);

						});
				$('.dogDelete')
						.on(
								'click',
								function() {
									var dogCd = $(this).val();

									$(location).attr(
											"href",
											'dogDelete.action?dog_cd='
													+ $(this).val());
								})

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
		<br> <br>
		<div class="left" style="font-family: Pretendard; font-size: 14pt; width: 20%; float: left; text-align: right;">
			<br> <br> <br> &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; <a href="doginsertform.action" style="font-weight: 500; line-height: 150%;">반려견 등록&nbsp;&nbsp;&nbsp;&nbsp;<br></a> <span style="font-weight: 800;">반려견 관리&nbsp;&nbsp;&nbsp;&nbsp;</span><br> <a href="memdogmanagement.action" style="font-weight: 500; line-height: 150%;">공유 반려견 관리&nbsp;&nbsp;&nbsp;&nbsp;<br></a>
		</div>
		<div style="font-family: Cafe24Ssurround; font-size: 28pt; width: 60%; margin: 0 auto; text-align: center;">
			반려견 관리
			<div style="background-color: white; font-family: Pretendard; font-weight: 600; font-size: 12pt;">
				<hr>
				<br>
				<div style="width: 80%; margin: 0 auto; text-align: left;">
					<div style="font-family: Pretendard; font-weight: 800; font-size: 18pt; display: inline-block;">반려견 목록</div>
					<hr>
					<pre style="font-family: Pretendard; font-weight: 800;">번호  		이름				  등록일자	    			  반려인		   	                                          수정/삭제</pre>
					<hr>
					
					<c:forEach var="dto" items="${dogList}" varStatus="status">

						<pre style="font-family: Pretendard; font-weight: 500;">  ${status.count}  	           <a id="ab" href="dogsubmanagement.action?dog_cd=${dto.DOG_CD }&P2=${dto.PIC_PATH}" data-tooltip="${dto.DOG_NAME } 상세조회">${dto.DOG_NAME }</a>	  			 ${dto.DOG_REG }	          	       ${dto.NAME }	      		             		<button class="dogUpdate" type="button" style="width: 70px;" data-pic-path="${dto.PIC_PATH}" value="${dto.DOG_CD }">수정하기</button>  <button class="dogDelete" type="button" style="width: 70px;" value="${dto.DOG_CD }">삭제하기</button>
						</pre>
						<hr />



						
				</c:forEach>


				</div>
				1 <br> <br>
			</div>
		</div>
		<br> <br>
	</div>

	<div class="footer" style="background-color: #BBBBBB;">
		<br> <br> <br> <br> <br> <br>
	</div>

</body>
</html>