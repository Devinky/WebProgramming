//1. 선택
const loginOpen = document.querySelector('.login_open a');
const loginLayer = document.querySelector('.login-layer');
const loginForm = document.querySelector('.login-form');
const spanClose = document.querySelector('span.close');

loginOpen.addEventListener('click', (e) => {
  //a, sumit -> 기본이벤트 적용하지 않을 시 반드시 기본이벤트를 중지
  e.preventDefault();
  //최상위 부모 요소가 보이게↓
  loginLayer.style.display = "flex";
});

//spanClose click -> longLayer 사라지는 이벤트 구현
spanClose.addEventListener('click', () => {
  loginLayer.style.display = "none";
});

let i = -1;

const itemList = document.querySelectorAll('.item-con>ul>li');
const galleryUlli = document.querySelectorAll('.gallery-con>ul>li');
const itemUl = document.querySelector('.item-con>ul');

const arrBg = [];

for (let i = 0; i < galleryUlli.length; i++) {
  arrBg.push('url(../images/model' + i + '.jpg) no-repeat 50%/cover');
  galleryUlli[i].style.background = arrBg[i];
}

function autoGallery() {
  i++;
  console.log(`i0->${i}`);
  //gallery li에게 i번지는 fadeLi클래스를 설정
  //나머지 fadeLi를 삭제
  galleryUlli.forEach((element, index) => {
    if (i === index) {
      element.classList.add('fadeLi');
    } else {
      element.classList.remove('fadeLi');
    }
  });

  itemList.forEach((element, index) => {
    if (i === index) {
      element.classList.add('on');
    } else {
      element.classList.remove('on');
    }
  });

  if (i >= galleryUlli.length - 1) i = -1;

}

let setIn = setInterval(autoGallery, 3000); //a1 함수를 3초마다 실행

(function () {
  autoGallery();
})();

///////////////////////////////////////////////////////////////////////////

// //마우스를 올렸을 때 멈추고
// const arrowRight = document.querySelectorAll('span.arrow')[0]
// const arrowLeft = document.querySelectorAll('span.arrow')[1]

// arrowRight.addEventListener('mouseover', () => {
//   console.log('arrowRight')
//   clearInterval(setIn)
// });

// arrowLeft.addEventListener('mouseover', () => {
//   console.log('arrowLeft')
//   clearInterval(setIn)
// });

// //마우스를 내렸을 때 다시 실행
// arrowRight.addEventListener('mouseout', () => {
//   console.log('mouseout -> 재실행')
//   setIn = setInterval(autoGallery, 1000);
// });

// arrowLeft.addEventListener('mouseout', () => {
//   console.log('mouseout -> 재실행')
//   setIn = setInterval(autoGallery, 1000);
// });

// //즉시실행함수
// (function () {
//   autoGallery();
// })();

///////////////////////////////////////////////////////////////////////////

//li를 클릭해서 li중 몇번째 인덱스인지 확인?
//.gallery>ul>li의 인덱스와 일치하는 .gallery>ul>li만 보이고 나머지는 보이지않게 하는 이벤트
// itemList[0].addEventListener('click', (event) => {
//   console.log(event.type + "type");
//   console.log(event.target + "target"); //직접 이벤트가 구현된 객체
//   console.log(event.currentTarget + "currentTarget"); //이벤트가 바인딩 된 객체
// });

// itemUl.addEventListener('click', (event) => {
//   console.log(event.type + "type");
//   console.log(event.target + "target");
//   console.log(event.currentTarget + "currentTarget");
// });

//리스트                  //el리스트 요소
// itemList.forEach(function (el, idx) {
//   console.log(el + ", " + idx)

//   galleryUlli.forEach((el12, idx2) => {
//     console.log(e2 + ", " + idx2);

//     if (idx == idx2) {
//       console.log(el2 + " <<")
//     }
//   })
// });

