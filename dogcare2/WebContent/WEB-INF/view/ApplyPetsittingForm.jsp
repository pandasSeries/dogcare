<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<%
   String memCd = request.getParameter("memCd");
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ApplyPetSitting.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/final.css">
<!-- <script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script> -->
<!-- jQuery UI CSS -->
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- jQuery and jQuery UI JavaScript -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript"src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script type="text/javascript">
   
   $(document).ready(function() {

      // datepicker 초기화
      $("#workDate").datepicker({
         dateFormat : 'yy-mm-dd', // 날짜 형식을 yyyy-mm-dd로 설정
         changeMonth : true, // 월 선택 가능
         changeYear : true, // 연도 선택 가능
         showButtonPanel : true, // 오늘과 완료 버튼 패널 표시
         onSelect : function(dateText) {
            // 선택한 날짜를 입력 필드에 설정
            $("#workDate").val(dateText);
         }
      });

      // 버튼 클릭 시 datepicker 열기
      $(".calendar-button").on("click", function() {
         $("#workDate").datepicker("show"); // datepicker 표시
      });
   });
   
</script>


<script type="text/javascript">

    dogList = [];
    dogNameList = [];
    reqList = [];
    reqNameList = [];

    function selectDog() 
    {
        var selectedDog = document.getElementById("dogList").value;
        var selectedDogName = $("#dogList option:checked").text();

        if (selectedDog == 'defaultOption') 
        {
            return;
        }

        for (var i = 0; i < 3; i++) 
        {
            if (dogList.length == 3) 
            {
                alert("맡길 반려견은 최대 3마리 등록 가능합니다.");
                return;
            } 
            else if (dogList[i] == selectedDog) 
            {
                alert("이미 선택된 반려견입니다.");
                return;
            }
        }

        dogList[dogList.length] = selectedDog;
        dogNameList[dogNameList.length] = selectedDogName;

        document.getElementById("selectedDogList").innerHTML
            += "<div style='width: 100px; border-radius: 50px; background-color: #F2F2F2; line-height: 50%; display: inline-block; text-align: center; vertical-align: middle; padding: 10px 0;'>"
            + "&nbsp;" + selectedDogName + "&nbsp;&nbsp;<button type='button' onclick='deleteDog(\"" + selectedDog + "\")' style='border: none;'>x</button></div>&nbsp;"
            + "<input type='hidden' id='dog' name='dog' value='" + selectedDog + "'>";
    }

    function deleteDog(selectedDog) 
    {
        for (var i = 0; i < dogList.length; i++) 
        {
            if (dogList[i] == selectedDog) 
            {
                dogList.splice(i, 1);
                dogNameList.splice(i, 1);
                break;
            }
        }

        document.getElementById("selectedDogList").innerHTML = "";

        for (var i = 0; i < dogList.length; i++) 
        {
            document.getElementById("selectedDogList").innerHTML
                += "<div style='width: 100px; border-radius: 50px; background-color: #F2F2F2; line-height: 50%; display: inline-block; text-align: center; vertical-align: middle; padding: 10px 0;'>"
                + "&nbsp;" + dogNameList[i] + "&nbsp;&nbsp;<button type='button' onclick='deleteDog(\"" + dogList[i] + "\")' style='border: none;'>x</button></div>&nbsp;"
                + "<input type='hidden' id='dog' name='dog' value='" + dogList[i] + "'>";
        }
    }
    
    function selectStartTime()
   {
       var selectedStartTime = document.getElementById("startTime").value;
       
       if (selectedStartTime == 'defaultOption') 
        {
            return;
        }
       
       document.getElementById("selectedWorkDate").innerHTML
       = document.getElementById("workDate").value + " " + document.getElementById("startTime").value;
   }
    
    function selectTime()
   {
       var selectedTime = document.getElementById("time").value;
       
       if (selectedTime == 'defaultOption') 
        {
            return;
        }
       
       document.getElementById("selectedTime").innerHTML
       = document.getElementById("time").value + "시간";
   }
    
    function selectReq() 
    {
        var selectedReq = document.getElementById("reqList").value;
        var selectedReqName = $("#reqList option:checked").text();
        var maxReq = document.getElementById("time").value*3;

        if (selectedReq == 'defaultOption') 
        {
            return;
        }

        for (var i = 0; i < maxReq; i++) 
        {
            if (reqList.length == maxReq) 
            {
                alert("요청사항은 최대 " + maxReq + "개 등록 가능합니다.");
                return;
            } 
            else if (reqList[i] == selectedReq) 
            {
                alert("이미 선택된 요청사항입니다.");
                return;
            }
        }

        reqList[reqList.length] = selectedReq;
        reqNameList[reqNameList.length] = selectedReqName;

        document.getElementById("selectedReqList").innerHTML
        += "<div style='border-radius: 50px; background-color: #F2F2F2; line-height: 50%; display: inline-block; text-align: center; vertical-align: middle; padding: 10px 0;'>"
            + "&nbsp;&nbsp;" + selectedReqName + "&nbsp;&nbsp;<button type='button' onclick='deleteReq(\"" + selectedReq + "\")' style='border: none;'>x</button></div>&nbsp;&nbsp;"
            + "<input type='hidden' id='req' name='req' value='" + selectedReq + "'>";
    }

    function deleteReq(selectedReq) 
    {
        for (var i = 0; i < reqList.length; i++) 
        {
            if (reqList[i] == selectedReq) 
            {
                reqList.splice(i, 1);
                reqNameList.splice(i, 1);
                break;
            }
        }

        document.getElementById("selectedReqList").innerHTML = "";

        for (var i = 0; i < reqList.length; i++) 
        {
            document.getElementById("selectedReqList").innerHTML
                += "<div style='border-radius: 50px; background-color: #F2F2F2; line-height: 50%; display: inline-block; text-align: center; vertical-align: middle; padding: 10px 0;'>"
                + "&nbsp;&nbsp;" + reqNameList[i] + "&nbsp;&nbsp;<button type='button' onclick='deleteReq(\"" + reqList[i] + "\")' style='border: none;'>x</button></div>&nbsp;&nbsp;"
                + "<input type='hidden' id='req' name='req' value='" + reqList[i] + "'>";
        }
    }
    
    function validateForm()
   {     
       var zonecode = document.getElementById("zonecode").value;
         var addr1 = document.getElementById("roadAddr").value;
         var addr2 = document.getElementById("addr2").value;
         var workDate = document.getElementById("workDate").value;
         var startTime = document.getElementById("startTime").value;
         var time = document.getElementById("time").value;
         
      if (dogList.length==0 || zonecode=="" || addr1=="" || addr2=="" || workDate=="" || startTime=="" || startTime=="defaultOption" || time=="" || time=="defaultOption")
      {
         alert("필수 입력항목을 모두 입력해주세요!");
         return false;
      }
      
      return true;
   }
    
    function submitForm() 
    {
        if (validateForm()) 
        {
            document.getElementById("applyForm").submit();
        }
    }
    
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
                document.getElementById("zonecode").value = data.zonecode;
                document.getElementById("roadAddr").value = roadAddr;
                
                document.getElementById("addr2").readOnly = false;
                
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
               document.getElementById("selectedRegion").innerHTML = roadAddr;
               document.getElementById("addr2").value = "";
               document.getElementById("addr2").focus();
            
            
           }
       }).open();
   }

