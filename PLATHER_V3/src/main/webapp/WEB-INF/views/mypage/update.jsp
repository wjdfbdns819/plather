<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />

<link href="${rootPath}/static/css/update.css" rel="stylesheet" />
<%@include file="/WEB-INF/views/include/include_header.jspf"%>
<form class="update" method="POST">
	<fieldset>
		<legend>필수 회원정보</legend>
		<div>
			<label>이름</label> <input name="m_name" id="m_name"
				value="${MB_DETAIL.m_name}" />
		</div>
		<div>
			<label>ID</label> <input name="m_id" id="m_id" type="email"
				value="${MB_DETAIL.m_id}" readonly="readonly" />
		</div>
		<div>
			<label>닉네임</label> <input name="m_nickname" id="m_nickname"
				value="${MB_DETAIL.m_nickname}" />
		</div>
		<div>
			<label>비밀번호</label> <input name="m_pw" id="m_pw"
				value="${MB_DETAIL.m_pw}" type="password" />
		</div>
		<div>
			<label>비밀번호 확인</label> <input type="password" />
		</div>


		<input name="m_birth" value="${MB_DETAIL.m_birth}" type="hidden" /> <input
			name="m_gender" value="${MB_DETAIL.m_gender}" type="hidden" /> <input
			name="m_profile" value="${MB_DETAIL.m_profile}" type="hidden" />

	</fieldset>
	<div class="btn_box">
		<button class="btn_update">🖉수정하기</button>
	</div>

</form>
<%@include file="/WEB-INF/views/include/include_footer.jspf"%>