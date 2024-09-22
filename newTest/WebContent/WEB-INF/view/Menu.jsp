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
<title>Menu.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/final.css">
</head>
<body>

<!-----------------------------------------
	Menu.jsp
	- 메인 메뉴 뷰(View) 페이지.
	- 로그인 후 접근 페이지의 메뉴.
	- 로그아웃 처리 가능 컨트롤 구성.
 ----------------------------------------->
 
<br><br><br>
<div class="header" style="display: flex; align-items: center; justify-content: space-between;">
	
	<div style="display: flex; align-items: center;">
		&nbsp;&nbsp;&nbsp;&nbsp; 
		<img src="images/logo.png" style="width: 150px; vertical-align: middle;">
	</div>
	
	<div id="tab" style="display: flex; align-items: center;">
	    <a href="main.action">홈</a>
	    <a href="petsittinglist.action">펫시팅</a>
	    <a>커뮤니티</a>
	    <a href="mypage.action">마이페이지</a>
	</div>
	
		<c:choose>
		<c:when test="${memCd!=null }">
		<div style="display: flex; align-items: center;">
			<img src="images/bell.png" style="width: 25px; margin-left: 10px;">
			<img src="images/gear.png" style="width: 25px; margin-left: 10px;">
			<a href="mypage.action"><img src="images/user.png" style="width: 30px; margin-left: 10px;"></a>
			&nbsp;&nbsp;&nbsp;&nbsp;
		</div>
		</c:when>
		<c:otherwise>
			<c:if test="${memCd==null }">
			<div style="display: flex; float: right; font-family: Pretendard; color: gray;">			
				<a href="loginform.action">로그인</a>&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="memberinsertform.action">회원가입</a>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			</div>
			</c:if>
		</c:otherwise>
	</c:choose>
</div>
<br>


</body>
</html>