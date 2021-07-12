<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
 <style>
 * {
 	/* 초기화 */
 	box-sizing: border-box;
 	margin: 0;
 	padding: 0;
 }
 
 @font-face {
	/*기본 폰트 설정*/
	font-family: 'GmarketSansLight';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansLight.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

body {
	/* 배경 이미지 설정 */
        background-image: url('${rootPath}/static/images/back.png');
        background-repeat : no-repeat;
        background-size : cover;
      	
}

div#font_box,form#login_form {
	backdrop-filter: blur(8px);
	z-index: 500;
	width: 25vw;
	height: 65vh;
	border-radius:5px;

}

div#font_box {

background-color: rgba(255,255,255, 0.5);
position: absolute;
top: 13%;
left: 35%;

animation-name: aniTopDownDiv;
animation-duration:0.8s; 

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
	background: linear-gradient(135deg, rgba(145,199,136,0.7) 50%, rgba(255,255,255,0));
	position: absolute;
	top: 18%;
	left: 38%;
	
	animation-name: aniTopDownForm;
	animation-duration:0.8s; 
	
}

form#login_form h1 {
	font-size: 40px;
	color:white;
	text-align: center;
}

div#name_box, div#password_box{
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



@keyframes aniTopDownForm {
	from {
		top: -300px;
		opacity: 0;
	}
	
	to {
		top : 18%;
		opacity: 1;
	}
	
}

@keyframes aniTopDownDiv {
	from {
		top: -300px;
		opacity: 0;
	}
	
	to {
		top : 13%;
		opacity: 1;
	}

</style>

<body>
<div id="font_box">
<span>sing up</span>
<p> welcome!</p>
</div>
	<form id="login_form" method="POST" >
		<h1>PLATHER</h1>
		
		<div id="name_box">
			<img src="${rootPath}/static/images/name.png" width="100px">
			<input name="m_id" id="m_userid" placeholder="ID를 입력하세요" />
		</div>
		
		<div id="password_box"> 
			<img src="${rootPath}/static/images/pw.png" width="100px">
			<input type="password" name="m_pw" id="m_userpw" placeholder="비밀번호를 입력하세요" />
		</div>
		
		<div id="btn_box">	
			<button type="button" class="btn_login">로그인</button>
			
			<p>계정이 없으신가요?</p>
			<button type="button" class="btn_join">회원가입</button>
		
		</div>	
	</form>

</body>

<script>
	
	
	
	document.querySelector("button.btn_join")
		.addEventListener("click",()=>{
			location.href = "${rootPath}/member/insert";
		})
		
		
	document.querySelector("button.btn_login").addEventListener("click", ()=>{
		
		let userid = document.querySelector("input#m_userid")
		let userpw= document.querySelector("input#m_userpw")
		
		document.querySelector("form#login_form").submit();
	})
	
</script>
