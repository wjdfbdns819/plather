<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Project PLATHER</title>
<style>
* {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
}

#main_container {
	padding-top: 130px;
	line-height: 30px;
	width: 80%;
	margin: 0 auto;
	min-height: calc(100vh - 70px);
}

label {
	display: inline-block;
	width: 20%;
	text-align: right;
	margin: 5px 30px 5px 0px;
	padding: 10px;
	white-space: nowrap;
}

input {
	width: 70%;
	height: 30px;
	outline: 0;
}
input.nickname {
	border: 1px solid transparent;
}
div.div_content{
	display: flex;
}
textarea {
	width: 70%;
	margin-left: 4px;
	resize: none;
	overflow-y: scroll;
}
button {
	background-color: #91c788;
	border: 0px;
	border-radius: 5px;
}

button:hover {
	cursor: pointer;
	font-weight: bold;
}
.list_buttons {
	display: flex;
	text-align: right;
	padding: 20px;
	margin-right: 7%;
	width: 100%;
	
}
div.list_buttons button {
	padding: 5px 10px;
	
}
button.btn_register {
	margin-left: auto;
}
button.btn_register {
	margin-right: 10px;
}
fieldset {
	margin-left: 30px;
	padding: 10px 0px;
	display: inline-block;
	width: 90%;
	border: 1px solid #53734e;
	border-radius: 15px;
}

legend {
	margin-left: 20px;
	text-align: left;
	padding: 2px 10px;
	background-color: #53734e;
	border-radius: 15px;
	color: white;
	font-weight: 900;
}
div.add_buttons {
	text-align: right;
	padding-right: 10px;
}

.add_buttons button {
	padding: 7px;
	width: 20%;
}




div#modal{
	position:absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	width: 70%;
	z-index: 10;
	background-color: white;
 	 padding: 6rem;
  	border-radius: 5px;
  	box-shadow: 0 3rem 5rem rgba(0, 0, 0, 0.3);
  	
}
div.hidden{
	display: none;
}
div.visibility {
	visibility: hidden;
	height: 350px;
	white-space: nowrap;
}
div#table{
	height: 350px;
	overflow-y: scroll;
}

table {
	border-collapse: separate;
	border-spacing: 1px;
	text-align: left;
	line-height: 1.5;
	border-top: 1px solid #ccc;
	margin: 0px auto;
	width: 70%;
	
}

th {
	background-color: #e1e1e1;
	text-align: center;
	width: 150px;
	padding: 10px;
	font-weight: bold;
	border-bottom: 1px solid #ccc;
}

table td {
	text-align: center;
	width: 350px;
	padding: 10px;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
}
</style>
</head>
<body>
	<%@include file="/WEB-INF/views/include/include_header.jspf"%>

	<div id="main_container">
		<form method="POST" action="${rootPath}/board/insert">
			<input name="b_code" value="${BCODE}" type="hidden" />
			<div class="div_list_title">
				<label class="label_title">플레이리스트 제목</label> <input name="b_title"
					class="content i_title" placeholder="PlayList Title" />
					
			</div>
			<div class="div_name">
				<label class="lable_name">작성자</label><input 
				class="nickname" name="b_nick"
					value="${MEMBER.m_nickname}" readonly="readonly">
					<input 
				class="memberid" name="b_id"
					value="${MEMBER.m_id}" type="hidden">
			</div>
			<div class="div_content">
				<label class="lable_content">내용</label>
				<textarea name="b_content" class="content" cols="50" rows="4"></textarea>
			</div>
			<div class="list_buttons">
				<button type="button" class="btn_playlist btn">📄 플레이리스트 만들기</button>
				<button type="button" class="btn_register btn">💾 등록</button>
				<button type="button" class="btn_list btn">⬅ 목록으로</button>
			</div>
		</form>
	</div>
	<div id="modal" class="hidden">
		<fieldset>
			<legend>노래추가</legend>
			<div class="div_song_title">
				<label>노래제목</label><input class="content i_song_title"
					placeholder="노래제목" />
				<div class="div_msg title"></div>
			</div>

			<div class="div_singer">
				<label>가수</label><input class="content i_singer" placeholder="가수" />
			</div>
			<div class="add_buttons">
				<button type="button" class="btn_add btn">➕ 추가</button>
				<button type="button" class="btn_complete btn">👍 완료</button>
			</div>
		</fieldset>
		<div id="table" class="visibility">
			<table>
				<thead>
					<tr>
						<th>노래제목</th>
						<th>가수</th>
					</tr>
				</thead>
				<tbody class="tbody">
				</tbody>
			</table>
		</div>
	</div>
