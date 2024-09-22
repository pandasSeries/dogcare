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
	#preview 
	{
	    width: 100px; /* 가로 100%로 설정 */
	    height: 100px; /* 원하는 높이 설정 */
	    position: relative;
	    overflow: hidden; /* div 안에서 이미지가 넘치지 않도록 설정 */
	    display: flex; /* flexbox 사용 */
	    justify-content: center; /* 중앙 정렬 */
	    align-items: center; /* 수직 중앙 정렬 */
	    border-radius : 50%;
	}
	#preview img 
	{
        width: 100%;
        height: 100%;
        object-fit: cover; /* 이미지가 div를 채우도록 설정 */
        border-radius: 50%; /* 이미지 자체를 원형으로 만들기 */
    }

</style>

<script type="text/javascript" src="js/util.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript"src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
	
	$(document).ready(function()
	{				
		$(".main").submit(function()
		{
			if (!isValidResidentNO($("#ssn1"), $("#ssn2")))
			{
				alert("주민번호 입력이 잘못되었습니다.");
			}
			
		});
		
		
		$(".showPw input[type='checkbox']").on('change', function()
		{
			var pw = $("#pw");
			var cpw = $("#checkPw")
			if (this.checked)
			{
				pw.prop("type", "text");
				cpw.prop("type", "text");
			}
			else
			{
				pw.prop("type", "password");
				cpw.prop("type", "password");
			}
		});
		
		
	});
	
	function searchAddr()
	{
		new daum.Postcode({
	        oncomplete: function(data) 
	        {
	        	// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
                
                document.getElementById("sample4_detailAddress").readOnly = false;
                
               	// 시도 및 시군구 값을 설정
                var sido = data.sido || '';  // 값이 없으면 빈 문자열로 설정
	            document.getElementById("sido").value = sido;
	            //alert(sido);
	            
	            var sigungu = data.sigungu || '';  // 값이 없으면 빈 문자열로 설정
	            document.getElementById("sigungu").value = sigungu;
	            //alert(sigungu);

	            
	         	// 전체 도로명 주소에서 sido와 sigungu를 제거하여 나머지 주소만 추출
	            var onlyRoad = roadAddr;

	            // 시도와 시군구를 제거
	            if (sido && onlyRoad.includes(sido)) {
	                onlyRoad = onlyRoad.replace(sido, '').trim(); // 시도를 제거
	            }
	            
	            if (sigungu && onlyRoad.includes(sigungu)) {
	                onlyRoad = onlyRoad.replace(sigungu, '').trim(); // 시군구를 제거
	            }
	            
	            // 결과를 확인하기 위해 출력
	            //alert(onlyRoad);
	            
	            document.getElementById("onlyRoadAddr").value = onlyRoad;
            
            
	        }
	    }).open();
	}
	
</script>

</head>
<body>
<c:import url="/WEB-INF/view/NonMemMenu.jsp"></c:import>

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
			<form action="">
			<table style="margin-top: 10px;">
				<tr>
					<th>아이디</th>
					<td>
						<input type="text" style="width: 100px;" id="id" name="id">
					</td>
					<td>
						<span style="font-family: Pretendard; font-weight: 400; font-size: 12pt; color: red; display: none;">아이디는 필수입력항목입니다.</span>
					</td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td>
						<input type="password" style="width: 150px;" id="pw" name="pw">
						<label class="showPw"><input type="checkbox"/>비밀번호 표시</label>
					</td>
					<td>
						<span style="font-family: Pretendard; font-weight: 400; font-size: 12pt; color: red; display: none;">비밀번호는 필수입력항목입니다.</span>
					</td>
				</tr>
				<tr>
					<th>비밀번호 확인</th>
					<td>
						<input type="password" style="width: 150px;" id="checkPw" name="checkPw">
					</td>
					<td>
						<span style="font-family: Pretendard; font-weight: 400; font-size: 12pt; color: red; display: none;">비밀번호가 동일하지 않습니다.</span>
					</td>
				</tr>
				<tr>
					<th>이름</th>
					<td>
						<input type="text" style="width: 100px;" id="name" name="name">
					</td>
					<td>
						<span style="font-family: Pretendard; font-weight: 400; font-size: 12pt; color: red; display: none;">이름은 필수입력항목입니다.</span>
					</td>
				</tr>
				<tr>
					<th>주민등록번호 (*)</th>
					<td>
						<input id="ssn1"type="text" style="width: 100px;"> - <input id="ssn2" type="text" style="width: 100px;" placeholder="0******">
					</td>
					<td>
						<span style="font-family: Pretendard; font-weight: 400; font-size: 12pt; color: red; display: none;">주민등록번호는 필수입력항목입니다.</span>
					</td>
				</tr>
				<tr>
					<th>주소지 (*)</th>
					<td>
						<input type="text" id="sample4_postcode" style="width: 50px;" readonly="readonly" placeholder="우편번호">
						<input type="button" onclick="searchAddr()" value="우편번호 찾기"><br>
						<input type="text" id="sample4_roadAddress" style="width: 300px;" readonly="readonly" placeholder="도로명주소"><br>
						<input type="text" id="sample4_jibunAddress" style="width: 300px;" readonly="readonly" placeholder="지번주소"><br>
						<span id="guide" style="color:#999;display:none"></span>
						<input type="text" id="sample4_extraAddress" style="width: 100px;" readonly="readonly" placeholder="참고항목"><br>
						<input type="text" id="sample4_detailAddress" style="width: 300px;" placeholder="상세주소" readonly="readonly"><br>
					</td>
					<td>
						<span style="font-family: Pretendard; font-weight: 400; font-size: 12pt; color: red; display: none;">주소지는 필수입력항목입니다.</span>
						<input type="hidden" id="sido"/>
						<input type="hidden" id="sigungu"/>
						<input type="hidden" id="onlyRoadAddr"/>
					</td>
				</tr>
				<tr>
					<th>이메일 (*)</th>
					<td>
					<input type="text" id="email" name="email" style="width: 200px;" placeholder="test@dangdang.com" >
					</td>
				</tr>
				<tr>
					<th>연락처</th>
					<td><input type="text" id="tel" name="tel" style="width: 150px;"></td>
				</tr>
			</table>
			<button type="submit">가입하기</button>
			</form>
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