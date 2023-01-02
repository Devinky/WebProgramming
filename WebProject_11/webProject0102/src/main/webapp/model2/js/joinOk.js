//Model2 - joinOk

//유효성검사를 통해 id, pw, name 입력값이 없으면 창 띄우기
//각 요소를 담은 변수 선언
const userId = document.querySelector('#userId')
const userPw = document.querySelector('#userPw')
const userName = document.querySelector('#userName')
const joinOkBtn = document.querySelector('#joinOkBtn')

//이벤트 선언
joinOkBtn.addEventListener("click", joinOkFn)

function joinOkFn(){
	
	if(userId==null || userId.value.length<1){
		alert('아이디를 입력해주세요')
		userId.focus()
		return false
	}
	if(userPw==null || userPw.value.length<1){
		alert('비밀번호를 입력해주세요')
		userPw.focus()
		return false
	}
	if(userName==null || userName.value.length<1){
		alert('이름을 입력해주세요')
		userName.focus()
		return false
	}
	
	alert('회원가입 완료^^')
	joinForm.submit()
	
}