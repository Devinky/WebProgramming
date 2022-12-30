//연산자
//1. 단항연산자
console.log("==========단항연산자==========")

let i = 10;

console.log(i++) //선처리 후증가
console.log(i)
console.log(++i) //선증가 후처리
console.log(i)
console.log(i--) //선처리 후감소
console.log(i)
console.log(--i) //선감소 후처리
console.log(i)

console.log("==========이항연산자==========")

let num1 = 10;
let num2 = 20;

console.log(num1+num2)
console.log(num1-num2)
console.log(num1*num2)
console.log(num1/num2)
console.log(num1%num2)

console.log("------대입연산자------")
const num = 100;

console.log("------복합대입연산자------")
let num3 = 10;
num3 = num3+20;
console.log(num3)

num3 += 20;
console.log(num3)

num3 -= 20;
console.log(num3)

num3 *= 20;
console.log(num3)

num3 /= 20;
console.log(num3)

num3 %= 20;
console.log(num3)

console.log("------비교연산자------")

let num4 = 10;
let num5 = 20;

console.log(num4>num5)
console.log(num4>=num5)
console.log(num4<num5)
console.log(num4>=num5)
console.log(num4==num5)
console.log(num4===num5)
console.log(num4!=num5)

console.log('11'==11)
console.log('11'===11)
console.log('11'!=11)
console.log('11'!==11)

if(10>5){
	console.log("5보다 크다")
}else{
	console.log("5보다 크지않다")
}

console.log("==========논리연산자==========")

const userId = 'm1';
const userPw = '11';

console.log(userId=='m1' && userPw=='11')
console.log(userId=='m2' && userPw=='11')
console.log(userId=='m1' && userPw=='21')
console.log(userId=='m2' && userPw=='21')

if(userId=='m1' && userPw=='11'){
	console.log("로그인 성공")
}else{
	console.log("로그인 실패")
}

console.log(userId=='m1' || userPw=='11')
console.log(userId=='m2' || userPw=='11')
console.log(userId=='m1' || userPw=='21')
console.log(userId=='m2' || userPw=='21')

if(userId!='m1' || userPw!='11'){
	console.log("로그인 실패")
}else{
	console.log("로그인 성공")
}

//조건이 true일 때만 실행
if(userId=='m1' && userPw=='11'){
	console.log('로그인 성공')
}else{
	console.log('로그인 실패')
}

if(id=='m1'){
	if(pw=='11'){
		console.log('로그인 성공')
	}else{
		console.log('로그인 실패. 비밀번호를 확인해주세요')
	}
}else{
	console.log('로그인 실패')
}

console.log("=====조건문 switch=====")

let rs = 5;
switch(rs){
	case 1:
		console.log(1);
		break;
	case 2:
		console.log(2);
		break;
	case 5:
		console.log(3);
		break;
	default:
		console.log('해당하는 번호가 없습니다');
}








