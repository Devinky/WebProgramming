/**
 * 
 */
 
 let num1 = 10;
 console.log(num1);
 console.log(typeof num1);
 
 let num2 = '20';
 console.log(num2);
 console.log(typeof num2);
 
 var num1 = 10; //같은 공간에 두번 이상 선언할 수 있다
 var num1 = 10;
 num1 = 222;
 num2 = 11;
 var num2;
 
 let num3;
 num3 = 100; //값을 변경할 수 있다
 num3 = 200; // "
 let num3 = 333; //X 같은 공간에서 한번만 선언할 수 있다
 
 
 const num4 = 100; //선언과 동시에 초기화해야 한다
// const num4; //X같은 공간에 한번만 선언 가능
// num4 = 11000; //X 한번만 초기화할 수 있다
 
 console.log("======================================")
 let n1 = 100;
 console.log(typeof n1);
 let n2 = '문자1';
 console.log(typeof n2);
 let n3 = "문자2";
 console.log(typeof n3);
 let n4 = null;
 console.log(typeof n4);
 let n5;
 console.log(typeof n5);
 let n6 = new Array();
 console.log(typeof n6);
 let n7 = true;
 console.log(typeof n7);