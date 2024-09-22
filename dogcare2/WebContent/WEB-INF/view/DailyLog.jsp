<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%
request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<%
	
	String dog_cd = request.getParameter("dog_cd");
	String selected_date = request.getParameter("selected_date");
	System.out.println("자바단 dog_cd: "+dog_cd); //--==>>DOG2
	System.out.println("자바단 seleted: "+ selected_date); //--==>> 2024-09-10
	String memdog_cd = request.getParameter("memdog_cd");
	System.out.println("자바단 memdog_cd: "+ memdog_cd);
	
%> 

<%-- 페이지 상단에 날짜와 강아지 코드가 잘 넘어왔는지 확인하는 부분 --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DailyLogForm.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/final.css">
<!-- Flatpickr CSS & JS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>

<!-- Bootstrap (optional) -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">



<script>
    // 작성 버튼을 눌렀을 때 textarea를 보여주는 함수
    function showTextarea() 
    {
        document.getElementById('specForm').style.display = 'block';
        document.getElementById('createButton').style.display = 'none';
    }

    function showTextarea2() 
    {
        document.getElementById('diaryForm').style.display = 'block';
        document.getElementById('createButton2').style.display = 'none';
    }
    
   
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
		background: linear-gradient(to bottom, rgba(5, 5, 5, 0.1),
			rgba(0, 0, 0, 0)); /* 위쪽에만 그림자 */
		pointer-events: none; /* 요소에 클릭 등 이벤트가 영향을 주지 않도록 설정 */
	}
	
</style>

</head>
<body>


