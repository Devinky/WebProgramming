const userName = doucment.querySelector('#userName');

function ajaxUpdateViewFn() {
	const xhr = XMLHttpRequest();

	xhr.open('get', 'ajaxUpdateView.ax?userName=?'
		+ encodeURIComponent(userName.value), true);

	xhr.setRequestHeader("Content-type", "text/xml;charset=utf8");

	xhr.onreadtstatechange = function() {
		if (xhr.readyState == 4 && xhr.status == 200) {
			console.log(xhr.responseText);
			// table의 userName, userAge, userGender, useraddr(객체화된 문자열)
			
			let jsonOb = eval('(' + xhr.responseText + ')'); //문자열을 객체로

			let userName = document.querySelector('#userName');
			let userAge = document.querySelector('#userAge');
			let userAddr = document.querySelector('#userAddr');
			let userGender = document.querySelectorAll('.userName');

			let result = jsonOb.result; //DB데이터의 객체의 속성 result

			userName.value = result[0].value; //userName
			userAge.value = result[1].value; //userAge

			//radio, checkbox에 적용할 수 있다
			for (let i = 0; i < userGender.length; i++) {
				//테이블에 있는 userGender 값 == 현재 있는 userGender 값
				if (result[2].value == userGender[i].value) {
					//DB값과 userGender값이 같을 경우 체크한다(공식)
					userGender[i].checked = "checked";
				}
			}
			userAddr.value = result[3].value; //주소
		}

	}
	xhr.send(null);

}

//즉시실행함수
window.onload = function() {
	ajaxUpdateViewFn();
}

/*
(()=>{
	ajaxUpdateViewFn();
})();
 */