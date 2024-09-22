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
<title>RegisterDog.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/final.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">

	$().ready(function()
	{
		$("a").hover(function()
		{
			$(this).css("color", "#A3DBFF");
		}, function()
		{
			$(this).css("color", "black");
		});
		
		$("#link").hover(function()
		{
			$(this).css("color", "#A3DBFF");
		}, function()
		{
			$(this).css("color", "gray");
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

<div class="main" style="background-color: #EBF7FF;">
	<br><br>
	<div class="left" style="font-family: Pretendard; font-size: 14pt; width: 20%; float: left; text-align: right;">
	    <br><br><br>
		<span style="font-weight: 800; line-height: 150%;">반려견 등록&nbsp;&nbsp;&nbsp;&nbsp;<br></span>
		<a href="DogManagement.jsp" style="font-weight: 500;">반려견 관리&nbsp;&nbsp;&nbsp;&nbsp;</a>
	</div>
	<div style="width: 60%; margin: 0 auto;">
		<div style="background-color: #A3DBFF; color: white; display: flex; justify-content: space-between; align-items: center;">
			<div style="width: 20%; text-align: right;">
				<br>
				<span style="font-size: 20pt; font-weight: 600;">&nbsp;반려견 등록하기</span>
				<br><br>
			</div>
			<div style="width: 75%; text-align: left;">
				<br>
				<span style="line-height: 150%;">
				&nbsp;● 반려견은 최대 3마리까지 등록 가능합니다.<br>
				&nbsp;● 공유받은 코드가 있을 경우, '코드 입력하기' 클릭 후 코드와 비밀번호를 입력하면 등록이 완료됩니다.
				</span>
				<br><br>
			</div>
		</div>
		<div style="background-color: white; text-align: left; display: flex; justify-content: space-between;">
			<div style="width: 40%; text-align: center;">
				<br><br><br>
				&nbsp;&nbsp;&nbsp;&nbsp;
				<img src="images/dog.png" style="width: 150px;"><br>
				<a style="font-family: Pretendard; font-weight: 600; font-size: 14pt; vertical-align: top;">사진 변경하기</a>
			</div>	
			<div style="font-family: Pretendard; font-weight: 600; font-size: 14pt; width: 60%;">
				<br>
				<a href="" id="link" style="color: gray; font-size: 12pt; font-weight: 400; float: right;">코드 입력하기&nbsp;&nbsp;&nbsp;</a>
				<br>
				이름 *<br>
				<input type="text" style="border: none; border-bottom: 3px solid #A3DBFF; height: 30px;"> 
				<span style="font-family: Pretendard; font-weight: 400; font-size: 12pt; color: red; display: none;">이름은 필수입력항목입니다.</span>
				<br><br>
				생년월일 *<br>
				<input type="text">&nbsp;
				<button type="button" style="border: none; background-color: white;"><img src="images/calendar.png" style="width: 20px; vertical-align: middle;"></button>
				<span style="font-family: Pretendard; font-weight: 400; font-size: 12pt; color: red; display: none;">생년월일은 필수입력항목입니다.</span>
				<br><br>
				견종 *<br>
				<input type="text">
				<select>
					<option>직접입력</option>
				</select>
				<span style="font-family: Pretendard; font-weight: 400; font-size: 12pt; color: red; display: none;">견종은 필수입력항목입니다.</span>
				<br><br>
				크기 *<br>
				<input type="radio" name="size">소형견&nbsp;
				<input type="radio" name="size">중형견&nbsp;
				<input type="radio" name="size">대형견
				<br><br>
				무게 *<br>
				<input type="text" style="width: 30px;"> kg
				<br><br>
				성별 *<br>
				<input type="radio" name="gender">남&nbsp;
				<input type="radio" name="gender">여&nbsp;
				<br><br>
				중성화여부 *<br>
				<input type="radio" name="neutered">O&nbsp;
				<input type="radio" name="neutered">X&nbsp;
				<br><br>
				사료<br>
				<input type="text">
				<select>
					<option>직접입력</option>
				</select>
				<button type="button">추가</button>
				<br><br>
				알러지<br>
				<input type="text">
				<button type="button">추가</button>
				<br><br>
				기저질환<br>
				<input type="text">
				<button type="button">추가</button>
				<br><br>
				활동량<br>
				<input type="radio" name="active">게으름&nbsp;
				<input type="radio" name="active">보통&nbsp;
				<input type="radio" name="active">활발함
				<br><br>
				사교성<br>
				<input type="radio" name="dog">친구 좋아함&nbsp;
				<input type="radio" name="dog">친구 안좋아함<br>
				<input type="radio" name="human">사람 좋아함&nbsp;
				<input type="radio" name="human">사람 안좋아함
				<br><br>
				배변습성<br>
				<input type="radio" name="defecate">상관없음&nbsp;
				<input type="radio" name="defecate">실내만&nbsp;
				<input type="radio" name="defecate">실외만
				<br><br>
				동물등록증<br>
				<input type="file" value="첨부하기">
				<br><br><br>
				<button type="button" style="width: 80px; border: none; border-radius: 20px; background-color: #F2F2F2; font-weight: 800; font-size: 10pt;"><br>등록하기<br><br></button>
				<br><br>
			</div>
		</div>
	</div>
	<br><br>
</div>

<div class="footer" style="background-color: white;">
	<br><br><br><br><br><br>
</div>

</body>
</html>