<c:import url="Menu.jsp"></c:import>
	<div class="main" style="background-color: white; display: flex; justify-content: space-between;">
		<br><br>
		<div class="left" style="font-family: Pretendard; font-size: 14pt; width: 20%; text-align: right;">
			<br><br> 
			<a href="DailyLog.jsp" style="font-weight: 800; line-height: 150%;">일지&nbsp;&nbsp;&nbsp;&nbsp;<br></a>
			<a href="HealthLog.jsp" style="font-weight: 500;">건강수첩&nbsp;&nbsp;&nbsp;&nbsp;</a>
		</div>
		<div class="content" style="width: 60%; text-align: center; font-size: 20pt; font-weight: 600;">		 
		<script>
	    function updateDate() 
	    {
	       
	        selected_date = document.getElementById("selected_date").value;
	        
	    }
		</script>	
		<br>
		<div class="container" style="width: 300px">
		    <input style="text-align: center" type="text" id="datePicker" class="form-control" placeholder="날짜 선택  : ${selected_date }" style="width: 50px;">
		</div>
		
		<script>
		    flatpickr("#datePicker", {
		        dateFormat: "Y-m-d",  // 날짜 형식을 'YYYY-MM-DD'로 설정
		        onChange: function(selectedDates, dateStr, instance) {
		            var dog_cd = "<%= dog_cd %>";
		            var memdog_cd = "<%= memdog_cd %>";
		            // 선택한 날짜로 바로 리다이렉트
		            window.location.href = "loglist.action?selected_date=" + dateStr + "&dog_cd=" + dog_cd + "&memdog_cd=" + memdog_cd;
		        }
		    });
		</script>
		
	
        
			<c:set var="memdog_cd" value="${param.memdog_cd}" />${memdog_cd } <!-- memdog_cd 받아온거 확인 -->
			
			
			<div style="display: flex; justify-content: space-around;">
				<div style="width: 90%; border-radius: 10px; box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.15); display: flex; justify-content: space-around;">
					<div style="width: 48%; display: flex; flex-direction: column; justify-content: center; align-items: center;">
						<br><br><br>
						<div style="width: 50%; border: 1px dotted #BBBBBB; border-radius: 10px; text-align: center;">
							<br><br>
							+<br>
							사진 추가하기
							<br><br><br>
						</div>
						<br><br>
						
						
						<!-- <textarea rows="10" cols="50" style="border: none; background-color: #F2F2F2;"></textarea>
							+ 스크립트 도 해야한다.
						 -->
						<div>
							<!-- 작성 버튼 -->
							<!-- 특이사항 폼 -->
							<form action="${diarylist[0] != null ? 'diaryupdate.action' : 'diaryinsert.action'}" method="post" id="diaryForm" style="display: ${diarylist[0] != null ? 'block' : 'none'};">
							    <!-- 숨겨진 필드로 spec_cd 전달 (업데이트 시 필요) -->
							    <input type="hidden" id="selected_date" name="selected_date" value="<%= selected_date %>">
						    	<input type="hidden" id="dog_cd" name="dog_cd" value="<%= dog_cd %>">
						    	<input type="hidden" id="memdog_cd" name="memdog_cd" value="<%=memdog_cd %>">
							    <c:if test="${diarylist[0] != null}">
							        <input type="hidden" name="diary_cd" value="${diarylist[0].diary_cd}">
							    </c:if>
								<!-- 제목 입력 필드 -->
						        <label for="diary_title">제목</label>
						        <input readonly="readonly" type="text" id="diary_title" name="diary_title" value="${diarylist[0] != null ? diarylist[0].diary_title : ''}" 
						        placeholder="제목을 입력하세요" style="width: 30%; border: none; background-color: #F2F2F2;">
							    <!-- textarea에 특이사항 내용 표시 -->
							    
							    <textarea readonly="readonly" name="diary_content" rows="5" cols="50" style="border: none; background-color: #F2F2F2;">
							    ${diarylist[0].diary_content}</textarea><br>
							
							    <!-- 제출 버튼 -->
							</form>
						</div>
						
						
						
						
						
						
						<br><br>
					</div>
					
					<hr style="border: 1px solid #F2F2F2;">
				
					<div style="width: 48%; text-align: left; font-size: 12pt; font-weight: 400;">
						<%-- <input type="hidden" id="memdog_cd" name="memdog_cd" value="<%=memdog_cd%>"> --%>
						<input type="hidden" id="dog_cd" name="dog_cd" value="<%=dog_cd%>">
						<br><br>
						
						
						
						
						
						
						<div>
						<form action="foodinsert.action" method="post" id="foodForm">
						<input type="hidden" id="fd_selected_date" name="selected_date" value=<%=selected_date %>>
						<input type="hidden" id="dog_cd" name="dog_cd" value=<%=dog_cd %>>
						<input type="hidden" id="memdog_cd" name="memdog_cd" value="<%=memdog_cd%>">
						
							<span style="font-size: 14pt; font-weight: 600;">사료</span>&nbsp;&nbsp;
							
							
							
							
							
							
							
							
							
							<c:forEach var = "foodlist" items = "${foodlist}">
								<hr style="border: 1px solid #F2F2F2;">
								${foodlist.feed_name } 	/ ${foodlist.fd_amount }g 
								<%-- <span style="color : gray; font-size: 10pt;"> ${foodlist.fd_date}</span> --%>
								
							</c:forEach>
						</form>
						</div>
						
						
						
						
						
						<br>
						<br>
						<!-- 영양제 -->
						<div>
						<form action="splinsert.action" method="post" id="splForm">
							<input type="hidden" id="spl_selected_date" name="selected_date" value=<%=selected_date %>>
							<input type="hidden" id="dog_cd" name="dog_cd" value=<%=dog_cd %>>
							<input type="hidden" id="memdog_cd" name="memdog_cd" value="<%=memdog_cd%>">
							
							<span style="font-size: 14pt; font-weight: 600;">영양제</span>&nbsp;&nbsp;
							
							
							<c:forEach var = "spllist" items = "${spllist}">
								<hr style="border: 1px solid #F2F2F2;">
									${spllist.spl_name }  <span style="color : gray; font-size: 10pt;">${spllist.spl_take_date }</span>
									
							</c:forEach>
						</form>
						</div>
						<!-- end영양제 -->
						
						
						
						<br>
						<br>
						
						
						
						
						
						<!-- 간식 -->
						<div>
						<form action="snackinsert.action" method="post" id="snackForm">
							<input type="hidden" id="snack_selected_date" name="selected_date" value=<%=selected_date %>>
							<input type="hidden" id="dog_cd" name="dog_cd" value=<%=dog_cd %>>
							<input type="hidden" id="memdog_cd" name="memdog_cd" value="<%=memdog_cd%>">
							
								<span style="font-size: 14pt; font-weight: 600;">간식</span>
								<c:forEach var="snacklist" items = "${snacklist }">
								<hr style="border: 1px solid #F2F2F2;">
								${snacklist.snack_name } / ${snacklist.snack_amount }g 
								<%-- <span style="color : gray; font-size: 10pt;">${snacklist.snack_date }</span> --%>
								<span style="float: right; color: gray;">
								</span>
								</c:forEach>
						</form> 
						</div>				
						
						<!-- 산책 -->
						<br>
						<div>
						<form action="walkinsert.action" method="post" id="walkForm">
							<input type="hidden" id="walk_selected_date" name="selected_date" value=<%=selected_date %>>
							<input type="hidden" id="dog_cd" name="dog_cd" value=<%=dog_cd %>>
							<input type="hidden" id="memdog_cd" name="memdog_cd" value="<%=memdog_cd%>">
							
								<span style="font-size: 14pt; font-weight: 600;">산책</span>&nbsp;&nbsp;<br>				
								
								<hr style="border: 1px solid #F2F2F2;">
								<c:forEach var="walklist" items = "${walklist }">
									${walklist.walk_start_date } ~ ${walklist.walk_end_date }<span style="float: right; color: gray;">
									</span>
									<hr style="border: 1px solid #F2F2F2;">
								</c:forEach>
						</form> 
						</div>
						<br>
						<form action="bathinsert.action" method="post" id="bathSpecForm">
						    <input type="hidden" id="selected_date" name="selected_date" value="<%= selected_date %>">
						    <input type="hidden" id="dog_cd" name="dog_cd" value="<%= dog_cd %>">
						    <input type="hidden" id="memdog_cd" name="memdog_cd" value="<%=memdog_cd%>">
						    
						    <span style="font-size: 14pt; font-weight: 600;">목욕</span>&nbsp;&nbsp;
						    
						    <!-- bathDate가 있으면 'O', 없으면 'X' 라디오 버튼 선택 -->
							<c:forEach var="bathDate" items="${bathDateList}">
							    <div>목욕 날짜: ${bathDate}</div>
							</c:forEach>
							<c:if test="${empty bathDateList}">
							    <div>목욕 기록이 없습니다.</div>
							</c:if>
						</form>
						<br>
						
						
						<div>
							<!-- 작성 버튼 -->
							<!-- 특이사항 폼 -->
							<form action="${speclist[0] != null ? 'updateSpec.action' : 'insertSpec.action'}" method="post" id="specForm" style="display: ${speclist[0] != null ? 'block' : 'none'};">
							    <!-- 숨겨진 필드로 spec_cd 전달 (업데이트 시 필요) -->
							    <input type="hidden" id="selected_date" name="selected_date" value="<%= selected_date %>">
						    	<input type="hidden" id="dog_cd" name="dog_cd" value="<%= dog_cd %>">
						    	<input type="hidden" id="memdog_cd" name="memdog_cd" value="<%=memdog_cd%>">
						    	
							    <c:if test="${speclist[0] != null}">
							        <input type="hidden" name="spec_cd" value="${speclist[0].spec_cd}">
							    </c:if>
								<span style="font-size: 14pt; font-weight: 600;">특이사항</span>&nbsp;&nbsp;<br>
							    <!-- textarea에 특이사항 내용 표시 -->
							    <textarea readonly="readonly" name="spec_content" rows="5" cols="50"style="border: none; background-color: #F2F2F2;">
							    ${speclist[0].spec_content}</textarea><br>
							
							    <!-- 제출 버튼 -->
							</form>
							<br><br>
						</div>
						<!-- END 산책 -->
					</div>			
				</div>
			</div>
		</div>
		<div style="width: 20%;"></div>
	</div>
	
	<br><br>

	<div style="text-align: center;">
	<form action="logform.action" method="get" id="bathSpecForm">
		<input type="hidden" id="selected_date" name="selected_date" value="<%= selected_date %>">
    	<input type="hidden" id="dog_cd" name="dog_cd" value="<%= dog_cd %>">
    	<input type="hidden" id="memdog_cd" name="memdog_cd" value="<%=memdog_cd%>">
    	<button type="submit" style="width: 100px; border: none; border-radius: 20px; background-color: #F2F2F2; font-size: 12pt; font-weight: 600; line-height: 80%;">
		<br>수정하기<br><br></button>
	</form>
	</div>

	<br><br><br>
	
	<div class="footer" style="background-color: #BBBBBB;">
		<br><br><br><br><br><br>
	</div>

</body>
</html>