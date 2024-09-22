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
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<%
	String postCd = request.getParameter("postCd");
	String selectedS = (String)request.getAttribute("selectedS");
%>
<script type="text/javascript">
	
	$().ready(function()
	{
		$("#applyBtn").click(function()
		{
			$(location).attr("href", "petsittingapply.action?postCd=<%=postCd%>");
		});
		
		$("#selectBtn").click(function()
		{
			//alert($('input[name="select"]:checked').val());
			$(location).attr("href", "selectpetsitter.action?postCd=<%=postCd%>&sCd=" + $('input[name="select"]:checked').val());
		});
		
		$("#<%=selectedS%>").css({"background-color":"#BBBBBB", "color":"white"});
		
	});

</script>

<script type="text/javascript">

//팝업 윈도우즈
function winOpen(element) 
{
     var sCd = element.getAttribute('data-code');
     var theURL = "petsitterinfopopup.action?sCd=" + sCd;
     var flag = "left=10,top=10,width=700,height=1000,toolbar=no,menubar=no,status=no,scrollbars=no,resizable=no";
     window.open(theURL, 'PopupWindow', flag);
}

</script>

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
	<div class="right" style="width: 60%; display: flex; justify-content: space-around;">
		<div style="width: 10%;"></div>
		<div style="width: 70%; display: flex; justify-content: space-around; box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.2); margin-top: 25px; margin-bottom: 25px; align-items: center;">
			<div style="width: 3%; background-color: #F2F2F2;"></div>
			<div style="width: 20%; text-align: center; background-color: #F2F2F2;">
				<br><br>
				<hr style="border: 1px solid white; width: 50%;">
				<br>
				<span style="font-weight: 600; font-size: 14pt;">반려견 정보&nbsp;</span><br><br>
				<c:forEach var="dog" items="${dogList }">
					<br>
					<img src="images/dog.png" style="width: 100px;"><br>
					<span style="font-weight: 600; font-size: 14pt;">${dog.dog_name }<br><span style="font-size: 11pt; font-weight: 400;">${dog.breed }, ${dog.age }세</span></span><br>
					<a style="font-size: 10pt; font-weight: 600; color: gray;">정보 보기</a>
					<br><br>
					<hr style="border: 1px solid white; width: 50%;">
					<br>
				</c:forEach>
			</div>
			<hr style="border: 1px solid #F2F2F2;">
			<div style="width: 5%;"></div>
			<div style="width: 70%; line-height: 70%;">
				<br><br><br><br><br>
				<span style="font-weight: 600; font-size: 14pt;">장소&nbsp;</span>
				${content.class1 } ${content.class2 } ${content.class3 }
				<br><br><br>
				<span style="font-weight: 600; font-size: 14pt;">예약 일시&nbsp;</span>
				${content.work_date.substring(2,4) }년 ${content.work_date.substring(5,7) }월 ${content.work_date.substring(8,10) }일 ${content.work_date.substring(11,13) }시
				<br><br><br>
				<span style="font-weight: 600; font-size: 14pt;">맡길 시간&nbsp;</span>
				${content.work_time }시간			
				<br><br><br>
				<span style="font-weight: 600; font-size: 14pt;">요청사항&nbsp;</span>
				<br><br>
				<div style="width: 200px; background-color: #F2F2F2; border-radius: 5px;">
						<br>
						<c:forEach var="req" items="${reqList}">
						&nbsp;&nbsp;● ${req.req_ty }
						<hr style="border: 1px solid white;">
						</c:forEach>
				</div>
				<br><br>
				<span style="font-weight: 600; font-size: 14pt;">참고사항&nbsp;</span>
				<br><br>
				<div style="background-color: #F2F2F2; width: 300px;">
					<br>
					&nbsp;&nbsp;${content.cf }
					<br><br>
				</div>
				<br><br><br>
				<span style="font-weight: 600; font-size: 14pt;">지원자 정보&nbsp;</span>
				<br><br>
				<c:forEach var="petsitter" items="${petsitterList }">
					<div id="${petsitter.s_cd }" style="display: flex; justify-content: space-around; width:80%; background-color: #F2F2F2; align-items: center;">
						<div style="width: 5%;"></div>
						<div style="width: 80%; margin-top: 15px; margin-bottom: 15px;" data-code="${petsitter.s_cd }" onclick="winOpen(this)">
							<span style="font-weight: 600; font-size: 14pt;">${petsitter.name } 펫시터</span><br><br>
							<span style="font-weight: 600;">등급</span> ${petsitter.gr }
							&nbsp;&nbsp;<span style="font-weight: 600;">수행건수</span> ${petsitter.perform_count }
							&nbsp;&nbsp;<span style="font-weight: 600;">반려경험</span> ${petsitter.exp_yn }
							&nbsp;&nbsp;<span style="font-weight: 600;">평균평점</span> ${petsitter.rating_avg }/10
						</div>
						<c:if test="${memCd.equals(writerCd) && selectedS==null }">
						<div style="width: 10%; text-align: center;">
							<input type="checkbox" name="select" value="${petsitter.s_cd }">
						</div>
						</c:if>
						<div style="width: 5%;"></div>
					</div>
					<br>
				</c:forEach>
				
				<br><br><br>
				<!-- 
				<button type="button" style="border: none; background-color: #F2F2F2; border-radius: 50px; width: 100px; font-weight: 600;"><br>신청하기<br><br></button> 
				-->
				<br><br>
			</div>
		</div>
		<div style="width: 5%;"></div>
		<div style="width: 15%;">
			<br><br>
			<c:if test="${memType.equals('S') && !memCd.equals(writerCd) && selectedS==null }">
			<button type="button" id="applyBtn" style="border: none; background-color: #F2F2F2; border-radius: 8px; width: 100px; font-weight: 600; margin-bottom: 5px;"><br>지원하기<br><br></button> 
			</c:if>
			<c:if test="${memCd.equals(writerCd) && selectedS==null }">
			<button type="button" id="selectBtn" style="border: none; background-color: #F2F2F2; border-radius: 8px; width: 100px; font-weight: 600; margin-bottom: 5px;"><br>선택하기<br><br></button>
			<button type="button" id="deleteBtn" style="border: none; background-color: #F2F2F2; border-radius: 8px; width: 100px; font-weight: 600; margin-bottom: 5px;"><br>삭제하기<br><br></button> 
			</c:if>
		</div>
	</div>
	<div style="width: 10%;"></div>
</div>
 
 
<div class="footer" style="background-color: #BBBBBB;">
	<br><br><br><br><br><br>
</div>

</body>
</html>