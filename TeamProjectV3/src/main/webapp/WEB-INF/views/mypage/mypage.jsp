<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}"/>

<h1>마이페이지</h1>


	<input name="m_profile" id="m_profile" value="${MB_PROFILE.m_profile}" type="hidden">
	<img src="" width="100px">
	
<script>
	/* 변수 선언 */
	let input_profile = document.querySelector("input#m_profile")
	let img_profile = document.querySelector("img")
	if(input_profile) {
		
		let user_profile = input_profile.value
		
		if(user_profile === "0") {
			
			img_profile.src = "${rootPath}/static/images/profile_red.png"	
			
		} else if(user_profile === "1") {
			
			img_profile.src = "${rootPath}/static/images/profile_orange.png"
			
		} else if(user_profile === "2") {
			
			img_profile.src = "${rootPath}/static/images/profile_yellow.png"
			
		} else if(user_profile === "3") {
			
			img_profile.src = "${rootPath}/static/images/profile_green.png"
			
		} else if(user_profile === "4") {
			
			img_profile.src = "${rootPath}/static/images/profile_blue.png"
			
		} else if(user_profile === "5") {
			
			img_profile.src = "${rootPath}/static/images/profile_navy.png"
			
		} else if(user_profile === "6") {
			
			img_profile.src = "${rootPath}/static/images/profile_puple.png"
			
		}
		
	} // input_profile end
</script>
	