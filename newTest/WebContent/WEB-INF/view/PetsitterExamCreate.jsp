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
<title>PetsitterExam.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/final.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>

<style>
    .option {
        display: block;
        cursor: pointer;
        padding: 10px;
        border: 1px solid #ddd;
        border-radius: 5px;
        margin-bottom: 5px;
        width: 60%;
        text-align: center;
    }
    
    .option.selected {
        background-color: #f0f0f0;
        color: #007bff;
        border-color: #007bff;
    }
    
    .option input[type="radio"] {
        display: none; 
    }
    
    p {
        font-size: 20pt;
    }
    
    div {
        font-family: Cafe24Ssurround; 
        font-size: 15pt;
    }
    button {
        font-size: 18pt; /* 글자 크기 */
        padding: 15px 30px; /* 버튼 안의 여백 */
        background-color: #007bff; /* 배경색 */
        color: white; /* 글자 색 */
        border: none; /* 테두리 제거 */
        border-radius: 12px; /* 둥근 모서리 */
        cursor: pointer; /* 마우스 커서 변경 */
        transition: background-color 0.3s ease; /* 배경색 변경 애니메이션 */
        margin-top: 20px;
        opacity: 0.5; /* 비활성화된 버튼에 대한 시각적 효과 */
        pointer-events: none; /* 클릭 불가 */
        width: 50%;
        margin-left: 50px;
    }

    /* 버튼 활성화 */
    button.active {
        opacity: 1;
        pointer-events: all;
    }

    /* 버튼 hover 효과 */
    button:hover {
        background-color: #0056b3; /* hover 시 색상 변경 */
    }
    div.exam-container
    {
    	padding-left: 50px;
</style>

<script type="text/javascript">
    $(document).ready(function() {
        // 질문의 옵션을 무작위로 섞는 함수
        const questions = document.querySelectorAll('.question');
        const submitButton = document.querySelector('#submitBtn');
        
        // 각 질문마다 옵션을 무작위로 섞음
        questions.forEach(question => {
            const options = Array.from(question.querySelectorAll('.option'));
            const shuffledOptions = options.sort(() => Math.random() - 0.5);
            
            // 질문을 포함하는 HTML을 다시 작성
            question.innerHTML = `<div>${question.dataset.question}</div>`;
            
            // 섞인 옵션을 다시 추가
            shuffledOptions.forEach(option => question.appendChild(option));
        });

        // 질문이 선택되었는지 확인하는 함수
        function checkAllAnswered() {
            let allAnswered = true;

            questions.forEach(question => {
                const radioButtons = question.querySelectorAll('input[type="radio"]');
                let isSelected = false;

                radioButtons.forEach(radio => {
                    if (radio.checked) {
                        isSelected = true;
                    }
                });

                if (!isSelected) {
                    allAnswered = false;
                }
            });

            if (allAnswered) {
                submitButton.classList.add('active'); // 버튼 활성화
            } else {
                submitButton.classList.remove('active'); // 버튼 비활성화
            }
        }

        // 각 옵션 클릭 시 선택 여부 및 스타일 업데이트
        questions.forEach(question => {
            const options = Array.from(question.querySelectorAll('.option'));

            options.forEach(option => {
                option.addEventListener('click', function() {
                    // 라디오 버튼 선택
                    question.querySelectorAll('input[type="radio"]').forEach(radio => {
                        radio.checked = false;
                    });
                    
                    const radio = option.querySelector('input[type="radio"]');
                    if (radio) {
                        radio.checked = true;
                    }

                    // 선택된 옵션 스타일 적용
                    options.forEach(opt => opt.classList.remove('selected'));
                    option.classList.add('selected');

                    // 질문이 모두 선택되었는지 확인
                    checkAllAnswered();
                });
            });
        });
    });
</script>


</head>
<body>
<c:import url="Menu.jsp"></c:import>

<div style="margin-top: 50px; font-size: 40pt; text-align: center; margin-bottom: 50px;"> 
    펫시터 자격 시험<hr>
</div>

<div id="exam-container" style="text-align: left; margin-left: 30%; width: 50%">
    <div id="exam">
        <form action="petsitterOMR.action" method="post">  
        <input type="hidden" name="ttp_cd" value="${ttp_cd}">
            <c:forEach var="q" items="${qList }" varStatus="status">
                <p style="margin-top: 100px;">${status.index + 1}. ${q.q}<br></p>
                <div class="question" data-question="${q.q}">
                    <div class="option" data-type="a">
                        <input type="radio" name="mk${status.index+1}" value="${q.a }" >
                        ${q.a}
                    </div>
                    <div class="option" data-type="wrong_1">
                        <input type="radio" name="mk${status.index+1}" value="${q.wrong_1 }">
                        ${q.wrong_1}
                    </div>
                    <div class="option" data-type="wrong_2">
                        <input type="radio" name="mk${status.index+1}" value="${q.wrong_2 }">
                        ${q.wrong_2}
                    </div>
                    <div class="option" data-type="wrong_3">
                        <input type="radio" name="mk${status.index+1}" value="${q.wrong_3 }">
                        ${q.wrong_3}
                    </div>
                   
                </div>
            </c:forEach>
            <button id="submitBtn" type="submit">제출하기</button>

        </form>
    </div>
</div>

</body>
</html>
