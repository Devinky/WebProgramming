
const joinBtn = document.querySelector('#joinBtn');
const userName = document.querySelector('#userName');

nameCheckedBtn.addEventListener('click', ajaxJoin);

function ajaxJoin(){
	const xhr = new XMLHttpRequest();
	
	xhr.open('get','ajaxCheckedOk.ax?userName='+encodeURIComponent(userName.value),true);
	xhr.setRequestHeader('Content-type','text/xml;charset=utf8');
	
	xhr.onreadystatechange=function(){
		
		if(userName.value==null || userName.value.length<1){
			alert('입력을 하셔야죠');
			userName.focus();
			return false;
		}
		
		const result = xhr.responseText;
		
		if(xhr.readyState==4 && xhr.status==200){
			console.log('Success');
			if(result=='1'){
				alert('이미 사용 중인 이름입니다');
				userName.value = ""; //중복이면 userName의 값을 비워줌
				userName.focus();
			}else{
				alert('사용 가능한 이름입니다');
				//location.href = "ajaxIndex.ax";
			}
		}else{
			console.log('Fail');
		}
		
	}
	xhr.send(null);
	
}