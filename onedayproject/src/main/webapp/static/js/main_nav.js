
		document.addEventListener("DOMContentLoaded", () => {
			const nav = document.querySelector("nav#main_nav");
			
				nav.addEventListener("click", (e) =>{
				let tagName = e.target.tagName;
				if(tagName == "LI"){
					 let menuText = e.target.innerText;
					
					if(menuText === "Home") {
						location.href = `${rootPath}` + "/";	
					}			
					else if(menuText === "학생정보") {
						location.href = `${rootPath}` + "/student";
						
						
					} else if(menuText === "성적일람표") {
						location.href = `${rootPath}` + "/subject";
						
					}
					
				}
			})
		})