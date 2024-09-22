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
	//System.out.println(dog_cd); //--==>>DOG2
	System.out.println(selected_date); //--==>> 2024-09-10
%> 

<%-- 페이지 상단에 날짜와 강아지 코드가 잘 넘어왔는지 확인하는 부분 --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DailyLogForm.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/final.css">
    <script>
        // 작성 버튼을 눌렀을 때 textarea를 보여주는 함수
        function showTextarea() 
        {
            document.getElementById('specForm').style.display = 'block';
            document.getElementById('createButton').style.display = 'none';
        }

        // 페이지 로드 시 특이사항이 있으면 textarea를 자동으로 보여주는 함수
        
       
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
		
    
    	<form action="logform.action?dog_cd=<%=dog_cd%>&selected_date=<%=selected_date %>" method="get" id="logForm">
    		<label for="dateSelect">날짜: </label>
    		<select name="selected_date" id="selected_date" onchange="this.form.submit();" style="border: none; font-size: 18pt;">
        <%
            // 현재 선택된 날짜를 가져오기 (파라미터에서 가져옴)
            String selectedDate = request.getParameter("selected_date");
            if (selectedDate == null) {
                // 선택된 날짜가 없으면 오늘 날짜로 설정
                selectedDate = LocalDate.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
            }

            // 현재 날짜
            LocalDate today = LocalDate.now();

            // 날짜 형식 지정 (예: 2024-09-10)
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");

            // 현재 날짜와 지난 9일 날짜 출력
            for (int i = 0; i < 10; i++) {
                LocalDate date = today.minusDays(i);
                String formattedDate = date.format(formatter);
        %>
            <option value="<%= formattedDate %>" <%= formattedDate.equals(selectedDate) ? "selected" : "" %>>
                <%= formattedDate %>
            </option>
        <%
            }
        %>
    		</select>
		</form>
    		<br>	
        

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
						<textarea rows="10" cols="50" style="border: none; background-color: #F2F2F2;"></textarea>
						<br><br>
					</div>
					
					<hr style="border: 1px solid #F2F2F2;">
				
					<div style="width: 48%; text-align: left; font-size: 12pt; font-weight: 400;">
						<%-- <input type="hidden" id="memdog_cd" name="memdog_cd" value="<%=memdog_cd%>"> --%>
						<input type="hidden" id="dog_cd" name="dog_cd" value="<%=dog_cd%>">
						<br><br>
						
						
						
						
						
						
						<div>
						<form action="foodinsert.action" method="post" id="foodForm">
