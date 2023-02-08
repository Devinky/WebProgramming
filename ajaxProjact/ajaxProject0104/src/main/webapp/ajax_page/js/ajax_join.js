
const joinOkBtn = document.querySelector('#joinOkBtn');
const userName = document.querySelector('#userName');
const userAge = document.querySelector('#userAge');
const userGender = document.querySelectorAll('input[name=userGender]');
const userAddr = document.querySelector('#userAddr');


joinOkBtn.addEventListener('click', ajaxJoin);


function ajaxJoin(){

	let genderVal = ""; //체크된 성별의 value를 get하는 방법

	userGender.forEach(function(el){
		if(el.checked){
			genderVal = el.value;
		}
	});

	const xhr = new XMLHttpRequest();
	
	const data = "userName" + encodeURIComponent(userName.value)+
	"userAge" + encodeURIComponent(userAge.value)+
	"userGender" + encodeURIComponent(genderVal)+
	"userAddr" + encodeURIComponent(userAddr.value);
	
/*	xhr.open('get','ajaxJoinOk.ax?userName='+encodeURIComponent(userName.value)
	+'ajaxJoinOk.ax?userAge='+encodeURIComponent(userAge.value)
	+'ajaxJoinOk.ax?userGender='+encodeURIComponent(userGender.value)
	+'ajaxJoinOk.ax?userAddr='+encodeURIComponent(userAddr.value),true);*/
	
	xhr.setRequestHeader('Content-type','text/xml;charset=utf8');
	
	xhr.onreadystatechange=function(){
		
		if(userName.value==null || userName.value.length<1){
			alert('이름을 입력하세요');
			userName.focus();
			return false;
		}
		if(userAge.value==null || userAge.value.length<1){
			alert('연령을 입력하세요');
			userAge.focus();
			return false;
		}
		if(userAddr.value==null || userAddr.value.length<1){
			alert('주소를 입력하세요');
			userAddr.focus();
			return false;
		}
		
		const result = xhr.responseText;
		
		if(xhr.readyState==4 && xhr.status==200){
			console.log('Success');
			if(result=='1'){
				alert('회원가입 성공! 환영합니다');
				userName.value = ""; //중복이면 userName의 값을 비워줌
				userName.focus();
				location.href = "ajaxIndex.ax";
			}else{
				alert('회원가입 실패');
				//location.href = "ajaxIndex.ax";
			}
		}else{
			console.log('Fail');
		}
		
	}
	
	xhr.send(null);
	
}