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
<title>PetsitterApply.jsp</title>
<style type="text/css">
	.btn	{
		font-size: 15pt; 
		font-family: Pretendard; 
		font-weight: 600; 
		text-align: center;
		width: 120px; 
		height: 30px;
		margin-left: 30px;
		margin-bottom: 10px;
	}
</style>
<script type="text/javascript">
    window.onload = function() 
   	{
        const myCheckBox = document.getElementById('myCheckBox');
        const submitBtn = document.getElementById('submitBtn');

        submitBtn.disabled = true;

        myCheckBox.addEventListener('change', function() 
        {
            submitBtn.disabled = !myCheckBox.checked;
        });
    };
</script>
</head>
<body>

<c:import url="Menu.jsp"></c:import>

<div class="main" style="background-color: #F2F2F2;">
	<br><br>
	<div class="left" style="font-family: Pretendard; font-size: 14pt; width: 20%; float: left; text-align: right;">

	</div>
	<div style="font-family: Cafe24Ssurround; font-size: 28pt; width: 60%; margin: 0 auto; text-align: center;">
		댕댕 펫시터 지원서 작성
		<div style="background-color: white; font-family: Pretendard; font-weight: 600; font-size: 12pt;">
			<hr>
			<br>
			<div style="width: 50%; margin: 0 auto; font-family: Pretendard; font-weight: 600; font-size: 18pt; text-align: left;" >
				안녕하세요!<br>
				저희 댕댕 펫시터로 지원해주셔서 감사합니다!<br><br>
				※댕댕 펫시터는 지원 불가 규칙이 있습니다.※<br>
				1. <span style="color: red">직장인일 경우</span> 펫시터로 지원이 불가능 합니다.<br>
				2. 펫시팅시 의뢰자의 집에 장착되어있는<br> <span style="color: red;">홈캠 촬영에 동의하지않을경우</span> 지원이 불가능합니다.<br>
				하나라도 해당 할 경우에는 댕댕 펫시터로 지원이 불가능합니다.<br><br><br>
				
				위의 규칙을 숙지하였고, 결격사유가 없음
				<input type="checkbox" id="myCheckBox">
				<br><br>
				<div style="justify-content: space-between;">
					<div style="width: 90%; text-align: left; border: 2px solid black; border-radius: 10px; font-weight: 500; font-size: 12pt; padding-left: 10px;">
						<br>
					<form action="petsitterapplyinsert.action" method="POST">
						<span style="font-size: 17pt;">1. 반려경험 유무</span><br>
						<input type="radio" value="y" name="exp_yn">반려경험 있음 &nbsp;&nbsp;&nbsp;
						<input type="radio" value="n" name="exp_yn">반려경험 없음<br><br>
						<span style="font-size: 17pt;">2. 본인이 반려경험을 기술해주세요.<br></span>
						&nbsp;&nbsp;(ex) 초등학생 때 부터 반려견을 키우며 ....<br>
						&nbsp;&nbsp; ex) 반려견을 기른경험은 없으나 친구의 강아지를 주1회정도같이 산책시키며...)<br><br>
						<textarea name="exp" style="margin-left: 10px; border: none; background-color: #F2F2F2;" rows="10" cols="60" placeholder="반려경험 작성" ></textarea>
						<br><br>
						<label style="font-size: 17pt;">3. 지원경로</label>
			  			<select name="apply_p_cd">
			  				<option selected="selected">---선택하세요---</option>
			  				<c:forEach var="option" items="${applyPath }">
			    			<option  value="${option.apply_p_cd}">${option.apply }</option>
			    			</c:forEach>
			 			 </select>
			 			<br><br><br>
			 			<div style="text-align: center;">
			 				<button type="submit" class="btn" id="submitBtn">지원서 제출</button>
							<button type="reset" class="btn">취소</button>
			 			</div>
		 			</form>
					</div>
					<div style="width: 20%; text-align: center; font-weight: 500; font-size: 12pt; line-height: 80%;">
						
					</div>
				</div>
			</div>			
			<br><br><br>
		</div>
	</div>
	<br><br>
</div>



</body>
</html>