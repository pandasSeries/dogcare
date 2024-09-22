<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%
request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<%
	String param = request.getParameter("param");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PetPartnersMain.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/final.css">
<style type="text/css">
.main {
	position: relative; /* 추가된 코드 */
	background-color: white;
}

.main::before {
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
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(
			function() {
				$(".mydoglist").click(
						function(event) {
							event.preventDefault(); // a 태그의 기본 동작을 막음

							var dog_cd = $(this).data("value"); // data-value 속성에서 dog_cd 값을 가져옴
							// 테스트
							alert("클릭한 강아지의 dog_cd: " + dog_cd);

							// 해당 dog_cd로 페이지 이동
							$(location).attr("href",
									"petpartnersmain.action?dog_cd=" + dog_cd);
						});

				$(".btnlogform")
						.click(
								function() {
									// 테스트

									const today = new Date();

									// 년, 월, 일 구하기
									const year = today.getFullYear();
									const month = String(today.getMonth() + 1)
											.padStart(2, '0'); // 0부터 시작하므로 +1 필요
									const day = String(today.getDate())
											.padStart(2, '0');

									// YYYY-MM-DD 형식으로 만들기
									const formattedDate = (year).toString()
											+ "-" + (month).toString() + "-"
											+ (day).toString();

									alert("일지 작성 버튼 클릭" + $(this).val()
											+ formattedDate);
									//alert("업데이트 버튼 클릭 : "+$(this).val());		//value() : x // val() : O

									$(location).attr(
											"href",
											"logform.action?dog_cd="
													+ $(this).val()
													+ "&selected_date="
													+ formattedDate + "&memdog_cd=${memdogCd}");

								});

			});
</script>

</head>
<body>


	<%
		Date date = new Date();
	SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
	String date_str = format.format(date);
	%>

	<input type="hidden" id="selected_date" name="selected_date" value=<%=date_str%>>







	<c:import url="Menu.jsp"></c:import>


	<div class="main" style="background-color: white; display: flex; justify-content: space-between;">
		<br>
		<br>
		<div class="left" style="font-family: Pretendard; font-size: 14pt; width: 20%; text-align: right;">
			<br>
			<br>
			<c:forEach var="mydoglist" items="${mydoglist }">
				<!-- 회원이 주인인 강아지와 주인이 아니고 공유 받은 강아지들 -->
				<a class="mydoglist" href="" style="font-weight: 800; line-height: 150%;" data-value="${mydoglist.dog_cd }">${mydoglist.dog_name }<br></a>
			</c:forEach>
		</div>
		<div class="content" style="width: 60%; text-align: center; font-size: 12pt; font-weight: 400;">
			<br>
			<br>
			<br> <span style="font-family: 'Cafe24Ssurround'; font-size: 20pt;">최근 5일간 보리의 활동량이 다소 줄었어요.</span> <br>
			<br>
			<span style="font-size: 12pt; color: gray;">▶ 통계 보기</span>
			<hr style="border: 2px solid #F2F2F2;">
			<div style="display: flex; justify-content: space-between;">
			
				
				<div style="width: 150px; height : 150px; text-align: right;">
					<br> <img src="images/${doginfo.pic_path }" style="width: border: solid white 1px; width: 100%; height: 100%; object-fit: cover; border-radius: 50%;">
				</div>
				<div style="width: 15%; text-align: left;">
					<br>
					<br>
					<br> <span style="font-size: 16pt; font-weight: 800;">${doginfo.dog_name }</span> <br>
					<span style="color: gray;">${doginfo.dog_reg}</span>
				</div>
				<div style="width: 15%; text-align: left; font-size: 14pt;">
					<br> <span style="font-weight: 700;">견종</span><br> ${doginfo.breed } <br>
					<br> <span style="font-weight: 700;">나이</span><br> ${doginfo.age } <br>
				</div>
				<div style="width: 15%; text-align: left; font-size: 14pt;">
					<br> <span style="font-weight: 700;">몸무게</span><br> ${doginfo.dog_weight } <br>
					<br> <span style="font-weight: 700;">활동량</span><br> ${doginfo.acti_lv } <br>
				</div>
				<div style="width: 15%; text-align: left; font-size: 14pt;">
					<br> <span style="font-weight: 700;">사료</span><br> ${doginfo.feed_name } <br>
					<br> <span style="font-weight: 700;">영양제</span><br> ${doginfo.spl_name } <br>

				</div>
				<div style="width: 10%; text-align: right;">
					<br>
					<br>
					<br>
					<br>
					<br>
					<br> <span style="color: gray;">▶ 자세히보기</span>
				</div>
			</div>
			<hr style="border: 2px solid #F2F2F2;">
			<div style="display: flex; justify-content: space-between; align-items: center;">
				<div style="width: 30%; font-size: 14pt;">
					<br> <span style="font-weight: 600;">그룹원</span><br>
					<br>
					<!-- <span style="font-size: 16pt;">4<span style="font-size: 10pt;">명</span></span><br> -->
					<!-- <img src="images/user.png" style="width: 8%; vertical-align: middle; margin-right: 5px;"> OOO<br>
						<img src="images/user.png" style="width: 8%; vertical-align: middle; margin-right: 5px;"> OOO<br>
						<img src="images/user.png" style="width: 8%; vertical-align: middle; margin-right: 5px;"> OOO<br>
						<img src="images/user.png" style="width: 8%; vertical-align: middle; margin-right: 5px;"> OOO<br><br> -->
					<c:forEach var="memdoglist" items="${memdoglist }">
						<a href="">${memdoglist.name}</a>
						<br>
					</c:forEach>
					<span style="color: gray; font-size: 12pt;">▶ 그룹원 관리 </span>
				</div>
				<hr style="border: 1px solid #F2F2F2;">
				<div style="width: 70%;">
					<div style="display: flex; justify-content: space-between;">
						<div style="width: 5%;"></div>
						<div style="width: 15%; font-weight: 600; font-size: 14pt;">
							<br>
							<br> 오늘의 일지 <br>
							<br>
						</div>
						<div style="width: 5%;"></div>
						<div style="width: 7%; font-weight: 800; font-size: 14pt;">
							<br> <img src="images/check.png" style="width: 30%;"><br> 사료
						</div>
						<div style="width: 7%; font-size: 14pt;">
							<br>
							<br> 영양제
						</div>
						<div style="width: 7%; font-weight: 800; font-size: 14pt;">
							<br> <img src="images/check.png" style="width: 30%;"><br> 간식
						</div>
						<div style="width: 7%; font-size: 14pt;">
							<br>
							<br> 산책
						</div>
						<div style="width: 7%; font-size: 14pt;">
							<br>
							<br> 목욕
						</div>
						<div style="width: 5%;"></div>
						<div style="width: 25%; line-height: 150%; color: gray; text-align: right;">
							<br>
							<br>
							<!-- ▶ 일지 작성하기 -->
							
							<button type="button" class="btn btn-success btnlogform" value="${doginfo.dog_cd }">▶ 일지 작성하기</button>
							
							
							<!-- <a href="logform.action"> ▶ 일지 작성하기</a> -->
						</div>
					</div>
					<hr style="border: 1px solid #F2F2F2;">
					<div style="display: flex; justify-content: space-between;">
						<div style="width: 5%;"></div>
						<div style="width: 15%; font-weight: 600; font-size: 14pt;">
							<br>
							<br> 건강수첩 <br>
							<br>
						</div>
						<div style="width: 5%;"></div>
						<div style="width: 45%; font-size: 14pt;">
							<div style="line-height: 100%;">
								<br>
								<br> <span style="font-weight: 600;">최근 방문일</span> ${cltime.cl_date }
							</div>
							<div>
								<span style="font-weight: 600;">다음 방문일</span> ${cltime.cl_next_visit } <br>
							</div>
						</div>
						<div style="width: 5%;"></div>
						<div style="width: 25%; line-height: 150%; color: gray; text-align: right;">
							<br>
							<br> ▶ 건강수첩 작성하기
						</div>
					</div>
				</div>
			</div>
			<hr style="border: 2px solid #F2F2F2;">
			<div style="display: flex; justify-content: space-between; align-items: center;">
				<div style="width: 30%; font-size: 14pt;">
					<span style="font-weight: 600;">펫시팅 이용건수</span><br>
					<br> <span style="font-size: 20pt;">4<span style="font-size: 12pt;">건</span></span><br>
					<br> <span style="color: gray; font-size: 12pt;">▶ 펫시팅내역 관리</span>
				</div>
				<hr style="border: 1px solid #F2F2F2;">
				<div style="width: 70%; display: flex; justify-content: space-between; align-items: center; text-align: left;">
					<div style="width: 10%;">

						<span style="font-weight: 600; font-size: 14pt; text-align: left;">사진첩</span> <br>
					</div>


					<div style="width: 25%;">
						<img src="images/${doginfo.pic_path }" style="width: 90%; border: 3px solid #BBBBBB; border-radius: 5px;">
					</div>
					


					<div style="width: 15%; text-align: right;">
						<span style="color: gray; font-size: 12pt;">▶ 더보기</span>
					</div>
				</div>
			</div>
			<hr style="border: 2px solid #F2F2F2;">
			<br>
			<br>
		</div>
		<div style="width: 20%;"></div>
	</div>

	<br>
	<br>
	<br>

	<div class="footer" style="background-color: #BBBBBB;">
		<br> <br> <br> <br> <br> <br>
	</div>

</body>
</html>