<%@include file="/WEB-INF/views/include/include_footer.jspf"%>
</body>
<script>
// 변수 생성
	const doc= document
	const btn_register =doc.querySelector("button.btn_register")
	const btn_list = doc.querySelector("button.btn_list")
	const btn_add = doc.querySelector("button.btn_add")
	const btn_playlist = doc.querySelector("button.btn_playlist")
	const btn_complete = doc.querySelector("button.btn_complete")
	const i_song_title = doc.querySelector("input.i_song_title.content")
	const i_singer = doc.querySelector("input.i_singer.content")
	const i_board_title =doc.querySelector("input.i_title.content")
	const content =doc.querySelector("textarea.content")
	const modal = doc.querySelector("#modal")
	const div_table =document.querySelector("#table")
	const tbody = document.querySelector(".tbody")
	
	
	//플레이리스트 변수 생성
	let playList = new Array(); 
	let board = new Object();
	let row = 0;
	
	alert(doc.querySelector("input.memberid").value)
	//노래추가할때 빈문자열 확인하고 리스트에 추가하는 function
	const add_list=()=>{
		let s_title = i_song_title.value
		let s_singer = i_singer.value
		//객체 생성
		let play = new Object();
		if(s_title.trim() === ""){
			alert("노래제목을 입력해주세요"+s_title)
			i_song_title.focus()
			return false
		}
		if(s_singer.trim() === ""){
			alert("가수를 입력해주세요")
			i_singer.focus()
			return false
		}
		play.s_title = s_title;
		play.s_singer = s_singer;
		play.s_row = row
		console.log(play);
		// playList에 추가 
		playList.push(play);
		console.log(playList)
		create_table();
		row++
	
	}
	// 플레이 리스트 테이블 생성하는 function
	const create_table = ()=>{
		
		if(playList.length>0){
			div_table.classList.remove("visibility")
			let html = "";
			for(let i = 0 ; i <playList.length ; i++){
				html += "<tr data-row="+ playList[i].s_row +">"
				html += "<td>"+playList[i].s_title + "</td>"
				html += "<td>"+playList[i].s_singer + "</td>"
				html += "</tr>"
			}
		document.querySelector("tbody.tbody").innerHTML = html
		}
	}
	const register_board=() => {
		const b_title = i_board_title.value
		const b_content= content.value
		
		if(b_title.trim() === ""){
			alert("글 제목을 입력해주세요")
			i_board_title.focus()
			return false
		}
		if(b_content.trim() === ""){
			alert("글 내용을 입력해주세요")
			content.focus()
			return false
		}
		
		board.b_title = b_title
		board.b_content = b_content
		board.b_id= doc.querySelector("input.memberid").value
		board.b_nick=doc.querySelector("input.nickname").value
		board.playList =playList
		console.log(board)
		
	}
	// 플레이리스트 만들기 클릭할 때 나타나는 event
	btn_playlist.addEventListener("click",()=>{
		modal.classList.remove("hidden")
	})
	// 노래 추가 버튼을 클릭할 때 나타나는 event
	btn_add.addEventListener("click",()=>{
		
		add_list();
		i_song_title.value=null;
		i_singer.value = null;
		i_song_title.focus();
	
	})
	// 노래 추가에서 특정 테이블 로우를 클릭하면 나타나는  event
	tbody.addEventListener("click",(e)=>{
		const tag = e.target.tagName;
		if(tag === "TD"){
			const t_row = e.target.closest("TR").dataset.row
			 alert (t_row)
			
			console.table(playList)
			
			//playList = playList.filter(play=>{
			//	console.log(play);
			//	 console.log("s_row:",play.s_row,"row:",row, play.s_row == row)
			//	return play.s_row != row
			//})
			//row : 클릭한곳의 tr의 data-row
			// play.s_row 가 클릭한 row가 아닌 값만 걸러 playList로 저장
			playList = playList.filter(play=>play.s_row != t_row)
			
			// console.log("새로만든 playList")
			// console.table(playList)
			e.target.closest("TR").remove()
		}
	})
	
	// 리스트 추가하고 완료버튼 클릭할 때 나타나는 event
	btn_complete.addEventListener("click",()=>{
		modal.classList.add("hidden")
	})

	
	// 게시물 등록을 클릭할 때 나타나는 event
	btn_register.addEventListener("click",()=>{
		if(playList.length<3){
			alert("플레이 리스트는 최소 3개 이상 추가해주세요")
			i_song_title.focus()
			return false
		}else{
			register_board()
			let JsonString = JSON.stringify(board)
			console.log(JsonString)
			fetch("${rootPath}/board/insert",{method : "POST",body:JsonString,
				headers :{"content-Type" : "application/json"}
			})
			.then(res=>res.text())
			.then(result=>{
				if(result == "OK") {
					location.href="${rootPath}/board"
				} else {
					alert("추가 실패")
				}
			})
		}//else
		})
	// 목록으로 버튼을 클릭할 때 나타나는 event
	btn_list.addEventListener("click",()=>{
		location.replace("${rootPath}/board")
	})
	
</script>
</html>