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
<title>RegisterDog.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/final.css">
<!-- jQuery UI CSS -->
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- jQuery and jQuery UI JavaScript -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<style>
/* Optional: Some custom styling */
.ui-datepicker {
	font-size: 14px;
}
</style>
<script type="text/javascript">
	$().ready(function() {
		 // Initialize datepicker
        $("#datepicker").datepicker({
        	 dateFormat: 'yy-mm-dd', // Set date format to yyyy-mm-dd
             changeMonth: true, // Allow month selection
             changeYear: true,  // Allow year selection
             showButtonPanel: true, // Show button panel with today and done buttons
             onSelect: function(dateText) {
                 // Set the selected date to the input field
                 $("#datepicker").val(dateText);
             }
        });

        // Button click event to open datepicker
        $(".calendar-button").on("click", function() {
            $("#datepicker").datepicker("show"); // Show the datepicker
        });
		$("a").hover(function() {
			$(this).css("color", "#A3DBFF");
		}, function() {
			$(this).css("color", "black");
		});

		$("#link").hover(function() {
			$(this).css("color", "#A3DBFF");
		}, function() {
			$(this).css("color", "gray");
		});
		$('#activity').change(function() {
			// 선택된 옵션의 data-detail 값을 가져오기
			var selectedOption = $(this).find('option:selected'); // 선택된 옵션을 찾습니다.
			var detail = selectedOption.data('detail'); // data-detail 속성 값을 가져옵니다.

			// detail을 div에 출력합니다.
			$('#actidetail').text(detail);
		});
		$('#dss').change(function() {
			var selectedOption = $(this).find('option:selected'); // 선택된 옵션을 찾습니다.
			var detail = selectedOption.data('detail'); // data-detail 속성 값을 가져옵니다.

			// detail을 div에 출력합니다.
			$('#dssdetail').text(detail);
		});
		// "영양제 추가하기" 버튼 클릭 시
	    $('#toggleSupplementBtn').on('click', function() {
	    	// 현재 항목의 개수를 확인
	        var itemCount = $('#supplementContainer .supplementItem').length;
			
	        // 최대 항목 수를 초과하지 않는 경우에만 추가
	        if (itemCount < 3) {
	            // 새로운 보충제 항목을 생성
	            var newSupplement = `
	            	<div class="supplementItem">
	                <select id="supplementSelect" class="invalid" name="spl_cd">
	                    <option value="">선택해주세요</option>
	                    <c:forEach var="dto" items="${splList}">
	                        <option value="${dto.spl_cd}">${dto.spl_name}</option>
	                    </c:forEach>
	                </select>
	                
	                <button class="innerRemoveBtn">항목 삭제</button>
	                <span id="supplementMessage" class="message"></span>
	                </div>
	            `;
	            
	            // #supplementContainer에 새로운 항목 추가
	            $('#supplementContainer').append(newSupplement);
	        } else {
	            alert('최대 3개의 항목까지만 추가할 수 있습니다.');
	        }
	    });
	    $('#supplementContainer').on('change', 'select', function() {
	        var selectedValue = $(this).val();
	        var $message = $(this).siblings('.message');

	        if (selectedValue === '') {
	            // 선택되지 않았을 때
	            $(this).removeClass('valid').addClass('invalid');
	            $message.removeClass('select-message').addClass('error-message').text('영양제를 선택해주세요.').show();
	        } else {
	            // 선택되었을 때
	            $(this).removeClass('invalid').addClass('valid');
	            $message.removeClass('error-message').addClass('select-message').text('선택 완료').show();
	        }
	    });
	    

	    // "항목 삭제" 버튼 클릭 시 해당 항목 삭제
	    $('#supplementContainer').on('click', '.innerRemoveBtn', function() {
	        $(this).closest('.supplementItem').remove(); // 가장 가까운 부모 .supplementItem 요소를 삭제
	    });
	 // "질병 추가하기" 버튼 클릭 시
	    $('#toggleDiseaseBtn').on('click', function() {
	    	var itemCount = $('#diseaseContainer .diseaseItem').length;
	    	// 최대 항목 수를 초과하지 않는 경우에만 추가
	    	
	        if (itemCount < 1) {
	            // 새로운 질병 항목을 생성
	            var newDisease = `
	            	<div class="diseaseItem">
	                <select class="invalid" name="disease_cd">
	                    <option value="">선택해주세요</option>
	                    <c:forEach var="dto" items="${dssList}">
	                        <option value ="${dto.dss_cd}" data-detail="${dto.dss_symptoms}">${dto.dss_name}</option>
	                    </c:forEach>
	                </select>
	                <button class="innerRemoveDiseaseBtn">항목 삭제</button>
	                <span class="message"></span>
	            </div>
	            `;

	            // #diseaseContainer에 새로운 질병 항목 추가
	            $('#diseaseContainer').append(newDisease);
	        } else {
	            alert('최대 1개의 항목까지만 추가할 수 있습니다.');
	        }
	    });

	 // 질병 항목의 select 박스 변경 시
	    $('#diseaseContainer').on('change', 'select', function() {
	        var selectedValue = $(this).val();
	        var $message = $(this).siblings('.message');

	        if (selectedValue === '') {
	            // 선택되지 않았을 때
	            $(this).removeClass('valid').addClass('invalid');
	            $message.removeClass('select-message').addClass('error-message').text('질병을 선택해주세요.').show();
	        } else {
	            // 선택되었을 때
	            $(this).removeClass('invalid').addClass('valid');
	            $message.removeClass('error-message').addClass('select-message').text('선택 완료').show();
	        }
	    });
	    
	    
	    $('#diseaseContainer').on('click', '.innerRemoveDiseaseBtn', function() {
	        $(this).closest('.diseaseItem').remove(); // 가장 가까운 부모 .diseaseItem 요소를 삭제
	    });

	    // "사료 추가하기" 버튼 클릭 시
	    $('#toggleFeedBtn').on('click', function() {
	        // 새로운 사료 항목을 생성
	        // 현재 항목의 개수를 확인
		    var itemCount = $('#feedContainer .feedItem').length;
			
		 // 최대 항목 수를 초과하지 않는 경우에만 추가
		    if (itemCount < 3) {
		        // 새로운 사료 항목을 생성
		         
		        var newFeed = `
		        	 <div class="feedItem">
	                <select class="invalid" name="feed_cd">
	                    <option value="">선택해주세요</option>
	                    <c:forEach var="dto" items="${feedList}">
	                        <option value="${dto.feed_cd}">${dto.feed_name}</option>
	                    </c:forEach>
	                </select>
	                <button class="innerRemoveFeedBtn">항목 삭제</button>
	                <span class="message"></span>
	            </div>
		        `;

		        // #feedContainer에 새로운 사료 항목 추가
		        $('#feedContainer').append(newFeed);
		    } else {
		        alert('최대 3개의 항목까지만 추가할 수 있습니다.');
		    }
	    });
	 // 사료 항목의 select 박스 변경 시
	    $('#feedContainer').on('change', 'select', function() {
	        var selectedValue = $(this).val();
	        var $message = $(this).siblings('.message');

	        if (selectedValue === '') {
	            $(this).removeClass('valid').addClass('invalid');
	            $message.removeClass('select-message').addClass('error-message').text('사료를 선택해주세요.').show();
	        } else {
	            if (isDuplicate(selectedValue, $(this))) {
	                $(this).removeClass('valid').addClass('invalid');
	                $(this).val(''); // Reset the select box to "선택해주세요"
	                $message.removeClass('select-message').addClass('error-message').text('사료 선택이 중복됩니다.').show();
	            } else {
	                $(this).removeClass('invalid').addClass('valid');
	                $message.removeClass('error-message').addClass('select-message').text('선택 완료').show();
	            }
	        }
	    });

	    // "항목 삭제" 버튼 클릭 시 해당 항목 삭제
	    $('#feedContainer').on('click', '.innerRemoveFeedBtn', function() {
	        $(this).closest('.feedItem').remove(); // 가장 가까운 부모 .feedItem 요소를 삭제
	    });

	    // 중복 선택이 있는지 확인하는 함수
	    function isDuplicate(selectedValue, currentSelect) {
	        var isDuplicate = false;

	        $('#feedContainer .feedItem select').each(function() {
	            if ($(this).val() === selectedValue && $(this).get(0) !== currentSelect.get(0)) {
	                isDuplicate = true;
	                return false; // Exit the loop
	            }
	        });

	        return isDuplicate;
	    }
	    

	    // "사료 삭제" 버튼 클릭 시 해당 사료 항목 삭제
	    $('#feedContainer').on('click', '.innerRemoveFeedBtn', function() {
	        $(this).closest('.feedItem').remove(); // 가장 가까운 부모 .feedItem 요소를 삭제
	    });
	   
       
        $('#dogForm').on('submit', function(event) {
            event.preventDefault(); // Prevent form submission

            var isValid = true;
            
            // Define all fields to validate
            var fields = [
                { selector: '#dogName', errorSelector: '#nameError', errorMessage: '이름은 필수 입력 항목입니다.' },
                { selector: '#datepicker', errorSelector: '#dateError', errorMessage: '생년월일은 필수 입력 항목입니다.' },
                { selector: '#weight', errorSelector: '#weightError', errorMessage: '무게는 필수 입력 항목입니다.' },
                { selector: '#breedSelect', errorSelector: '#breedError', errorMessage: '견종을 선택해주세요.' },
                { selector: '#fooSelect', errorSelector: '#fooError', errorMessage: '배변습성을 선택해주세요.' },
                { selector: '#activity', errorSelector: '#actiError', errorMessage: '활동량을 선택해주세요.' },
                { selector: '#sizeSelect', errorSelector: '#sizError', errorMessage: '크기를 선택해주세요.' }
             
            ];
            
            // Function to validate fields
            function validateField(field) {
                var fieldValue = $(field.selector).val().trim();
                var $field = $(field.selector);
                var $error = $(field.errorSelector);
                
                if (fieldValue === '' || fieldValue === '선택해주세요') {
                    isValid = false;
                    $field.removeClass('valid').addClass('error-border');
                    $error.text(field.errorMessage).show();
                } else {
                    $field.removeClass('error-border').addClass('valid');
                    $error.hide();
                }
            }
            
            // Validate each field
            fields.forEach(function(field) {
                validateField(field);
            });
            
            // Check if the form is valid
            if (isValid) {
                this.submit();
            }
        });
        
        $('#breedSelect').on('change', function() {
        	  var selectedValue = $(this).val();
              var $message = $('#breedMessage');
             
              
              if (selectedValue === '') {
                  // 선택되지 않았을 때
                  $(this).removeClass('error-border').removeClass('valid').addClass('invalid');
                  $message.removeClass('select-message').addClass('error-message').text('견종을 선택해주세요.').show();
                  
              } else {
                  // 선택되었을 때
                  $message.removeClass('error-message').addClass('select-message').text('선택 완료').show();
                  $(this).removeClass('error-border').removeClass('invalid').addClass('valid');
                  $('#breedError').hide();
              }
        });
        // Check the select field on change
        $('#fooSelect').on('change', function() {
            var selectedValue = $(this).val();
            var $message = $('#fooMessage');

            if (selectedValue === '') {
                // 선택되지 않았을 때
                $(this).removeClass('valid').addClass('invalid');
                $message.removeClass('select-message').addClass('error-message').text('배변습성을 선택해주세요.').show();
            } else {
                // 선택되었을 때
                $message.removeClass('error-message').addClass('select-message').text('선택 완료').show();
                $(this).removeClass('error-border').removeClass('invalid').addClass('valid');
                $('#fooError').hide();
            }
        });
        $('#activity').on('change', function() {
            var selectedValue = $(this).val();
            var selectedOption = $(this).find('option:selected');
            var detail = selectedOption.data('detail');
            var $message = $('#activityMessage');

            if (selectedValue === '') {
                // 선택되지 않았을 때
                $(this).removeClass('valid').addClass('invalid');
                $message.removeClass('select-message').addClass('error-message').text('활동량을 선택해주세요.').show();
            } else {
                // 선택되었을 때
                $message.removeClass('error-message').addClass('select-message').text('선택 완료').show();
                $(this).removeClass('error-border').removeClass('invalid').addClass('valid');
                $('#actiError').hide();
            }
        });
        $('#sizeSelect').on('change', function() {
            var selectedValue = $(this).val();
            var $message = $('#sizMessage');

            if (selectedValue === '') {
                // 선택되지 않았을 때
                $(this).removeClass('valid').addClass('invalid');
                $message.removeClass('select-message').addClass('error-message').text('크기를 선택해주세요.').show();
            } else {
                // 선택되었을 때
                $message.removeClass('error-message').addClass('select-message').text('선택 완료').show();
                $(this).removeClass('error-border').removeClass('invalid').addClass('valid');
                $('#sizError').hide();
            }
        });
        // Name input validation
     // Name input validation
        $('#dogName').on('input', function () {
            let nameValue = $(this).val().trim();
            let $message = $('#nameMessage'); // Success message element

            if (nameValue === '') {
                // 이름이 입력되지 않았을 때
                $(this).removeClass('valid').addClass('invalid'); // Add red border
                $message.removeClass('select-message').addClass('error-message').text('이름은 필수입력항목입니다.').show(); // Show error message
            } else {
                // 이름이 입력되었을 때
                $(this).removeClass('error-border').removeClass('invalid').addClass('valid'); // Add blue border
                $message.removeClass('error-message').addClass('select-message').text('입력 완료').show(); // Show success message
                $('#nameError').hide();
            }
        });
        // Date picker validation
        $('#datepicker').on('input', function () {
            let dateValue = $(this).val().trim();
            let $message = $('#dateMessage'); // Success message element

            if (dateValue === '') {
                // 생년월일이 선택되지 않았을 때
                //$(this).removeClass('valid').addClass('invalid'); // Add red border
                //$message.removeClass('select-message').addClass('error-message').text('생년월일은 필수 입력 항목입니다.').show(); // Show error message
            } else {
                // 생년월일이 선택되었을 	때
                //$(this).removeClass('error-border').removeClass('invalid').addClass('valid'); // Add blue border
                //$message.removeClass('error-message').addClass('select-message').text('선택 완료').show(); // Show success message
                //$('#dateError').hide(); // Hide any existing error message
               
            }
        });
        $('#datepicker').datepicker({
            dateFormat: 'yy-mm-dd 00:00:00',
            onSelect: function () {
                $(this).trigger('change'); // Trigger change event to validate date selection
            }
        });
     // 무게 필드에 대한 유효성 검사
        $('#weight').on('input', function () {
            let weightValue = $(this).val().trim();
            let $message = $('#weightMessage'); // Message element for error or success

            // 숫자만 입력 가능하도록 필터링
            if (!/^\d*$/.test(weightValue)) {
                $(this).val(weightValue.replace(/[^\d]/g, '')); // 숫자가 아닌 문자는 제거
            }

            if (weightValue === '') {
                // 무게가 입력되지 않았을 때
                $(this).removeClass('valid').addClass('invalid'); // Add invalid styling
                $message.removeClass('select-message').addClass('error-message').text('무게는 필수 입력 항목입니다.').show(); // Show error message
            } else {
                // 무게가 숫자로 올바르게 입력되었을 때
                $(this).removeClass('error-border').removeClass('invalid').addClass('valid'); // Add valid styling
                $message.removeClass('error-message').addClass('select-message').text('선택 완료').show(); // Show success message
                $('#weightError').hide(); // Hide any existing error message
            }
          });
     
     // 버튼 클릭 시 파일 선택 창 열기
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
                        alert('파일이 성공적으로 업로드되었습니다');

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

/* Custom styling for input fields */
select {
	padding: 5px;
	width: 200px;
	margin-top: 5px;
}

.valid {
	border: 2px solid blue;
}

.invalid {
	border: 2px solid;
}

.form-group {
	margin-bottom: 20px;
}

.form-group label {
	display: block;
	font-weight: bold;
	margin-bottom: 5px;
}

.form-group .info {
	font-family: Pretendard;
	font-weight: 400;
	font-size: 12pt;
	color: red;
	display: none;
}

.error {
	color: red;
	font-size: 10pt;
	display: none;
}

.error-border {
	border: 2px solid red;
}

.normal-border {
	border: 1px solid #ccc;
}

.error-message {
	color: red;
	display: none; /* 기본적으로 숨김 */
	font-size: 8pt;
}
/* 성공 메시지 스타일 */
.select-message {
	color: blue;
	display: none;
	font-size: 8pt;
}

.detail {
	font-size: 8pt;
	color: gray;
}
input {
  background-color: #eee;
  border: none;
  padding: 12px 15px;
  margin: 8px 0;
  
}
</style>
</head>
<body>
	<c:import url="Menu.jsp"></c:import>
	<div class="main" style="background-color: #EBF7FF;">
		<br> <br>
		<div class="left" style="font-family: Pretendard; font-size: 14pt; width: 20%; float: left; text-align: right;">
			<br> <br> <br> <span style="font-weight: 800; line-height: 150%;">반려견 수정&nbsp;&nbsp;&nbsp;&nbsp;<br>
			</span> <a href="dogmanagement.action" style="font-weight: 500;">반려견 관리&nbsp;&nbsp;&nbsp;&nbsp;</a>
		</div>
		<div style="width: 60%; margin: 0 auto;">
			<div style="background-color: #A3DBFF; color: white; display: flex; justify-content: space-between; align-items: center;">
				<div style="width: 20%; text-align: right;">
					<br> <span style="font-size: 20pt; font-weight: 600;">&nbsp;반려견 수정하기</span> <br> <br>
				</div>
				<div style="width: 75%; text-align: left;">

					<br> <span style="line-height: 150%;"> &nbsp;<br> &nbsp;

					</span> <br> <br>
				</div>
			</div>



			<form action="dogupdate.action" id="dogForm">
				<input type="hidden" id="filePathInput" name="filePath">
				<c:set var="dogCd" value="${param.dog_cd}" />
				<input type="hidden" name="dog_cd" value="<c:out value="${dogCd}" />" />
				<div class="photo-container" style="background-color: white; text-align: left; display: flex; justify-content: space-between;">
					<div style="width: 40%; text-align: center;">
						<br> <br> <br> &nbsp;&nbsp;&nbsp;&nbsp;


						<div style="width: 150px; height =150px; padding-left: 150px">
							<img style="border: solid white 1px; width: 100%; height: 100%; object-fit: cover; border-radius: 50%" id="dogImage" src="${pageContext.request.contextPath}/images/${p}" alt="Dog Photo">
						</div>
						<br> 

						<!-- 파일 업로드 폼과 버튼 -->

						<a id="uploadButton" style="font-family: Pretendard; font-weight: 600; font-size: 14pt; vertical-align: top; cursor: pointer; color: blue;">사진 변경하기 *</a>

						<!-- 숨겨진 파일 입력 -->
						<input hidden="hidden" type="file" id="fileInput" name="fileImage">

						
					</div>
					
					<div style="font-family: Pretendard; font-weight: 600; font-size: 14pt; width: 60%;">
						<br> <a href="" id="link" style="color: gray; font-size: 12pt; font-weight: 400; float: right;">코드 입력하기&nbsp;&nbsp;&nbsp;</a>
						<div class="form-group">
							<label for="dogName">이름 *</label> <input type="text" id="dogName" name="dog_name"> <span class="error" id="nameError"></span> <span class="message" id="nameMessage"></span>
						</div>


						<div class="form-group">
							<label for="datepicker">생년월일 *</label>
							<div>
								<button class="calendar-button" type="button" style="border: none; background-color: white;">
									<img src="images/calendar.png" style="width: 20px; vertical-align: middle;">
								</button>
								<input type="text" id="datepicker" value="" name="dog_birth" readonly> <span id="dateError" class="error"></span> <span id="dateMessage" class="message"></span>
							</div>
						</div>



						<div class="form-group">
							<div>견종 *</div>
							<div>
								<select id="breedSelect" class="invalid" name="breed_cd">
									<option value="">선택해주세요</option>
									<c:forEach var="dto" items="${breedList}">
										<option value="${dto.breed_cd}">${dto.breed}</option>
									</c:forEach>
								</select> <span id="breedMessage" class="message"></span><span id="breedError" class="error"></span>
							</div>
						</div>

						<div class="form-group">
							<div>배변습성 *</div>
							<div>
								<select id="fooSelect" class="invalid" name="foo_cd">
									<option value="">선택해주세요</option>
									<c:forEach var="dto" items="${fooList}">
										<option value="${dto.foo_cd}">${dto.foo_habit}</option>
									</c:forEach>
								</select> <span id="fooMessage" class="message"></span><span id="fooError" class="error"></span>
							</div>
						</div>

						<div class="form-group">
							<div>활동량 *</div>
							<div>
								<select id="activity" class="invalid" name="acti_cd">
									<option value="">선택해주세요</option>
									<c:forEach var="dto" items="${actiList}">
										<option value="${dto.acti_cd}" data-detail="${dto.acti_detail}">${dto.acti_lv}</option>
									</c:forEach>
								</select> <span id="activityMessage" class="message"> </span><span id="actiError" class="error"></span>
							</div>
							<div id="actidetail" class="detail"></div>
							<br />
							<div class="form-group">
								<div>크기 *</div>
								<div>
									<select id="sizeSelect" class="invalid" name="siz_cd">
										<option value="">선택해주세요</option>
										<c:forEach var="dto" items="${sizList}">
											<option value="${dto.siz_cd}">${dto.siz}</option>
										</c:forEach>
									</select> <span id="sizMessage" class="message"></span><span id="sizError" class="error"></span>
								</div>
								<br />


								<div class="form-group">
									<div>반려견 비밀번호</div> 
									<div>
										<input type="text" name="dog_pass" />
									</div>
									
								</div>

								<div class="form-group">
									<div>무게 *</div>
									<input type="text" id="weight" name="dog_weight"> <span id="weightMessage" class="message"></span> <span class="error" id="weightError"></span>

								</div>

								<button id="toggleDiseaseBtn" type="button">반려견 질병 등록</button>
								<div id="diseaseContainer"></div>


								<!-- 영양제 추가하기 버튼 -->
								<button id="toggleSupplementBtn" type="button">대표 영양제 등록</button>


								<!-- 기본적으로 빈 상태의 영양제 추가 DIV -->
								<div id="supplementContainer">
									<!-- 추가된 영양제 항목이 여기에 추가됨 -->
								</div>


								<!-- 사료 추가하기 버튼 -->
								<button id="toggleFeedBtn" type="button">대표 사료 등록</button>

								<!-- 기본적으로 빈 상태의 사료 추가 DIV -->
								<div id="feedContainer"></div>

								<br />
								<button type="submit" style="width: 80px; border: none; border-radius: 20px; background-color: #F2F2F2; font-weight: 800; font-size: 10pt;">
									<br>등록하기<br> <br>
								</button>
								<br> <br>
							</div>
						</div>
			</form>
		</div>
		<br> <br>
	</div>

	<div class="footer" style="background-color: white;">
		<br> <br> <br> <br> <br> <br>
	</div>
</body>
</html>