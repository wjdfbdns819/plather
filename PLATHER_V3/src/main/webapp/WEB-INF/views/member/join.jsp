<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}"/>

<style>
body {
	/* 배경 이미지 설정 */
	background-image: url('${rootPath}/static/images/back.png');
	background-repeat: no-repeat;
	background-size: cover;
}

form#member_input {
	
	border: 1px solid black;
	width: 60%;
	margin: 0 auto;
	backdrop-filter: blur(8px);
	background-color: rgba(255, 255, 255, 0.5);
	text-align: center;
}

form#member_input img {
	
	margin-top: 10px;
	margin-bottom: 10px;
	width: 10%;
	height: 10%; 
}

form#member_input div {

	text-align: left; 
	padding: 10px;

} 

div.join.error.view{
	margin:0 auto;
	margin-bottom: 5px;
	background-color: rgba(245, 63, 63, 0.8);
	color: white;
	text-align: center;
	border-radius: 5px;	
	width: 50%;
	font-weight: bold;
	
}

div.join.error.answer{
	margin:0 auto;
	margin-bottom: 5px;
	background-color: rgba(60, 179, 113, 0.8);
	color: white;
	text-align: center;
	border-radius: 5px;	
	width: 50%;
	font-weight: bold;
	
}

div.join.error.pw {
	margin:0 auto;
	margin-bottom: 5px;
	background-color: rgba(245, 63, 63, 0.8);
	color: white;
	text-align: center;
	border-radius: 5px;	
	width: 50%;
	font-weight: bold;
}

div.join.error.pw_answer {
	margin:0 auto;
	margin-bottom: 5px;
	background-color: rgba(60, 179, 113, 0.8);
	color: white;
	text-align: center;
	border-radius: 5px;	
	width: 50%;
	font-weight: bold;
}


div.join.error.re_pw {
	margin:0 auto;
	margin-bottom: 5px;
	background-color: rgba(245, 63, 63, 0.8);
	color: white;
	text-align: center;
	border-radius: 5px;	
	width: 50%;
	font-weight: bold;
}


div.join.error.re_pw_answer {
	margin:0 auto;
	margin-bottom: 5px;
	background-color: rgba(60, 179, 113, 0.8);
	color: white;
	text-align: center;
	border-radius: 5px;	
	width: 50%;
	font-weight: bold;
}




 input, label {
	display: inline-block;
	
}

label {
	margin-left: 30%;
	margin-right: 10px;
	width: 8%;
	
	font-weight: bold;
	text-align: right;
}

input {
	border-radius: 5px;
	outline:none;
	padding: 5px;
	width: 20%;
}

input.m_gender {
	width: 2%;
}

input:hover {
	background-color: rgb(211,211,211);
}

input:focus {
	width: 25%;
	transition: 0.8s;
	outline: none;
		
}

p#p_id, p#p_pw {
	margin-top: 10px;
	font-size: 12px;
}

p#p_id {
	margin-left: 38%;
}

p#p_pw {
	margin-left: 30%;
}





</style>

<link href="${rootPath}/static/css/join.css?ver=2021-07-15-030" rel="stylesheet" />

		
		<div id="main_title">PLATHER</div>
		<div id="sub_title">회원가입</div>
		
	<form id="member_input" method="POST">
		
		<img width="50px" src="${rootPath}/static/images/user_green.png"/>
		<div class="join error"></div>	
		
		<input name="m_profile" id="m_profile" value="${MB.m_profile}"  type="hidden"/>
	
		<div id="id_box">
			<label>ID</label> <input name="m_id" id="m_id" type="email" 
				placeholder="아이디를 입력하세요"/> 
				
			<p id="p_id">* 이메일 형식으로 입력해야합니다 *</p>
		</div>
		
		<div>
			<label>PW</label> <input name="m_pw" id="m_pw" type="password" 
				placeholder="비밀번호를 입력하세요" />
			 <p id="p_pw">* 비밀번호는 4 ~ 10개 이내의 숫자 or 글자로 입력해야합니다 *</p>
		</div>
		
		<div>
			<label>PW 확인</label> <input name="pw_check" id="pw_check" type="password" 
				placeholder="비밀번호를 재입력하세요" />
		</div>
		
		<div>
			<label>닉네임</label> <input name="m_nickname" id="m_nickname"
				placeholder="닉네임을 입력하세요" />
		</div>
		<div>
			<label>생년월일</label> <input name="m_birth" id="m_birth" type="date"
				placeholder="생년월일을 입력하세요" />
		</div>
		<div>
			<label>이름</label> <input name="m_name" id="m_name"
				placeholder="실명을 입력하세요" />
		</div>
		<div>
			<label>성별</label>
			남자(male)<input name="m_gender" class="m_gender" value="남" type="radio">
			여자(female)<input name="m_gender" class="m_gender" value="여" type="radio"/>
		</div>
		
		<div class="btn_box">
			<button class="btn_save">저장</button>
			<button type="reset" class="reset">초기화</button>
		</div>
</form>	