<!--여기가 없으면 안돌아감--><input type="hidden" id="fd_selected_date" name="selected_date" value=<%=selected_date %>>
							<input type="hidden" id="dog_cd" name="dog_cd" value=<%=dog_cd %>>
							<span style="font-size: 14pt; font-weight: 600;">사료</span>&nbsp;&nbsp;
							
							<select name="feed_name" id="food_selected">
								<option>사료를 선택하세요</option>
								<c:forEach var = "foodselect" items = "${foodselect}">
									<option value="${foodselect.feed_name}">${foodselect.feed_name}</option>
								</c:forEach>
							</select>
							
							<!-- <input type="text" style="width: 80px;"> -->
							<input type="text" style="width: 20px;" name="fd_amount">&nbsp;g&nbsp;&nbsp;
							<button type="submit" >등록</button><br>
							
							<c:forEach var = "foodlist" items = "${foodlist}">
								<hr style="border: 1px solid #F2F2F2;">
								${foodlist.feed_name } 	/ ${foodlist.fd_amount }g <span style="color : gray; font-size: 10pt;"> ${foodlist.fd_date}</span>
								<span style="float: right; color: gray;" >
									<a href="fooddelete.action?fd_cd=${foodlist.fd_cd}&selected_date=<%=selected_date %>&dog_cd=<%=dog_cd %>">x</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								</span>
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
							<span style="font-size: 14pt; font-weight: 600;">영양제</span>&nbsp;&nbsp;
							<select>
								<option>종류</option>
							</select>
							<select name = "spl_name" id="spl_selected">
								<option>영양제를 선택하세요</option>
								
								<c:forEach var = "splselect" items = "${splselect}">
									<option value="${splselect.spl_name}">${splselect.spl_name}</option>
								</c:forEach>
							</select>
							<button type="submit">등록</button><br>
							<c:forEach var = "spllist" items = "${spllist}">
								<hr style="border: 1px solid #F2F2F2;">
									${spllist.spl_name }  <span style="color : gray; font-size: 10pt;">${spllist.spl_take_date }</span>
									<span style="float: right; color: gray;" >
										<a href="spldelete.action?spl_take_cd=${spllist.spl_take_cd}&selected_date=<%=selected_date %>&dog_cd=<%=dog_cd %>">x</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									</span>
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
								<span style="font-size: 14pt; font-weight: 600;">간식</span>
								<input type="text" style="width: 80px;" name="snack_name">
								<input type="text" style="width: 20px;" name="snack_amount">&nbsp;g
								<button type="submit">등록</button><br>
								<c:forEach var="snacklist" items = "${snacklist }">
								<hr style="border: 1px solid #F2F2F2;">
								${snacklist.snack_name } / ${snacklist.snack_amount }g <span style="color : gray; font-size: 10pt;">${snacklist.snack_date }</span>
								<span style="float: right; color: gray;">
								<a href="snackdelete.action?snack_cd=${snacklist.snack_cd}&selected_date=<%=selected_date %>&dog_cd=<%=dog_cd %>">x</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
								<span style="font-size: 14pt; font-weight: 600;">산책</span>&nbsp;&nbsp;<br>				
								산책시작시간  <input placeholder ="ex. 17:30" type="text" style="width: 80px;" name="walk_start_date">
								~ 산책종료시간  <input placeholder ="ex. 18:30" type="text" style="width: 80px;" name="walk_end_date">
								<button type="submit">등록</button>
								
								<hr style="border: 1px solid #F2F2F2;">
								<c:forEach var="walklist" items = "${walklist }">
									${walklist.walk_start_date } ~ ${walklist.walk_end_date }<span style="float: right; color: gray;">
									<a href="walkdelete.action?walk_cd=${walklist.walk_cd}&selected_date=<%=selected_date %>&dog_cd=<%=dog_cd %>">x</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									</span>
									<hr style="border: 1px solid #F2F2F2;">
								</c:forEach>
						<!-- 16:43 ~ 17:20<span style="float: right; color: gray;">x&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
						<hr style="border: 1px solid #F2F2F2;">-->
						</form> 
						</div>
						
						
						<br>
						<%-- <div>
						<form action="specbathinsert.action" method="post" id="walkForm">
							<input type="hidden" id="walk_selected_date" name="selected_date" value=<%=selected_date %>>
							<input type="hidden" id="dog_cd" name="dog_cd" value=<%=dog_cd %>>
							
								<span style="font-size: 14pt; font-weight: 600;">목욕</span>&nbsp;&nbsp;						
								<input type="radio" name="bathCheck" value="1">O
								<input type="radio" name="bathCheck" value="0">X
								<!-- bathcheck가 0 이면 bathlist로 조회했을때 그냥 x 라디오버튼이 selected 되어있어야 한다. -->
								<c:forEach var="bathlist" items= "${bathlist }" }>
									${bathlist.bath_date }<span style="float: right; color: gray;">
									
									</span>
								</c:forEach>
								
							selected_date dog_cd bathcheck spec_content spec_cd
								
							<br><br>
							<span style="font-size: 14pt; font-weight: 600;">특이사항</span><br>	
							<textarea rows="5" cols="50" style="border: none; background-color: #F2F2F2;" name="spec"></textarea>					
						</form>
						</div> --%>
						
					
						<form action="bathinsert.action" method="post" id="bathSpecForm">
						    <input type="hidden" id="selected_date" name="selected_date" value="<%= selected_date %>">
						    <input type="hidden" id="dog_cd" name="dog_cd" value="<%= dog_cd %>">
						    
						    <span style="font-size: 14pt; font-weight: 600;">목욕</span>&nbsp;&nbsp;
						    
						    <!-- bathDate가 있으면 'O', 없으면 'X' 라디오 버튼 선택 -->
						    <input type="radio" name="bathcheck" value="O" <c:if test="${bathDate != null}">checked</c:if>>O <!-- 이 if는 조회용으로 -->
							<input type="radio" name="bathcheck" value="X" <c:if test="${bathDate == null}">checked</c:if>>X
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button type="submit">등록</button>
							<c:forEach var="bathDate" items="${bathDateList}">
							    <div>목욕 날짜: ${bathDate}</div>
							</c:forEach>
							<c:if test="${empty bathDateList}">
							    <div>목욕 기록이 없습니다.</div>
							</c:if>
						</form>
						<br><br><br>
						
						
						
						
						<%--<div> 
						<form action="splinsert.action" method="post" id="specForm">
							<input type="hidden" id="spl_selected_date" name="selected_date" value=<%=selected_date %>>
							<input type="hidden" id="dog_cd" name="dog_cd" value=<%=dog_cd %>>
							<span style="font-size: 14pt; font-weight: 600;">특이사항</span>&nbsp;&nbsp;<br>
							<textarea rows="5" cols="50" style="border: none; background-color: #F2F2F2;" name="spec_content"></textarea>
								<button type="submit">등록</button>
								<hr style="border: 1px solid #F2F2F2;">
								<c:forEach var="speclist" items = "${spec_content_list }">
									${speclist.spec_content }<span style="float: right; color: gray;">
									<a href="walkdelete.action?walk_cd=${speclist.spec_cd}&selected_date=<%=selected_date %>&dog_cd=<%=dog_cd %>">x</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									</span>
									<hr style="border: 1px solid #F2F2F2;">
								</c:forEach>
						</form>
						</div> --%>
						
						
						<%-- <div>
						<!-- 작성 버튼 -->
						<button id="createButton" onclick="showTextarea()">작성</button>
						
						<!-- 특이사항 폼 -->
						<form action="${speclist[0] != null ? 'updateSpec.action' : 'insertSpec.action'}" method="post" id="specForm" style="display: none;">
						    
						    <!-- 숨겨진 필드로 날짜와 강아지 코드 전달 -->
						    <input type="hidden" name="dog_cd" value="${dog_cd}">
						    <input type="hidden" name="selected_date" value="${selected_date}">
						    
						    <!-- 숨겨진 필드로 spec_cd 전달 (업데이트 시 필요) -->
						    <c:if test="${speclist[0] != null}">
						        <input type="hidden" name="spec_cd" value="${speclist[0].spec_cd}">
						    </c:if>
						
						    <!-- 특이사항 입력/수정 textarea -->
						    <textarea name="spec_content" rows="5" cols="50" placeholder="특이사항을 입력하세요">
						        <c:out value="${speclist[0].spec_content}"/>
						    </textarea>
						    
						    <!-- 제출 버튼 -->
						    <button type="submit">${speclist[0] != null ? 'Update Spec' : 'Add Spec'}</button>
						</form>
						</div> --%>
						
						
						<div>
							<!-- 작성 버튼 -->
							<button id="createButton" onclick="showTextarea()" style="display: ${speclist[0] != null ? 'none' : 'block'};">작성</button>
							
							<!-- 특이사항 폼 -->
							<form action="${speclist[0] != null ? 'updateSpec.action' : 'insertSpec.action'}" method="post" id="specForm" style="display: ${speclist[0] != null ? 'block' : 'none'};">
							    <!-- 숨겨진 필드로 spec_cd 전달 (업데이트 시 필요) -->
							    <input type="hidden" id="selected_date" name="selected_date" value="<%= selected_date %>">
						    	<input type="hidden" id="dog_cd" name="dog_cd" value="<%= dog_cd %>">
							    <c:if test="${speclist[0] != null}">
							        <input type="hidden" name="spec_cd" value="${speclist[0].spec_cd}">
							    </c:if>
							
							    <!-- textarea에 특이사항 내용 표시 -->
							    <textarea name="spec_content" rows="5" cols="50">${speclist[0].spec_content}</textarea>
							
							    <!-- 제출 버튼 -->
							    <button type="submit">${speclist[0] != null ? 'Update Spec' : 'Add Spec'}</button>
							</form>
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
		<button type="button" style="width: 100px; border: none; border-radius: 20px; background-color: #F2F2F2; font-size: 12pt; font-weight: 600; line-height: 80%;"><br>등록하기<br><br></button>
		<button type="button" style="width: 100px; border: none; border-radius: 20px; background-color: #F2F2F2; font-size: 12pt; font-weight: 600; line-height: 80%;"><br>일괄등록<br><br></button>
	</div>

	<br><br><br>
	
	<div class="footer" style="background-color: #BBBBBB;">
		<br><br><br><br><br><br>
	</div>

</body>
</html>