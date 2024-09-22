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
<title>PetsittingPerformForm.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/final.css">
</head>
<body>

<c:import url="Menu.jsp"></c:import>

 <div class="main" style="background-color: white; display: flex; justify-content: space-between;">
	<br><br>
	<div class="left" style="font-family: Pretendard; font-size: 14pt; width: 20%; text-align: right;">
		<br><br>
		<a href="petsittinglist.action" style="font-weight: 800; line-height: 150%;">공고보기&nbsp;&nbsp;&nbsp;&nbsp;<br></a>
		<a href="applypetsittingform.action" style="font-weight: 500;">신청하기&nbsp;&nbsp;&nbsp;&nbsp;</a>
	</div>
	<div class="right" style="width: 60%;">
		<div style="font-size: 20pt; font-weight: 600;">
		<br><br>
		수행기록 남기기
		<br><br>
		</div>
		<div style="width: 90%; display: flex; justify-content: flex-start;">
			<!-- <div style="width: 10%;"></div> -->
			<div style="width: 30%; display: flex; justify-content: center; flex-direction: column; align-items: center; box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.2); margin-top: 25px; margin-bottom: 25px; margin-right: 25px; text-align: center;">
				<div style="width: 75%; border: 2px solid #F2F2F2; margin-top: 25px; margin-bottom: 25px;">
					<br><br><br>
					<span style="font-size: 14pt; font-weight: 500;">사진 첨부하기</span><br><br>
					<label className="input-file-button" for="performPic" style="color: gray;">
  						업로드
					</label>
					<input type="file" id="performPic" style="display: none;"/> 
					<br><br><br>
				</div>
				<div>
				<textarea rows="5" cols="33" style="border: none; background-color: #F2F2F2;"></textarea>
				<br><br>
				<button type="button" style="border: none; background-color: #F2F2F2; border-radius: 15px; width: 80px; font-weight: 600;"><br>등록하기<br><br></button>
				<br><br>
				</div>
			</div>
			<div style="width: 10%;">
				<br><br>
				<button type="button" style="border: none; background-color: #F2F2F2; border-radius: 8px; width: 100px; font-weight: 600; margin-bottom: 5px;"><br>일지보기<br><br></button> 
				<button type="button" style="border: none; background-color: #F2F2F2; border-radius: 8px; width: 100px; font-weight: 600; margin-bottom: 5px;"><br>건강수첩보기<br><br></button>
				<button type="button" style="border: none; background-color: #F2F2F2; border-radius: 8px; width: 100px; font-weight: 600; margin-bottom: 5px;"><br>의뢰서보기<br><br></button> 
			</div>
		</div>
	</div>
	<div style="width: 10%;"></div>
</div>
 
<div class="footer" style="background-color: #BBBBBB;">
	<br><br><br><br><br><br>
</div>

</body>
</html>