//함수 생성
//매개변수가 없고 반환값이 없는 함수
function joinOkFn(){
	alert('joinOkFn');
	return;
}

//매개변수가 있고 반환값이 없는 함수
function fn2(num1, num2){
	let sum = num1 + num2;
	alert('joinOkFn');
}

//매개변수가 없고 반환값이 있는 함수
function fn3(){
	let sum = 100;
	return sum;
}

//매개변수가 있고 반환값이 있는 함수
function fn4(num1, num2){
	let sum = num1 + num2;
	console.log("함수 실행 : " + sum);
	let rs = "반환값 : " + sum;
	return rs;
}

//1. 함수 생성, 2. 선택자, 3. 이벤트 실행, 4. 함수 실행
const btn1 = document.querySelector('#btn1');

//btn1.addEventListener('click',함수)
//btn1을 클릭하면 -> fn4 함수를 호출한다
btn1.addEventListener('click',function(){
	fn4(100, 200);
});

//#loginOkBtn을 클릭하면 loginOkFn함수를 호출
//loginokFn함수는 #userId, #userPw 값이 없거나 길이가 4글자 미만이면 "입력 오류" 팝업을 띄우고
//해당 input요소에 focus가 이동하도록 처리
//유효성 검사를 통과하면 전체 폼이 실행하도록 프로그래밍
const loginForm = document.querySelector('#loginForm');
const btn2 = document.querySelector('#loginOkBtn');
const userId = document.querySelector('#userId');
const userPw = document.querySelector('#userPw');

btn2.addEventListener('click', loginOkFn);

function loginOkFn(){
	
	if(userId.value==null || userId.value.length<4){
		alert('아이디는 4글자 이상부터 사용 가능합니다');
		userId.focus();
		return false; //함수를 종료 -> 아래에 있는 것들은 실행하지 않는다
	}
	if(userPw.value==null || userPw.value.length<4){
		alert('비밀번호는 4글자 이상부터 사용 가능합니다');
		userPw.focus();
		return false;
	}
	
	alert('회원가입 완료')
	loginForm.submit();
	
}

//함수 표현식 -> 익명(무명) 함수에 주로 사용한다
const fn51 = function(){
	console.log('fn5');
}
const fn52 = function(num1, num2){
	console.log(num1 + num2);
}
const fn53 = function(num1, num2){
	let sum = num1 + num2;
	console.log('실행 : ' + sum);
	console.log('반환값 : ' + sum);
	return sum;
}

//arrow function(화살표 함수) -> 반복적인 함수 구문을 단축해준다, 매개변수 -> 자바의 람다식과 비슷
//익명함수 구문 단축
const fn01 = function(){
	console.log('fn01');
}
//↑ 얘를 이렇게 ↓
const fn011=()=> {
	console.log('fn011');
}
const fn012=()=> console.log('fn012');
