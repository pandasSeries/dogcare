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

	/*
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
	*/
	
	function movePage(element)
	{
		var postCd = element.getAttribute("data-postCd");
		
		if (postCd)
		{
			$(location).attr("href", "applicationcontent.action?postCd=" + postCd);			
		}
	}

</script>
</head>
<body>

<c:import url="Menu.jsp"></c:import>
 
 <div class="main" style="background-color: white; display: flex; justify-content: space-between;">
	<br><br>
	<div class="left" style="font-family: Pretendard; font-size: 14pt; width: 20%; text-align: right;">
		<br><br>
		<a href="petsittinglist.action" style="font-weight: 800; line-height: 150%;">공고보기<br></a>
		<c:if test="${memType.equals('D') }">
		<a href="applypetsittingform.action" style="font-weight: 500;">신청하기</a>
		</c:if>
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
			<hr style="border: 3px solid #F2F2F2;">
			<!-- 
			<div style="background-color: #F2F2F2; text-align: right; color: gray;">
				▲&nbsp;&nbsp;&nbsp;&nbsp;
			</div> 
			-->
			<br>
			<div style="display: inline;">
				<a href="" style="color: gray; font-size: 11pt; font-weight: 600;">내 작성글만 보기</a>
			</div>
			<div style="float: right; display: inline;">
				<select>
					<option>최신순</option>
				</select>
			</div>
			<div><br></div>
			<!-- 공고 리스트 -->
			<div style="display: flex; flex-wrap: wrap; justify-content: flex-start; gap: 20px;">
			<c:forEach var="req" items="${list }" varStatus="status">
				<div data-postCd="${req.post_cd }" onclick="movePage(this)" style="width: 32%; display: flex; justify-content: space-around; background-color: #F2F2F2; border-radius: 10px; text-align: center;">
					<div style="width: 10%;"></div>
					<div style="width: 30%;">
						<br>
						<img src="images/dog.png" style="width: 100%;">
						<br>
					</div>
					<div style="width: 10%;"></div>
					<div style="width: 50%; text-align: left; font-size: 10pt;">
						<br><br>
						<span style="font-weight: 600; font-size: 12pt;">${req.dog_name }
						<c:if test="${req.dog_count>=2 }">
						<span style="font-size: 9pt; font-weight: 400;"> 외 ${req.dog_count }마리</span>
						</c:if>
						</span>
						<hr style="border: 1px solid white;">
						${req.class1 } ${req.class2 }<br> 
						${req.work_date.substring(2,4) }년 ${req.work_date.substring(5,7) }월 ${req.work_date.substring(8,10) }일 ${req.work_date.substring(11,13) }시<br>
						${req.work_time }시간<br>
						<br><br>
					</div>
				</div>
				<c:choose>
					<c:when test="${status.index % 3 == 2 && !status.last}">
					</div>
					<br>
					<div style="display: flex; flex-wrap: wrap; justify-content: flex-start; gap: 20px;">
					</c:when>
					<c:otherwise>
						<c:if test="${status.last }">
						</div>
						<br>
						</c:if>
					</c:otherwise>
				</c:choose>
			</c:forEach>
									
			
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