const logoutBtn = document.querySelector('#logoutBtn');

logoutBtn.addEventListener('click', ajaxLogoutFnP);

function ajaxLogoutFnP() {

	const xhr = new XMLHttpRequest();
									   
	xhr.open("post", "ajaxLogout.ax?", true);

	xhr.setRequestHeader("Content-type", "text/xml;charset=utf8");

	xhr.onreadystatechange = function() {

		if (xhr.readyState == 4 && xhr.status == 200) {
			const result = xhr.responseText;
			console.log("Success")
			if (result == 1) {
				alert("로그아웃 성공. 다시 만나요^^");
				location.href = "ajaxIndex.ax";
			} else {
				alert("로그아웃 실패~");
			}
			return false;
		}

	}
	xhr.send(null);

}