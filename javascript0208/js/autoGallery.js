const imageList = document.querySelectorAll('.gallery-con>ul>li');
const arrImage = [];

let i = 0;

for(let i=0;i<imageList.length;i++){
  arrImage.push('url(../images/model'+i+'.jpg) no-repeat 50%/cover');
  imageList[i].style.background = arrImage[i];
}

function autoGallery(){
  i++;
  imageList.forEach((element, index) => {
    if(i === index){
      element.classList.add('fadeGallery');
    }else{
      element.classList.remove('fadeGallery');
    }
  });

if(i>=imageList.length-1){
  i=-1;
}

}

let setInt = setInterval(autoGallery, 3000);