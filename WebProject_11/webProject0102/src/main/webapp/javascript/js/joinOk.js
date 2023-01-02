//joinOkBtn을 클릭하면 input의 value를 체크해서
//값이 없으면 "값이 없습니다" 팝업을 띄우고
//다시 작성하도록

const joinOkBtn = document.querySelector('#joinOkBtn');
const userId = document.querySelector('#userId');
const userPw = document.querySelector('#userPw');
const hobbys = document.querySelectorAll('.hobbys');
const city = document.querySelector('#city');
const gender = document.querySelector('.gender');

//joinOkBtn에 이벤트를 준다
//click -> 마우스를 눌렀다 뗐을 때 발생하는 이벤트
//addEventListener									//이벤트 핸들러(함수)
joinOkBtn.addEventListener("click", joinOkFn)

function joinOkFn(){
	console.log('joinOkFn함수 호출')
		
	//아이디 value가 null, value.length<1
	if(userId.value==null || userId.value.length<1){
			alert('아이디를 입력해주세요')
			userId.focus();
			return false;
	}
	if(userPw.value==null || userPw.value.length<1){
		alert('비밀번호를 입력해주세요')
		userPw.focus();
		return false;
	}
	if(userName.value==null || userName.value.length<1){
		alert('이름을 입력해주세요')
		userName.focus();
		return false;
	}
	//체크 갯수가 1보다 작으면 아무것도 체크가 안된 것
	let i = 0;
	
	//hobbys의 모든 요소를 검사하여 체크가 되어있으면 i를 1증가
	hobbys.forEach((el,index) => {
		if(el.checked){
			console.log(el + "<<" + index)
			i++;
		}
	});
	
	//체크가 아무것도 안돼있다면
	if(i<1){
		alert("취미가 아무 것도 없나요?")
		hobbys[0].focus();
		return false;
	}
	if(city.value==null || city.value.length<1){
		alert('거주지를 선택하세요')
		city.focus();
		return false;
	}
	
	alert("회원가입 완료");
	joinForm.submit();
	
}
