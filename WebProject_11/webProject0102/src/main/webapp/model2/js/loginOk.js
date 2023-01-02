const loginForm = document.querySelector('#loginForm');
const userId = document.querySelector('#userId');
const userPw = document.querySelector('#userPw');
const loginOk = document.querySelector('#loginOk');

loginOk.addEventListener('click', loginOkFn);

function loginOkFn(event){
	event.preventDefault();
	
	if(userId.value==null || userId.value.length<1){
		alert('아이디를 입력해주세요');
		userId.focus();
		return false;
	}
	if(userPw.value==null || userPw.value.length<1){
		alert('비밀번호를 입력해주세요');
		userPw.focus();
		return false;
	}
	
	alert('로그인 실행');
	loginForm.submit();
}