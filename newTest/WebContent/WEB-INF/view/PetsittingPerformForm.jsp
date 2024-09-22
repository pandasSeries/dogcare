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
<title>PetsittingPerformForm.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/final.css">
<!-- jQuery UI CSS -->
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- jQuery and jQuery UI JavaScript -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script>
//버튼 클릭 시 파일 선택 창 열기

$().ready(function() {
	$('#uploadButton').on('click', function () {
	    $('#fileInput').click();
	});


	$('#fileInput').on('change', function () {
	    if (this.files.length > 0) {
	        var file = this.files[0];
	
	        // 미리보기 설정
	        var reader = new FileReader();
	        reader.onload = function(e) {
	            // 파일이 선택되면 이미지 미리보기 업데이트
	            $('#dogImage').attr('src', e.target.result);
	        };
	        reader.readAsDataURL(file);
	
	        // FormData 객체 생성
	        var formData = new FormData();
	        formData.append('fileImage', file);
	
	        // Ajax로 파일 업로드 요청
	        $.ajax({
	            url: 'upload.action',
	            type: 'POST',
	            data: formData,
	            processData: false, // 파일 데이터를 그대로 전송하기 위해 false로 설정
	            contentType: false, // 파일 데이터의 Content-Type 설정을 건너뛰기 위해 false로 설정
	            success: function (response) {
	                console.log('업로드된 파일 경로:', response);
	                
	
	                // 파일 경로를 hidden input에 설정 (폼 제출 시 경로를 함께 전송하기 위함)
	                $('#filePathInput').val(response);
	            },
	            error: function (xhr, status, error) {
	                console.error('업로드 중 오류 발생:', error);
	                alert('파일 업로드에 실패했습니다.');
	            }
	        });
	    }
	});
});
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
	
	<div class="right" style="width: 60%;">
		<div style="font-size: 20pt; font-weight: 600;">
		<br><br>
		수행기록 남기기
		<br><br>
		</div>
		<form action="petsittingapplyinsert.action" id="petForm">
		<div style="width: 90%; display: flex; justify-content: flex-start;">
			<!-- <div style="width: 10%;"></div> -->
			<div style="width: 30%; display: flex; justify-content: center; flex-direction: column; align-items: center; box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.2); margin-top: 25px; margin-bottom: 25px; margin-right: 25px; text-align: center;">
				<div style="width: 75%; border: 2px solid #F2F2F2; margin-top: 25px; margin-bottom: 25px;">
					<br><br><br>
						<img style="border: solid white 1px; width: 60%; height: 60%;" id="dogImage" src="images/시바.jpg" alt="Dog Photo">				
						<!-- 파일 업로드 폼과 버튼 -->

						

						<!-- 숨겨진 파일 입력 -->
						<input hidden="hidden" type="file" id="fileInput" name="fileImage">
						<input type="hidden" id="filePathInput" name="filePath">
					
					<br><br>
					
  						<a id="uploadButton" style="color:gray; font-family: Pretendard; font-weight: 600; font-size: 14pt; vertical-align: top; cursor: pointer;">사진 첨부하기</a>
  						
					<input type="file" id="performPic" style="display: none;"/> 
					<br><br><br>
				</div>
				<div>
				<textarea name="applytext" rows="5" cols="33" style="border: none; background-color: #F2F2F2;"></textarea>
				<br><br>
				<button id="formsubmit" type="submit" style="border: none; background-color: #F2F2F2; border-radius: 15px; width: 80px; font-weight: 600;"><br>등록하기<br><br></button>
			
				<br><br>
				</div>
				
				
			</div>
			<div style="width: 10%;">
				<br><br>
				<button type="button" style="border: none; background-color: #F2F2F2; border-radius: 8px; width: 100px; font-weight: 600; margin-bottom: 5px;"><br>일지보기<br><br></button> 
				<button type="button" style="border: none; background-color: #F2F2F2; border-radius: 8px; width: 100px; font-weight: 600; margin-bottom: 5px;"><br>건강수첩보기<br><br></button>
				<button type="button" style="border: none; background-color: #F2F2F2; border-radius: 8px; width: 100px; font-weight: 600; margin-bottom: 5px;"><br>의뢰서보기<br><br></button> 
			</div>
		</div>
		</form>
	</div>
	<div style="width: 10%;"></div>
</div>
 
<div class="footer" style="background-color: #BBBBBB;">
	<br><br><br><br><br><br>
</div>

</body>
</html>