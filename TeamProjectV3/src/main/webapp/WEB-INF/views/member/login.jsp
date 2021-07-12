<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />


<style>
body {
	/* 배경 이미지 설정 */
	background-image: url('${rootPath}/static/images/back.png');
	background-repeat: no-repeat;
	background-size: cover;
}

div#font_box, form#login_form {
	backdrop-filter: blur(8px);
	z-index: 500;
	width: 25vw;
	height: 65vh;
	border-radius: 5px;
}

div#font_box {
	background-color: rgba(255, 255, 255, 0.5);
	position: absolute;
	top: 13%;
	left: 35%;
	animation-name: aniTopDownDiv;
	animation-duration: 0.8s;
}

div#font_box span {
	font-weight: bold;
	font-size: 35px;
	padding: 0px 15px;
}

div#font_box p {
	font-size: 30px;
	writing-mode: vertical-lr;
	transform: rotate(180deg);
	padding: 60px 6px;
}

form#login_form {
	background: linear-gradient(135deg, rgba(145, 199, 136, 0.7) 50%, rgba(255, 255, 255, 0));
	position: absolute;
	top: 18%;
	left: 38%;
	animation-name: aniTopDownForm;
	animation-duration: 0.8s;
}

form#login_form h1 {
	font-size: 40px;
	color: white;
	text-align: center;
}


@keyframes aniTopDownForm {
	from { 
	top:-300px;
	opacity: 0;
	}

	to {
	top: 18%;
	opacity: 1;
	}

}
@keyframes aniTopDownDiv {
	from {
 	top:-300px;
	opacity: 0;
	}
	
	to {
	top: 13%;
	opacity: 1;
	}
}

div#name_box, div#password_box {
	/*border: 1px solid black;*/
	display: flex;
	align-items: center;
	justify-content: center;
	margin: 25px 0px;
	margin-left: -20px;
}

div#name_box {
	margin-top: 30px;
}

div img {
	margin-left: 20px;
	width: 3vw;
	background-color: white;
	border-bottom-left-radius: 5px;
	border-top-left-radius: 5px;
}

input {
	width: 35%;
	height: 58px;
	padding: 0px 10px;
	border-bottom-right-radius: 5px;
	border-top-right-radius: 5px;
	border: none;
	border-left: 3px solid #91c788;
}

input:focus {
	width: 50%;
	transition: 0.8s;
	outline: none;
}

div#btn_box {
	border: 1px solid black;
	display: inline-block;
	text-align: center;
	margin-top: 10px;
	margin-left: 160px;
}

div#btn_box p {
	margin-top: 10px;
}

button {
	background: white;
	width: 130px;
	height: 40px;
	padding: 0;
	border: none;
}

div.login.error.view {
	background-color: black;
	color: white;
}

div.login.error.not {
	background-color: gray;
	color: white;
}

</style>

<body>
	<div id="font_box">
		<span>sing up</span>
		<p>welcome!</p>
	</div>
	
	<div class="login error"></div>

	<form id="login_form" method="POST">
		<h1>PLATHER</h1>

		<div id="name_box">
			<img src="${rootPath}/static/images/name.png" width="100px"> <input
				name="m_id" id="m_userid" placeholder="ID를 입력하세요" value="${USERID}"/>
				
		</div>

		<div id="password_box">
			<img src="${rootPath}/static/images/pw.png" width="100px"> <input
				type="password" name="m_pw" id="m_userpw" placeholder="비밀번호를 입력하세요" />
		</div>

		<div id="btn_box">
			<button type="button" class="btn_login">로그인</button>

			<p>계정이 없으신가요?</p>
			<button type="button" class="btn_join">회원가입</button>

		</div>
	</form>

</body>

<script>

	/* [사용할 변수들 선언] */
	let form = document.querySelector("form#login_form")
	let btn_login = document.querySelector("button.btn_login")
	let btn_join= document.querySelector("button.btn_join")
	
	// 로그인시 각종 오류 사항을 보여줄 빈 box를 msg_error에 담음
	let msg_error = document.querySelector("div.login.error")
	
	// input 값을 input_id, input_pw에 담음
	let input_id = document.querySelector("input#m_userid")
	let input_pw = document.querySelector("input#m_userpw")
	
	// impl에서 만든 변수를 불러옴
	let login_fail = "${LOGIN_FAIL}"
	
	/* 로그인 값을 입력하지 않으면 */
	if(btn_login) {
		// 로그인 버튼을 클릭하면
		btn_login.addEventListener("click", ()=>{
			
			// input의 각 값을 user_id, user_pw에 담음
			let user_id = input_id.value
			let user_pw = input_pw.value
			
			// user_id에 담긴 값이 null 이면
			if(user_id === "") {
				
				msg_error.innerText = " * ID는 반드시 입력해야 합니다 * "
				msg_error.classList.add("view")
				input_id.focus()
				return false
			} 
			
			// user_pw에 담긴 값이 null 이면
			if(user_pw === "") {
				
				msg_error.innerText = " * PW는 반드시 입력해야 합니다 * "
				msg_error.classList.add("view")
				input_pw.focus()
				return false
				
			}
			
			// id,pw 값이 null이 아니면 서버로 전송
			form.submit();
			
		}) // click end
		
	}// if(btn_login) end
	
	/* 회원 id or pw가 틀렸을 경우 */
	
	 // 존재하지 않는 ID일 경우
	if(login_fail === "NOT_ID" ) {
		
		msg_error.innerText = " * 존재하지 않는 ID 입니다 * "
		msg_error.classList.add("not")
		input_id.focus()
		
		
	} else if (login_fail == "NOT_PW") {
		
		msg_error.innerText = " * 존재하지 않는 PW 입니다 * "
		msg_error.classList.add("not")
		input_pw.focus()
		
	}
	
	
	
	/* 회원가입 버튼 */
	if(btn_join) {
		// 회원가입 버튼 클릭시	
		btn_join.addEventListener("click", ()=>{
			
			location.href="${rootPath}/member/join";
		})
	}
		
</script>