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
<title>CreateAccount.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/final.css">
<style type="text/css">
	th
	{
		text-align: left;
		white-space: nowrap;
	}
</style>
</head>
<body>

<br><br><br>

<div class="header" style="display: flex; align-items: center; justify-content: space-between;">

    <div style="display: flex; align-items: center;">
        <img src="images/logo.png" style="width: 120px; vertical-align: middle;">
    </div>
    
    <div id="tab" style="display: flex; align-items: center;">
        <a>홈</a>
        <a>펫시팅</a>
        <a>커뮤니티</a>
        <a href="MyPagePetPartners.jsp">마이페이지</a>
    </div>
    
    <div style="display: flex; align-items: center;">
        <img src="images/bell.png" style="width: 20px; margin-left: 10px;">
        <img src="images/gear.png" style="width: 20px; margin-left: 10px;">
        <img src="images/user.png" style="width: 25px; margin-left: 10px;">
        &nbsp;&nbsp;&nbsp;&nbsp;
    </div>
</div>
<br>

<div class="main" style="background-color: #F2F2F2;">
	<br><br>
	<div style="background-color: white; margin: 0 auto; text-align: center; width:60% ">
		<br><br>
		<div>
		<img src="images/logoImg.png" style="width: 70px; vertical-align: middle;"><br>
		<img src="images/logoName.png" style="width: 50px; vertical-align: middle;">
		</div>
		<br><br>
		<div style="width: 90%; margin: 0 auto; display: flex; justify-content: space-between; border: 2px solid #F2F2F2;">
			<div style="width: 50%; margin: 0 auto; text-align: left; font-size: 15pt;">
			<table style="margin-top: 10px;">
				<tr>
					<th>아이디 (*)</th>
					<td>
						<input type="text">
					</td>
					<td>
					<span id="idError" style="font-family: Pretendard; font-weight: 400; color: red; display: none;">
					아이디는 필수입력항목입니다.
					</span>
					</td>
				</tr>
				<tr>
					<th>비밀 번호 (*)</th>
					<td>
						<input type="text">
					</td>
					<td>
					<span id="pwError" style="font-family: Pretendard; font-weight: 400; color: red; display: none;">
					비밀번호는 필수입력 항목입니다.
					</span>
					</td>
				</tr>
				<tr>
					<th>비밀 번호 확인(*)</th>
					<td>
						<input type="text">
					</td>
					<td>
					<span id="pwError" style="font-family: Pretendard; font-weight: 400; color: red; display: none;">
					입력한 비밀번호가 같지 않습니다.
					</span>
					</td>
				</tr>
				<tr>
					<th>이름 (*)</th>
					<td>
						<input type="text">
					</td>
					<td>
					<span id="nameError" style="font-family: Pretendard; font-weight: 400; color: red; display: none;">
					이름은 필수입력 항목입니다.
					</span>
					</td>					
				</tr>
				<tr>
					<th>주민등록번호 (*)</th>
					<td>
						<input type="text" style="width: 100px;"> - <input type="text" style="width: 10px;">******
					</td>
					<td>
					<span id="Error" style="font-family: Pretendard; font-weight: 400; color: red; display: none;">
					주민등록번호는 필수입력 항목입니다.
					</span>
					</td>					
				</tr>
				<tr>
					<th>주소지 (*)</th>
					<td>
						<input type="text" style="width: 100px;">
						<button type="button">검색</button>
						<br>					
						<input type="text" style="width: 300px;">
						<br>
						<input type="text" style="width: 300px;">
					</td>
					<td>
					<span id="addrError" style="font-family: Pretendard; font-weight: 400; color: red; display: none;">
					주소지는 필수 입력 항목입니다.
					</span>
					</td>					
				</tr>
				<tr>
					<th>이메일 (*)</th>
					<td>
						<input type="text" style="width: 100px;"> @ <input type="text" style="width: 100px;">
					</td>
					<td>
					<span id="mailError" style="font-family: Pretendard; font-weight: 400; color: red; display: none;">
					이메일은 필수입력 항목입니다.
					</span>
					</td>					
				</tr>
				<tr>
					<th>연락처</th>
					<td>
						<input type="text">
					</td>
				</tr>
			</table>
			</div>
		</div>
		<br><br>
	</div>	
	<br><br>
</div>

<div class="footer" style="background-color: #BBBBBB;">
	<br><br><br><br><br><br>
</div>

</body>
</html>