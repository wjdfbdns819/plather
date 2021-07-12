<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	 <style>
 * {
 	/* 초기화 */
 	box-sizing: border-box;
 	margin: 0;
 	padding: 0;
 }
 
 @font-face {
	/*기본 폰트 설정*/
	font-family: GmarketSansLight;
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansLight.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}


form#member_input {
	
	width: 60%;
	margin: 0 auto;
	margin-top: 20px;
	text-align: center;
	
}

fieldset {
	border-radius: 5px; 
}

img {
	margin-top: 10px;
	width: 10%;
	height: 10%;
}


fieldset div input{
	
	margin-left: 5px;
}

fieldset div {
	
	text-align: left;
}


div#main_title {
	font-weight: bold;
	font-size: 40px;
}

legend {
	background-color:  #91c788;
	font-size: 20px;
	color: white;
	padding: 10px 80px;
	border-radius: 3px; 
}

label, input {
	display: inline-block;
	margin:5px;
	padding:8px;
}

label {
	font-weight: bold;
	width:10%;
	text-align: left;
	margin-left : 30%;
}

input {
	width:25%;
	font-size: 10px;
}


/*input.male {
	width: 3%;
}

input.female {
	width: 3%;
} */

input.m_gender {

	width: 2%;
}

div.btn_box {

	border: 1px solid black;
	text-align: right;
	padding: 10px 10px;
}

</style>
<title>Member Join</title>
</head>

<body>
	<form id="member_input" method="POST">
	
		<div id="main_title">PLATHER</div>
	<fieldset>
			<legend>회원가입</legend>
			
		<img width="50px" src="${rootPath}/static/images/user_green.png"/>

		<input name="m_profile" id="m_profile" value="${MB.m_profile}" type="hidden"/>
	
		<div>
			<label>ID</label> <input name="m_id" id="m_id"
				placeholder="아이디(이메일형식)을 입력하세요"/>
		</div>
		<div>
			<label>PW</label> <input name="m_pw" id="m_pw"
				placeholder="비밀번호를 입력하세요" />
		</div>
		
		<div>
			<label>PW 확인</label> <input name="pw_one" id="pw_one" type="password"
				placeholder="비밀번호를 확인하세요" />
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
			남자(male)<input name="m_gender" id="m_gender" value="남" type="radio" />
			여자(female)<input name="m_gender" id="m_gender" value="여" type="radio"/>
		</div>
		
		<div class="btn_box">
			<button type="button" class="save">저장</button>
			<button type="reset" class="reset">초기화</button>
		</div>
		
	</fieldset>
</form>
	
</body>
<script>

let input_gender = document.querySelector("input#m_gender")

const member_submit = () => {
		
		let doc = document
		
		
		let m_id = doc.querySelector("input#m_id")
		let m_pw = doc.querySelector("input#m_pw")
		let m_nickname = doc.querySelector("input#m_nickname")
		let m_birth = doc.querySelector("input#m_birth")
		let m_name = doc.querySelector("input#m_name")
		let m_gender = doc.querySelector("input#m_gender")
		
		doc.querySelector("form#member_input").submit()
		
	}
	
	document.querySelector("form#member_input").addEventListener("click",(e) =>{
		let target = e.target
		if(target.tagName === "BUTTON") {
		
			if(target.className.includes("save")) {
			
				member_submit();				
			} 
		}
	})
</script>
</html>