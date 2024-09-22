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
<title>PetSittingList.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/final.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">

	$().ready(function()
	{		
		$(".post").hover(function()
		{
			$(".post").css({"background-color":"#A3DBFF", "color":"white"});
		}, function()
		{			
			$(".post").css({"background-color":"#F2F2F2", "color":"black"});
		});
		
		$(".post").click(function()
		{
			$(location).attr("href", "ApplicationContent.jsp");			
		});
	});

</script>
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

<!-- <div class="main" style="background-color: white; display: flex;">
	<br><br>
	<div id="left" style="font-family: Pretendard; font-size: 14pt; width: 20%; text-align: right;">
		<br><br>
	    &nbsp;&nbsp;&nbsp;&nbsp;
	    &nbsp;&nbsp;&nbsp;&nbsp;
	    &nbsp;&nbsp;&nbsp;&nbsp;
	    &nbsp;&nbsp;&nbsp;&nbsp;
	    &nbsp;&nbsp;&nbsp;&nbsp;
		<span style="font-weight: 800; line-height: 150%;">공고보기&nbsp;&nbsp;&nbsp;&nbsp;<br></span>
		<a href="DeleteDog.jsp" style="font-weight: 500;">신청하기&nbsp;&nbsp;&nbsp;&nbsp;</a>
	</div>
	<div id="right" style="width: 60%; margin: 0 auto; display: flex; justify-content: space-around; background-color: black;">
		<div style="width:5%;"></div>
		<div style="width:95%;">
			<span style="font-weight: 600; font-size: 14pt; line-height: 200%;">지역<br></span>
			<div style="width: 100px; border-radius: 50px; background-color: #F2F2F2; line-height: 80%; display: inline-block; text-align: center;">
				<br>&nbsp;&nbsp;서울 전체&nbsp;&nbsp;x<br><br>
			</div>
			<div style="width: 100px; border-radius: 50px; background-color: #F2F2F2; line-height: 80%; display: inline-block; text-align: center;">
				<br>&nbsp;&nbsp;마포구&nbsp;&nbsp;x<br><br>
			</div>
		</div>
	</div>
	<br><br>
