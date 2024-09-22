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
<title>SalaryList.jsp</title>
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
	<div class="left" style="font-family: Pretendard; font-size: 14pt; width: 20%; float: left; text-align: right;">
	    <br><br><br>
	    &nbsp;&nbsp;&nbsp;&nbsp;
	    &nbsp;&nbsp;&nbsp;&nbsp;
	    &nbsp;&nbsp;&nbsp;&nbsp;
	    &nbsp;&nbsp;&nbsp;&nbsp;
	    &nbsp;&nbsp;&nbsp;&nbsp;
		<span style="font-weight: 800; line-height: 150%;">정산내역&nbsp;&nbsp;&nbsp;&nbsp;<br></span>
		<a href="AccountManagement.jsp" style="font-weight: 500;">계좌관리&nbsp;&nbsp;&nbsp;&nbsp;</a>
	</div>
	<div style="font-family: Cafe24Ssurround; font-size: 28pt; width: 60%; margin: 0 auto; text-align: center;">
		정산내역
		<div style="background-color: white; font-family: Pretendard; font-weight: 600; font-size: 12pt;">
			<hr>
			<br>
			<div style="width: 80%; margin: 0 auto; text-align: left;">
				<a href="AccumulatedAmount.jsp"><button type="button">누적정산금 보기</button></a>
				<hr>
				<pre style="font-family: Pretendard; font-weight: 800;">  	 수행일						예상 정산일 						 금액  				    상태</pre>
				<hr>
				<pre style="font-family: Pretendard; font-weight: 400;">     24/08/16					  24/08/19 					 42,300  			정산중</pre>
				<hr>
				<pre style="font-family: Pretendard; font-weight: 400;">     24/08/12					  24/08/15  					 36,000  		       정산완료</pre>
				<hr>
			</div>
			1			
			<br><br><br>
		</div>
	</div>
	<br><br>
</div>

<div class="footer" style="background-color: #BBBBBB;">
	<br><br><br><br><br><br>
</div>

</body>
</html>