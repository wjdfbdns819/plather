<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Project PLATHER</title>
<link href="${rootPath}/static/css/join.css?ver=2021-06-15-044" rel="stylesheet" />
<script>
    document.addEventListener("DOMContentLoaded", () => {
        document.querySelector("div.btn_join button")
        .addEventListener("click",(ev)=>{
           alert("회원가입을 완료했습니다 :D")
 
        });
    });
</script>
</head>
<body>
	   <form class="join_form">
        <fieldset>
            <legend>회원가입</legend>
            <div class="sub_img">
            <img src="${rootPath}/static/images/user_green.png">
            </div>

        <div class="member_tag">
           <p>아이디(이메일)<input placeholder="이메일 형식으로 입력하세요"></p>
           <p>비밀번호<input   placeholder="비밀번호를 입력하세요"></p>
           <p>비밀번호 확인<input   placeholder="비밀번호를 다시 한번 입력하세요"></p>
           <p>이름<input placeholder="이름을 입력하세요"></p>
           <P>생년월일<input placeholder="생년월일(6자리)을 입력하세요"></P>
           <P>닉네임<input placeholder="닉네임을 입력하세요"></P>
           
        </div>    

        <div class="btn_join"><button>가입하기</button></div>
        </fieldset>
    </form>
	<%@include file="/WEB-INF/views/include/include_footer.jspf"%>
</body>
</html>