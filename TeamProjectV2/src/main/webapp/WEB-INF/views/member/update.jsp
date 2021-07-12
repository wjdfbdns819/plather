<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>회원정보 수정</h1>

<form id="member_update" method="POST">
	<fieldset>
		<div>
			<label>회원코드</label> 
			<input name="m_code" id="m_code" />
		</div>
		<div>
			<label>이름</label> 
			<input name="m_name" id="m_name"/>
		</div>
		
		<div>
			<label>닉네임</label> 
			<input name="m_nickname" id="m_nicknamename"/>
		</div>
		
		<div>
			<label>비밀번호</label> 
			<input name="m_pw" id="m_pw"/>
		</div>
		
		<div>
			<label>생년월일</label> 
			<input name="m_birth" id="m_birth"/>
		</div>
		
		<div>
			<label>성별</label> 
			<input name="m_gender" id="m_gender"/>
		</div>
		<div class="btn_update">
			<button type="button" class="save">저장</button>
		</div>
		</fieldset>
</form>

</body>

<script>
const member_submit = () => {
		
		let doc = document
		let m_code = doc.querySelector("update#m_code")
		let m_pw = doc.querySelector("update#m_pw")
		let m_nickname = doc.querySelector("update#m_nickname")
		let m_birth = doc.querySelector("update#m_birth")
		let m_name = doc.querySelector("update#m_name")
		let m_gender = doc.querySelector("update#m_gender")
	
		doc.querySelector("form#member_update").submit()
		
	}
	
	document.querySelector("form#member_update").addEventListener("click",(e) =>{
		let target = e.target
		if(target.tagName === "BUTTON") {
		
			if(target.className.includes("save")) {
			
				member_submit();				
			} 
		}
	})
</script>
</html>