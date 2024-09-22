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
<title>ApplyPetSitting.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/final.css">
<style type="text/css">
	.main 
	{
    position: relative; /* 추가된 코드 */
    background-color: white;
	}
	
	.main::before 
	{
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    height: 7px; /* 그림자의 높이 */
    background: linear-gradient(to bottom, rgba(5, 5, 5, 0.1), rgba(0, 0, 0, 0)); /* 위쪽에만 그림자 */
    pointer-events: none; /* 요소에 클릭 등 이벤트가 영향을 주지 않도록 설정 */
	}
</style>
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
 <div class="main" style="background-color: white; display: flex; justify-content: space-between;">
	<br><br>
	<div class="left" style="font-family: Pretendard; font-size: 14pt; width: 20%; text-align: right;">
		<br><br>
		<a href="PetSittingList.jsp" style="font-weight: 800; line-height: 150%;">공고보기&nbsp;&nbsp;&nbsp;&nbsp;<br></a>
		<a href="ApplyPetSitting.jsp" style="font-weight: 500;">신청하기&nbsp;&nbsp;&nbsp;&nbsp;</a>
	</div>
	<div class="right" style="width: 60%; display: flex; justify-content: space-around;">
		<div style="width: 10%;"></div>
		<div style="width: 20%; text-align: center;">
			<br><br><br>
			<span style="font-weight: 600; font-size: 14pt;">반려견 정보&nbsp;</span><br><br>
			<img src="images/dog.png" style="width: 100px;"><br>
			<span style="font-weight: 600; font-size: 12pt;">보리<br><span style="font-size: 9pt; font-weight: 400; color: gray;">말티즈, 5세</span></span><br>
			<a><button type="button" style="width: ">정보 보기</button></a>
			<br><br>
			<hr style="border: 1px solid #F2F2F2; width: 50%;">
			<br>
			<img src="images/dog_1.png" style="width: 100px;"><br>
			<span style="font-weight: 600; font-size: 12pt;">마루<br><span style="font-size: 9pt; font-weight: 400; color: gray;">말티즈, 5세</span></span><br>
			<a><button type="button" style="width: ">정보 보기</button></a>
			<br><br>
			<hr style="border: 1px solid #F2F2F2; width: 50%;">
		</div>
		<hr style="border: 1px solid #F2F2F2;">
		<div style="width: 5%;"></div>
		<div style="width: 40%; line-height: 70%;">
			<br><br><br><br><br>
			<span style="font-weight: 600; font-size: 14pt;">장소&nbsp;</span>
			서울시 마포구 서교동
			<br><br><br>
			<span style="font-weight: 600; font-size: 14pt;">예약 일시&nbsp;</span>
			2024년 9월 2일 14:00
			<br><br><br>
			<span style="font-weight: 600; font-size: 14pt;">맡길 시간&nbsp;</span>
			3시간			
			<br><br><br>
			<span style="font-weight: 600; font-size: 14pt;">요청사항&nbsp;</span>
			<br><br>
			<div style="width: 200px; background-color: #F2F2F2; border-radius: 5px;">
					<br>
					&nbsp;&nbsp;● 사료 주기
					<hr style="border: 1px solid white;">
					&nbsp;&nbsp;● 간식 주기
					<hr style="border: 1px solid white;">
					&nbsp;&nbsp;● 산책 시키기
					<br><br>
			</div>
			<br><br><br>
			<span style="font-weight: 600; font-size: 14pt;">참고사항&nbsp;</span>
			<br><br>
			<div style="background-color: #F2F2F2; width: 300px;">
				<br>
				&nbsp;&nbsp;산책 시키는 동안 물 자주자주 주세요.
				<br><br>
			</div>
			<br><br><br>
			<span style="font-weight: 600; font-size: 14pt;">지원자 정보&nbsp;</span>
			<br><br>
			<div style="background-color: #F2F2F2;">
				<br>
				<span style="font-weight: 600;">&nbsp;&nbsp;펫시터 1 (여, 23세)</span><br><br>
				&nbsp;&nbsp;등급 1&nbsp;&nbsp;수행건수 10&nbsp;&nbsp;반려경험 O&nbsp;&nbsp;평균평점 8.9/10
				<br><br>
			</div>
			<br>
			<div style="background-color: #F2F2F2;">
				<br>
				<span style="font-weight: 600;">&nbsp;&nbsp;펫시터 1 (여, 23세)</span><br><br>
				&nbsp;&nbsp;등급 1&nbsp;&nbsp;수행건수 10&nbsp;&nbsp;반려경험 O&nbsp;&nbsp;평균평점 8.9/10
				<br><br>
			</div>
			<br><br><br>
			<!-- 
			<button type="button" style="border: none; background-color: #F2F2F2; border-radius: 50px; width: 100px; font-weight: 600;"><br>신청하기<br><br></button> 
			-->
			<br><br>
		</div>
		<div style="width: 20%;"></div>
	</div>
	<div style="width: 20%;"></div>
</div>
 
 
<div class="footer" style="background-color: #BBBBBB;">
	<br><br><br><br><br><br>
</div>

</body>
</html>