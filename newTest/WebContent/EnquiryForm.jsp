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
<title>EnquiryForm.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/final.css">
</head>
<body>

<br><br><br>

<div class="header" style="display: flex; align-items: center; justify-content: space-between;">

    <div style="display: flex; align-items: center;">
    	&nbsp;&nbsp;&nbsp;&nbsp;
        <img src="images/logo.png" style="width: 120px; vertical-align: middle;">
    </div>
    
    <div id="tab" style="display: flex; align-items: center;">
        <a style="font-size: 14pt; margin-left: 20px;">홈</a>
        <a style="font-size: 14pt; margin-left: 30px;">펫시팅</a>
        <a style="font-size: 14pt; margin-left: 30px;">커뮤니티</a>
        <a href="MyPagePetPartners.jsp" style="font-size: 14pt; margin-left: 30px;">마이페이지</a>
    </div>
    
    <div style="display: flex; align-items: center;">
        <img src="images/bell.png" style="width: 20px; margin-left: 10px;">
        <img src="images/gear.png" style="width: 20px; margin-left: 10px;">
        <img src="images/user.png" style="width: 25px; margin-left: 10px;">
        &nbsp;&nbsp;&nbsp;&nbsp;
    </div>
</div>
<br>

<div class="main" style="background-color: #F2F2F2;">
	<br><br>
	<!-- 견주 계층으로 접근했을 때만 보이도록 처리할 div 영역(좌측 탭) -->
	<div class="left" style="font-family: Pretendard; font-size: 14pt; width: 20%; float: left; text-align: right;">
	    <br><br><br>
	    &nbsp;&nbsp;&nbsp;&nbsp;
	    &nbsp;&nbsp;&nbsp;&nbsp;
	    &nbsp;&nbsp;&nbsp;&nbsp;
	    &nbsp;&nbsp;&nbsp;&nbsp;
	    &nbsp;&nbsp;&nbsp;&nbsp;
		<span style="font-weight: 800; line-height: 150%;">QnA&nbsp;&nbsp;&nbsp;&nbsp;<br></span>
		<a href="RegisterFeed.jsp" style="font-weight: 500;">사료등록&nbsp;&nbsp;&nbsp;&nbsp;</a>
	</div>
	<div style="font-family: Cafe24Ssurround; font-size: 28pt; width: 60%; margin: 0 auto; text-align: center;">
		QnA
		<div style="background-color: white; font-family: Pretendard; font-weight: 500; font-size: 12pt;">
			<hr>
			<br><br>
			<div style="width: 80%; margin: 0 auto; text-align: left; line-height: 150%;">
				카테고리&nbsp;&nbsp;
				<select>
						<option>전체</option>
						<option>계정</option>
						<option>결제</option>
						<option>기타</option>
				</select>
				<br>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;제목&nbsp;&nbsp;
				<input type="text" style="width: 200px;">
				<br>
				첨부파일&nbsp;&nbsp;
				<input type="file">
				<br><br>
				<textarea rows="10" cols="85"></textarea>
				<br>
				비밀번호&nbsp;&nbsp;
				<input type="password">
			</div>
			<br>
			<button type="button" style="width: 100px;">작성하기</button>
			<br><br>
		</div>
	</div>
	<br><br>
</div>

<div class="footer" style="background-color: #BBBBBB;">
	<br><br><br><br><br><br>
</div>

</body>
</html>