</script>
</head>
<body>

<c:import url="Menu.jsp"></c:import>

 <div class="main" style="background-color: white; display: flex; justify-content: space-between;">
   <br><br>
   <div class="left" style="font-family: Pretendard; font-size: 14pt; width: 20%; text-align: right;">
      <br><br>
      <a href="petsittinglist.action" style="font-weight: 500;">공고보기<br></a>
      <a href="applypetsittingform.action" style="font-weight: 800; line-height: 150%;">신청하기</a>
   </div>
   <div class="right" style="width: 60%; display: flex; justify-content: space-around;">
      <div style="width: 20%;"></div>
      <div style="width: 60%; line-height: 70%; box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.2); margin-top: 25px; margin-bottom: 25px;">
         <div style="background-color: #F2F2F2; display: flex; justify-content: space-around; font-size: 14pt;">
            <div style="width: 3%;"></div>
            <div style="width: 97%;">
               <br><br><br>
               <span style="font-weight: 700; font-size: 26pt;">&nbsp;펫시팅 신청하기</span><br><br><br><br>
               <!-- 
               &nbsp;● 신청 시 예약금 20,000원이 부과됩니다.<br><br>
               &nbsp;● 맡길 반려견이 2마리 이상일 시, 반려견 크기에 따른 추가금이 부과됩니다.  
               -->
               &nbsp;
               <img src="images/check.png" style="width: 2%;">
               신청 시 예약금 20,000원이 부과됩니다.<br><br>
               &nbsp;
               <img src="images/check.png" style="width: 2%;">
               한 의뢰 건에 대해 반려견은 최대 3마리까지 등록 가능합니다.<br><br>
               &nbsp;
               <img src="images/check.png" style="width: 2%;">
               맡길 반려견이 2마리 이상일 시, 추가되는 반려견 수에 따른 추가금이 부과됩니다. 
               <br><br><br><br>
            </div>
         </div>
         <form id="applyForm" action="applypetsitting.action" method="post" onsubmit="return validateForm()">
            <input type="hidden" id="memCd" name="memCd" value="<%=memCd%>">
            <div style="display: flex; justify-content: space-around;">
               <div style="width: 5%;"></div>
               <div style="width: 95%;">
                  <br><br>
                  <span style="font-weight: 600; font-size: 14pt; vertical-align: middle;">맡길 반려견&nbsp;</span>
                  <div id="selectedDogList" style="display: inline-block;"></div>
                  <br><br>
                  <select id="dogList" onchange="selectDog()">
                     <option value="defaultOption">선택하기</option>
                     <c:forEach var="myDog" items="${myDogList }">
                        <option value="${myDog.memdog_cd }">${myDog.dog_name }</option>
                     </c:forEach>
                  </select>
                  <br><br><br>
                  <span style="font-weight: 600; font-size: 14pt;">맡길 장소&nbsp;</span>
                  <div id="selectedRegion" style="display: inline-block;">${memInfo.class3 }</div>
                  <br><br>
                  <input id="zonecode" name="zonecode" type="text" readonly="readonly" value="${memInfo.zonecode }" style="width: 70px;">
                  <button type="button" onclick="searchAddr()">검색</button><br>
                  <input type="text" id="roadAddr" name="addr1"  value="${memInfo.class1 } ${memInfo.class2 } ${memInfo.class3 }" style="width: 250px;" readonly="readonly"><br>
                  <input type="text" id="addr2" name="addr_detail" value="${memInfo.addr_detail }" style="width: 250px;" readonly="readonly">
                  <input type="hidden" id="sido" name="class1" value="${memInfo.class1 }"/>
                  <input type="hidden" id="sigungu" name="class2" value="${memInfo.class2 }"/>
                  <input type="hidden" id="onlyRoadAddr" name="class3" value="${memInfo.class3 }"/>
                  <br><br><br>
                  <span style="font-weight: 600; font-size: 14pt;">예약 일시&nbsp;</span>
                  <div id="selectedWorkDate" style="display: inline-block;"></div>
                  <br><br>
                  <input id="workDate" name="workDate" type="text" placeholder="YYYY-MM-DD" style="width: 100px;">
                  <button type="button" class="calendar-button" style="border: none; background-color: white;"><img src="images/calendar.png" style="width: 20px; vertical-align: middle;"></button><br>
                  <select id="startTime" name="startTime" style="width: 100px;" onchange="selectStartTime()">
                     <option value="defaultOption">시간 선택</option>
                     <%
                     for (int i=1; i<=24; i++) 
                     {
                        if (i<10)
                        {
                     %>
                        <option value="0<%=i%>:00:00">0<%=i%>:00</option>
                     <%
                        }
                        else
                        {
                     %>
                        <option value="<%=i%>:00:00"><%=i%>:00</option>
                     <%
                        }
                     }
                     %>                  
                  </select>
                  <br><br><br>
                  <span style="font-weight: 600; font-size: 14pt;">맡길 시간&nbsp;</span>
                  <div id="selectedTime" style="display: inline-block;"></div>
                  <br><br>
                  <select id="time" name="time" style="width: 100px;" onchange="selectTime()">
                     <option value="defaultOption">시간 선택</option>
                     <%
                     for (int i=2; i<=8; i++)
                     {
                     %>
                        <option value="<%=i %>"><%=i %>시간</option>
                     <%
                     }
                     %>
                  </select>
                  <br><br><br>
                  <span style="font-weight: 600; font-size: 14pt;">요청사항&nbsp;</span>
                  <select id="reqList" onchange="selectReq()">
                     <option value="defaultOption">선택하기</option>
                  <c:forEach var="req" items="${reqList }">
                     <option value="${req.req_ty_cd }">${req.req_ty }</option>
                  </c:forEach>
                  </select>
                  <br><br>
                  <div id="selectedReqList" style="display: inline-block;"></div>
                  <br><br><br>
                  <span style="font-weight: 600; font-size: 14pt;">참고사항&nbsp;</span>
                  <br><br>
                  <textarea id="cf" name="cf" rows="10" cols="50" style="border: none; background-color: #F2F2F2;"></textarea>
                  <br><br><br>
                  <button type="button" onclick="submitForm()" style="border: none; background-color: #F2F2F2; border-radius: 50px; width: 100px; font-weight: 600;"><br>신청하기<br><br></button>
                  <br><br><br>
               </div>
            </div>
         </form>
      </div>
      <div style="width: 20%;"></div>
   </div>
   <div style="width: 20%;"></div>
</div>
 
 
<div class="footer" style="background-color: #BBBBBB;">
   <br><br><br><br><br><br>
</div>

</body>
</html>