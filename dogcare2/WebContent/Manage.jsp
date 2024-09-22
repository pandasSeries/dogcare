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
<title>Manage.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/final.css">
</head>
<body>
<c:import url="WEB-INF/view/Menu.jsp"></c:import>
<div class="btn-group" role="group">
 
 	<a href="MemberList.jsp" role="button" class="menu btn btn-success btn-lg">회원 정보</a>
	<a href="employeelist.action" role="button" class="menu btn btn-success btn-lg">회원 관리</a>
 		
	<a href="reglist.action" role="button" class="menu btn btn-success btn-lg">지역 정보</a>
	<a href="regionlist.action" role="button" class="menu btn btn-success btn-lg">지역 관리</a>
 	
 	
	<a href="deptlist.action" role="button" class="menu btn btn-success btn-lg">부서 정보</a>
	<a href="departmentlist.action" role="button" class="menu btn btn-success btn-lg">부서 관리</a>
 	
 	
	<a href="poslist.action" role="button" class="menu btn btn-success btn-lg">직위 정보</a>
	<a href="positionlist.action" role="button" class="menu btn btn-success btn-lg">직위 관리</a>
 	
 
 </div>

</body>
</html>