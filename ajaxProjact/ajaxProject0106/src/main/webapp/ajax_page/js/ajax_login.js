const loginOkBtn = document.querySelector('#loginOkBtn');
const userName = document.querySelector('#userName');
const userAge = document.querySelector('#userAge');

loginOkBtn.addEventListener('click', ajaxLoginFnP);

function ajaxLoginFnP() {

	const xhr = new XMLHttpRequest();

	const data = "userName=" + encodeURIComponent(userName.value) +
		"&userAge=" + encodeURIComponent(userAge.value);
									   
	xhr.open("get", "ajaxLoginOk.ax?" + data, true);

	xhr.setRequestHeader("Content-type", "text/xml;charset=utf8");

	xhr.onreadystatechange = function() {

		if (xhr.readyState == 4 && xhr.status == 200) {
			const result = xhr.responseText;
			console.log("Success")
			if (result == 1) {
				alert("로그인 성공~ 환영합니다^^");
				location.href = "ajaxIndex.ax";
			} else {
				alert("로그인 실패. 아이디와 비밀번호를 확인해주세요.");
				userName.value = "";
				userAge.value = "";
				userName.focus();
			}
			return false;
		}

	}
	xhr.send(null);

}