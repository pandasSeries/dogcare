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
<title>Home.jsp</title>
<!-- 일시 중단 -->
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/final.css">
<style type="text/css">
	ul{	list-style: none; }
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
	background: linear-gradient(to bottom, rgba(5, 5, 5, 0.1),
		rgba(0, 0, 0, 0)); /* 위쪽에만 그림자 */
	pointer-events: none; /* 요소에 클릭 등 이벤트가 영향을 주지 않도록 설정 */
	}
	
	#innerFade 
	{
	    width: 100%; /* 가로 100%로 설정 */
	    height: 300px; /* 원하는 높이 설정 */
	    position: relative;
	    overflow: hidden; /* div 안에서 이미지가 넘치지 않도록 설정 */
	    list-style: none;
	    padding: 0;
	    margin: 0;
	    display: flex; /* flexbox 사용 */
	    justify-content: center; /* 중앙 정렬 */
	    align-items: center; /* 수직 중앙 정렬 */
	}

#innerFade li 
	{
	    position: absolute; /* 슬라이드/페이드 효과를 위해 모든 li를 겹치게 설정 */
	    width: 100%;
	    height: 100%;
	}

#innerFade img 
	{
	    width: 100%; /* 이미지 너비를 자동으로 설정하여 비율을 유지 */
	    height: 100%; /* 이미지의 높이를 div에 맞추기 */
	    object-fit: contain; /* 비율에 맞춰 이미지 잘라내기 */
	    /* object-fit: cover;  */
	}

	
</style>
<script type="text/javascript"	src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript"	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.innerfade.js"></script>
<script type="text/javascript">
	
	$(document).ready(function() {
	    // innerfade 플러그인 설정
	    $("#innerFade").innerfade({
	        animationtype: "fade",  // 'fade' 또는 'slide' 선택
	        speed: "slow",          // 애니메이션 속도
	        timeout: 3000,          // 이미지 전환 간격 (밀리초)
	        type: "random",         // 전환 순서 (순차적 또는 랜덤)
	        containerheight: '300px' // 컨테이너 높이 (필요에 따라 변경 가능)
	    });
	});

</script>

</head>
<body>
<c:import url="Menu.jsp"></c:import>

<div class="main" style="background-color: white; display: flex; justify-content: space-between;">
	<br><br>
	<div class="left" style="font-family: Pretendard; font-size: 14pt; width: 20%; text-align: right;">
	<!-- 왼쪽공백 -->
	</div>
	<div class="content" style="width: 60%; text-align: center; font-size: 12pt; font-weight: 400;">
		<br><br><br>
		<div class="image-container">
			<ul id="innerFade">
				<li><img alt="" src="images/maindog1.jpg"/></li>
				<li><img alt="" src="images/maindog2.jpg"/></li>
				<li><img alt="" src="images/maindog4.jpg"/></li>
			</ul>
		</div>
		<hr style="border: 2px solid #F2F2F2;">
		<div style="display: flex; justify-content: space-between;">
			<span style="font-size: 20pt; text-align: center bold; ">
			댕댕에 오신것을 환영해요
			</span>
		</div>
		<hr style="border: 2px solid #F2F2F2;">
		<div style="display: flex; justify-content: space-between; align-items: center;">
		<span style="width:55%; font-weight: 400; font-size: 14pt;">
		댕댕과 1000마리의 강아지가 함께 하고있어요.
		</span>
			<hr style="border: 1px solid #F2F2F2;">
			<div style="width: 50%;">
				<div style="display: flex;">
				<span style="font-weight: 400; font-size: 14pt;">
				지금 댕댕에서는 10000명의<br> 펫시터가 활동중이에요.
				</span>
				</div>
				<hr style="border: 1px solid #F2F2F2;">
				<div style="display: flex; font-size: 14pt;">
				댕댕의 펫시터가 케어한 횟수 5000회
				</div>
			</div>
		</div>
		<hr style="border: 2px solid #F2F2F2;">
		<div style="display: flex; justify-content: space-between; align-items: center;">
			<div style="width: 30%; font-size: 14pt;">
				<span style="font-weight: 600;">펫시팅 이용건수</span><br><br>
				<span style="font-size: 20pt;">4<span style="font-size: 12pt;">건</span></span><br><br>
				<span style="color: gray; font-size: 12pt;">▶ 펫시팅내역 관리</span>
			</div>
			<hr style="border: 1px solid #F2F2F2;">
			<div style="width: 70%; display: flex; justify-content: space-between; align-items: center; text-align: left;">
				<div style="width: 10%;">

					<span style="font-weight: 600; font-size: 14pt; text-align: left;">사진첩</span>
					<br>
				</div> 				
				<div style="width: 25%;">
					<img src="images/dailyDog.jpg" style="width: 90%; border: 3px solid #BBBBBB; border-radius: 5px;">
				</div>
				<div style="width: 25%;">
					<img src="images/dailyDog.jpg" style="width: 90%; border: 3px solid #BBBBBB; border-radius: 5px;">
				</div>
				<div style="width: 25%;">
					<img src="images/dailyDog.jpg" style="width: 90%; border: 3px solid #BBBBBB; border-radius: 5px;">
				</div>
				<div style="width: 15%; text-align: right;">
					<span style="color: gray; font-size: 12pt;">▶ 더보기</span>
				</div>
			</div>
		</div>
		<hr style="border: 2px solid #F2F2F2;">
		<br><br>
	</div>
	<div style="width: 20%;"></div>
	</div>

	<br><br><br>

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