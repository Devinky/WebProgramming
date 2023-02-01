const joinOkBtn = document.querySelector('#joinOkBtn');
const userName = document.querySelector('#userName');
const userAge = document.querySelector('#userAge');
/*const userGender = document.querySelectorAll('input[name=userGender]');*/
const userGender = document.querySelectorAll('.userGender');
const userAddr = document.querySelector('#userAddr');


joinOkBtn.addEventListener('click', ajaxJoinFnP);

function ajaxJoinFnP() {
	
	let genderVal = ""; // 체크된 성별의 value를 get하는 방법
	
	userGender.forEach(function(element) {
		if (element.checked) {
			genderVal = element.value;
		}
	});

	/*	if(userName.value==null || userName.value.length<1){
			alert("이름입력오류! 다시 입력해주세요!!")
			userName.value = "";
			userName.focus();
			return false;
		}*/
	const xhr = new XMLHttpRequest();

	const data = "userName=" + encodeURIComponent(userName.value) +
		"&userAge=" + encodeURIComponent(userAge.value) +
		"&userGender=" + encodeURIComponent(genderVal) +
		"&userAddr=" + encodeURIComponent(userAddr.value);
	/*	xhr.open("get", "ajaxJoinOk.ax?userName=" + encodeURIComponent(userName.value)+
									   "&userAge="+ encodeURIComponent(userAge.value)+
									   "&userGender="+ encodeURIComponent(userGender.value)+
									   "&userAddr="+ encodeURIComponent(userAddr.value), true);*/
									   
	xhr.open("get", "ajaxJoinOk.ax?" + data, true);

	xhr.setRequestHeader("Content-type", "text/xml;charset=utf8");

	xhr.onreadystatechange = function() {

		if (xhr.readyState == 4 && xhr.status == 200) {
			const result = xhr.responseText;
			console.log("Success")
			if (result == 1) {
				alert("회원가입 성공! 환영합니다^^");
				location.href = "ajaxIndex.ax";
			} else {
				alert("회원가입 실패. 다시 시도해주세요.");
				//userName.value = "";
				//userName.focus();
				//location.href="ajaxIndex.ax";
			}
			return false;
		}

	}

	xhr.send(null);

}