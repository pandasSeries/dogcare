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
<title>Enquiry.jsp</title>
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
		<div style="background-color: white; font-family: Pretendard; font-weight: 600; font-size: 12pt;">
			<hr>
			<br>
			<div style="width: 80%; margin: 0 auto; text-align: left;">
				<br>
				<div style="font-family: Pretendard; font-weight: 800; font-size: 18pt; display: inline-block;">
				자주 묻는 질문
				</div>
				<div style="display: inline-block; float: right;">
					<div style="text-align: right;">
						<select>
							<option>전체</option>
							<option>견주</option>
							<option>펫시터</option>
						</select>
						<select>
							<option>전체</option>
							<option>계정</option>
							<option>결제</option>
							<option>기타</option>
						</select>
					</div>
				</div>
				<hr>
				<pre style="font-family: Pretendard; font-weight: 400;">  	<span style="font-weight: 700;">결제</span>				간편 계좌등록은 어떻게 하나요?  </pre>
				<hr>
				<pre style="font-family: Pretendard; font-weight: 400;">  	<span style="font-weight: 700;">결제</span>				펫시팅 예약취소를 실수로 못한 경우 예약금 환불이 가능한가요?  </pre>
				<hr>
				<pre style="font-family: Pretendard; font-weight: 400;">  	<span style="font-weight: 700;">결제</span>				결제수단을 바꿔서 다시 결제하고 싶을 때는 어떻게 하나요?  </pre>
				<hr>
			</div>
			1
			
			<br><br><br>
			
			<div style="width: 80%; margin: 0 auto; text-align: left;">
				<div style="font-family: Pretendard; font-weight: 800; font-size: 18pt; display: inline-block;">
				나의 문의내역&nbsp;&nbsp;
				<a href="EnquiryForm.jsp" style="font-weight: 400; font-size: 12pt; color: gray;">▶ 작성하기</a>
				</div>
				<div style="display: inline-block; float: right;">
				<select>
					<option>전체</option>
					<option>계정</option>
					<option>결제</option>
					<option>기타</option>
				</select>
				</div>
				<hr>
				<pre style="font-family: Pretendard; font-weight: 400;">  	<span style="font-weight: 700;">결제</span>				결제 관련 문의입니다.	  										<span style="font-weight: 700;">답글 0</span></pre>
				<hr>
				<pre style="font-family: Pretendard; font-weight: 400;">  	<span style="font-weight: 700;">기타</span>				기타 문의입니다.  												<span style="font-weight: 700;">답글 1</span></pre>
				<hr>
				<pre style="font-family: Pretendard; font-weight: 400;">  	<span style="font-weight: 700;">결제</span>				결제 관련 문의입니다.  											<span style="font-weight: 700;">답글 1</span></pre>
				<hr>
			</div>
			1
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