</div>
 -->
 
 <div class="main" style="background-color: white; display: flex; justify-content: space-between;">
	<br><br>
	<div class="left" style="font-family: Pretendard; font-size: 14pt; width: 20%; text-align: right;">
		<br><br>
		<span style="font-weight: 800; line-height: 150%;">공고보기&nbsp;&nbsp;&nbsp;&nbsp;<br></span>
		<a href="ApplyPetSitting.jsp" style="font-weight: 500;">신청하기&nbsp;&nbsp;&nbsp;&nbsp;</a>
	</div>
	<div class="right" style="width: 60%; display: flex; justify-content: space-around;">
		<div style="width:5%;"></div>
		<div style="width:95%;">
			<!-- 검색 필터 -->
			<div style="display: flex; justify-content: space-around;">
				<div style="width: 5%;"></div>
				<div style="width: 45%;">
					<br>
					<span style="font-weight: 600; font-size: 14pt;">지역</span>
					<a style="font-weight: 400; font-size: 10pt; color: gray; line-height: 200%;">&nbsp;▶ 변경하기︎<br></a>
					<div style="width: 100px; border-radius: 50px; background-color: #F2F2F2; line-height: 80%; display: inline-block;">
						<br>&nbsp;&nbsp;<span style="text-align: left;">서울 전체</span>
						<span style="text-align: right;">x</span><br><br>
					</div>
					<div style="width: 100px; border-radius: 50px; background-color: #F2F2F2; line-height: 80%; display: inline-block; text-align: center;">
						<br>&nbsp;&nbsp;마포구&nbsp;&nbsp;x<br><br>
					</div>
				</div>
				<hr style="border: 1px solid #F2F2F2;">
				<div style="width: 5%;"></div>
				<div style="width: 45%;">
					<br>
					<span style="font-weight: 600; font-size: 14pt;">날짜</span>
					<a style="font-weight: 400; font-size: 10pt; color: gray; line-height: 200%;">&nbsp;▶ 변경하기︎<br></a>
					<div style="width: 100px; border-radius: 50px; background-color: #F2F2F2; line-height: 80%; display: inline-block; text-align: center;">
						<br>&nbsp;&nbsp;8월 26일&nbsp;&nbsp;x<br><br>
					</div>
					<div style="width: 100px; border-radius: 50px; background-color: #F2F2F2; line-height: 80%; display: inline-block; text-align: center;">
						<br>&nbsp;&nbsp;9월 2일&nbsp;&nbsp;x<br><br>
					</div>
				</div>
			</div>
			<hr style="border: 1px solid #F2F2F2;">
			<div style="display: flex; justify-content: space-around;">
				<div style="width: 5%;"></div>
				<div style="width: 45%;">
					<br>
					<span style="font-weight: 600; font-size: 14pt;">요일</span>
					<a style="font-weight: 400; font-size: 10pt; color: gray; line-height: 200%;">&nbsp;▶ 변경하기︎<br></a>
					<div style="width: 100px; border-radius: 50px; background-color: #F2F2F2; line-height: 80%; display: inline-block; text-align: center;">
						<br>&nbsp;&nbsp;월요일&nbsp;&nbsp;x<br><br>
					</div>
					<div style="width: 100px; border-radius: 50px; background-color: #F2F2F2; line-height: 80%; display: inline-block; text-align: center;">
						<br>&nbsp;&nbsp;일요일&nbsp;&nbsp;x<br><br>
					</div>
				</div>
				<hr style="border: 1px solid #F2F2F2;">
				<div style="width: 5%;"></div>
				<div style="width: 45%;">
					<br>
					<span style="font-weight: 600; font-size: 14pt;">크기</span>
					<a style="font-weight: 400; font-size: 10pt; color: gray; line-height: 200%;">&nbsp;▶ 변경하기︎<br></a>
					<div style="width: 100px; border-radius: 50px; background-color: #F2F2F2; line-height: 80%; display: inline-block; text-align: center;">
						<br>&nbsp;&nbsp;소형견&nbsp;&nbsp;x<br><br>
					</div>
					<div style="width: 100px; border-radius: 50px; background-color: #F2F2F2; line-height: 80%; display: inline-block; text-align: center;">
						<br>&nbsp;&nbsp;중형견&nbsp;&nbsp;x<br><br>
					</div>
				</div>
			</div>
			<!-- <hr style="border: 1px solid #F2F2F2;"> -->
			<div style="background-color: #F2F2F2; text-align: right; color: gray;">
				▲&nbsp;&nbsp;&nbsp;&nbsp;
			</div>
			<br>
			<div style="float: right; margin-bottom: 10px;">
				<select>
					<option>최신순</option>
				</select>
			</div>
			<!-- 공고 리스트 -->
			<div style="display: flex; justify-content: space-around; clear: both;">
				<div style="width: 30%; background-color: #F2F2F2; border-radius: 10px; text-align: center;">
					<br>
					<span style="font-weight: 600;">현재 6명 지원 중!</span>
					<hr style="border: 1px solid white;">
					마포구 서교동<br> 
					8월 26일<br>
					16:00 ~ 18:00<br>
					<br>
				</div>
				<div style="width: 30%; background-color: #F2F2F2; border-radius: 10px; text-align: center;">
					<br>
					<span style="font-weight: 600;">현재 6명 지원 중!</span>
					<hr style="border: 1px solid white;">
					마포구 서교동<br> 
					8월 26일<br>
					16:00 ~ 18:00<br>
					<br>
				</div>
				<div class="post" style="width: 30%; display: flex; justify-content: space-around; background-color: #F2F2F2; border-radius: 10px; text-align: center;">
					<div style="width: 10%;"></div>
					<div style="width: 30%;">
						<br>
						<img src="images/dog.png" style="width: 100px;">
					</div>
					<div style="width: 10%;"></div>
					<div style="width: 50%; text-align: left; font-size: 10pt;">
						<br><br>
						<span style="font-weight: 600; font-size: 12pt;">보리 <span style="font-size: 9pt; font-weight: 400;">말티즈, 5세</span></span>
						<hr style="border: 1px solid white;">
						마포구 서교동<br> 
						8월 26일<br>
						16:00 ~ 18:00<br>
					</div>
				</div>
			</div>
			<br><br>
		</div>
	</div>
	<div style="width: 20%;"></div>
</div>
 
 
<div class="footer" style="background-color: #BBBBBB;">
	<br><br><br><br><br><br>
</div>

</body>
</html>