<script>
	/* 사용할 변수들 선언 */
	
	// input 값을 input_*로 되어있는 변수들에 각각 담음
	let input_id = document.querySelector("input#m_id")
	
	let input_pw = document.querySelector("input#m_pw")
	
	// 비밀번호 확인에 사용할 변수
	let re_pw = document.querySelector("input#pw_check")
	
	let input_nick = document.querySelector("input#m_nickname")
	let input_birth = document.querySelector("input#m_birth")
	let input_name = document.querySelector("input#m_name")
	
	// error 메시지를 보여줄 값을 담음
	let msg_error = document.querySelector("div.join.error")
	
	// ID를 반드시 입력하도록 설정(다른 inputbox를 클릭하여도 안넘어감)
	if(input_id) {
		
		input_id.addEventListener("blur",(e)=>{
			
			let user_id = e.currentTarget.value
			if(user_id === "") {
				
				input_id.style.backgroundColor = "rgba(245, 63, 63, 0.3)";
				msg_error.innerText = " * ID는 반드시 입력해야 합니다 * "
				msg_error.classList.add("view")
				input_id.focus()
				return false
			} 
		// 중복된 ID 검사	
		 fetch("${rootPath}/member/id_check?m_id=" + user_id)
		 	.then(response=>response.text())
		 	.then(result=>{
		 		
		 		// 만약 DB에 이미 있는 id이면
		 		if(result === "USE_ID") {
		 			
		 			
		 			msg_error.innerText = " * 중복된 ID 입니다 * "
					msg_error.classList.add("view")
					input_id.style.backgroundColor = "rgba(245, 63, 63, 0.3)";
					input_id.focus()
					return false
					
				// DB에 없는 id이면
		 		} else if(result === "NOT_USE_ID") {
		 			
		 				msg_error.innerText = " * 사용가능한 ID 입니다 * "
						msg_error.classList.add("answer")
						input_id.style.backgroundColor = "rgba(60, 179, 113, 0.3)";
						input_pw.focus()
						return false
		 		}
		 		
		 	}) // then(result) end
			
		}) // blur end
		
	} // input_id end
	
	// 비밀번호
	if(input_pw) {
		input_pw.addEventListener("blur", (e) =>{ 
			
			let user_pw = e.currentTarget.value
			
			if(user_pw === "") {
				input_pw.style.backgroundColor = "rgba(245, 63, 63, 0.3)";
				msg_error.innerText = " * 비밀번호는 반드시 입력해야합니다 * "
				msg_error.classList.add("pw")
				input_pw.focus()
				return false
				
			} else if(user_pw.length < 4 || user_pw.length > 10) {
				input_pw.style.backgroundColor = "rgba(245, 63, 63, 0.3)";
				msg_error.innerText = " * 비밀번호는 4이상 10이하만 가능 합니다 * "
				msg_error.classList.add("pw")
				input_pw.focus()
				return false
				
			} else {
				input_pw.style.backgroundColor = "rgba(60, 179, 11, 0.3)";
				msg_error.innerText = " * 사용가능한 비밀번호입니다 * "
				msg_error.classList.add("pw_answer")
				re_pw.focus()
				return false
			}
		})
	
	}
	
	if(re_pw) {
		re_pw.addEventListener("click", (e) =>{
			
			let user_pw = input_pw.value
			let user_re_pw = re_pw.value
			
			 if(user_re_pw === user_pw) {
				re_pw.style.backgroundColor = "rgba(60, 179, 113, 0.3)";
				input_pw.style.backgroundColor = "rgba(60, 179, 113, 0.3)";
				msg_error.innerText = " * 비밀번호가 일치합니다 * "
				msg_error.classList.add("re_pw_answer")
				return false
				
			} else {
				re_pw.style.backgroundColor = "rgba(245, 63, 63, 0.3)";
				msg_error.innerText = " * 비밀번호가 불일치합니다 다시 확인해주세요 * "
				msg_error.classList.add("re_pw")
				re_pw.focus()
				return false
			}
			
		})
	}
	
	
	// 닉네임을 반드시 입력하도록 설정
	if(input_nick) {
		
		input_nick.addEventListener("click", (e) =>{
			
			let user_nick = e.currentTarget.value
			
			// nickname 중복검사
			if(user_nick ==="") {
					msg_error.innerText = " * 사용자  닉네임 반드시 입력하세요 *"
					msg_error.classList.add("view")
					input_nick.focus()
					return false
			}
			
			fetch("${rootPath}/member/nick_check?m_nickname=" + user_nick)
			.then(response=>response.text())
			.then(result=>{
				
					
				if(result === "USE_NICK") {
					// 만약 DB에 있는 회원이면
					msg_error.innerText = " * 중복된 닉네임 입니다 *"
					msg_error.classList.add("view")
					input_nick.focus()
					return false
					
				} else if(result === "NOT_USE_NICK" ) {
					// 만약 DB에 없는 회원이면
					msg_error.innerText = " * 사용가능한 닉네임 입니다 *"
					msg_error.classList.add("view")
				}
				
			}) //then(result) end
		
		}) // blur end
	}	// input_nick end
</script>