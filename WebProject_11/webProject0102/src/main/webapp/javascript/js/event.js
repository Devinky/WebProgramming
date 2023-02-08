//이벤트
const btn1 = document.querySelector('#btn1');
const btn2 = document.querySelector('#btn2');

btn1.addEventListener('click',function(){ //이벤트바인딩
	console.log('이벤트 실행');
});

function f1(){	//이벤트핸들러
	console.log('f1() 실행')
}
btn2.addEventListener('click', f1);	//이벤트바인딩

const header = document.querySelector('#header');

window.addEventListener("scroll", function(e) {
	let cVal = document.documentElement.scrollTop;
	console.log('scroll top ' + cVal);
	
	if (cVal >= 60) {	//scroll top이 60이상이면
		header.classList.add("add-top");	//.add-top을 적용
	}
	else {
		header.classList.remove("add-top"); //.add-top을 삭제
	}
});

const btn3 = document.querySelector('#btn3');

btn3.addEventListener('mouseover', function(){
	console.log('mouseover');
});
btn3.addEventListener('mouseout', function(){
	console.log('mouseout');
});

const searchForm = document.querySelector('#searchForm');
const search = document.querySelector('#search');
const searchOk = document.querySelector('#searchOk');
const searchBtnOk = document.querySelector('#searchBtnOk');

search.addEventListener('keyup', function(event){
 console.log(event.target.value);
});

searchOk.addEventListener('click', function(event){
	event.preventDefault();	//기본이벤트 중지 //submit 이벤트

	if(search.value==null || search.value.length<1){
		alert('입력 오류! 다시 입력하세요');
		search.focus();
		return false;
	}
	alert('검색 실행')
	searchForm.submit();
});	

searchBtnOk.addEventListener('click', function(event){
	if(search.value==null || search.value.length<1){
		alert('입력 오류! 다시 입력하세요');
		search.focus();
		return false;
	}
	alert('검색 실행')
	searchForm.submit();
});


const btn4 = document.querySelector('#btn4');

let i = 1;
function f1(){
	console.log(i++);
}

//f1함수를 1초마다 실행 -> 윈도우가 존재할 때까지
/*let setIn = setInterval(f1, 1000); //1초 1000

btn4.addEventListener('mouseover', function(){
	clearInterval(setIn); //setInterval 중지	
});
btn4.addEventListener('mouseout', function(){
	setIn = setInterval(f1, 1000); //mouseout시 다시 시작
});*/


//배열
const arr1 = new Array();
const arr2 = ['a1','a2','a3'];

const galleryLi = document.querySelectorAll('.gallery ul li'); //배열 선택

galleryLi[0].style.backgroundColor='#0000ff';
galleryLi[1].style.backgroundColor='#00ffff';
galleryLi[2].style.backgroundColor='#00ff00';
galleryLi[3].style.backgroundColor='#ff0000';
galleryLi[4].style.backgroundColor='#ff00ff';

for(let i=0;i<galleryLi.length;i++){
	console.log(galleryLi[i]);
}




















