const json1 = {'userName':'John'};
const json2 = {'userAge':30};
const json2_2 = {'userGender':'남'};
const json2_3 = {'userAddr':'불명'};

const td1 = document.querySelectorAll('.td1');
/*const td1 = document.querySelectorAll('tbody tr td');*/

td1[0].innerText = json1.userName;
td1[1].innerText = json2.userAge;
td1[2].innerText = json2_2.userGender;
td1[3].innerText = json2_3.userAddr;

const td2 = document.querySelectorAll('.td2');

const json3 = {'result': {
	'userName' : 'Inkyeong',
	'userAge' : 28,
	'userGender' : '여',
	'userAddr' : '서울'
	}
};

td2[0].innerText = json3.result.userName;
td2[1].innerText = json3.result.userAge;
td2[2].innerText = json3.result.userGender;
td2[3].innerText = json3.result.userAddr;

const td3 = document.querySelectorAll('.td3');

const json4 = {'result': [ 'Minzi', 28, '여', '교토']};

/*td3[0].innerText = json4.result[0];
td3[1].innerText = json4.result[1];
td3[2].innerText = json4.result[2];
td3[3].innerText = json4.result[3];*/

/*for(let i=0;i<td3.length;i++){
	td3[i].innerText = json4.result[i];
}*/

let j = 0;
td3.forEach(function(element, index){
	element.innerText = json4.result[j];
	j++;
});

//tbody지정
const tbody = document.querySelector('#tbody');
//tr을 js파일에서 생성
const trTag = document.createElement('tr');
//tbody에 tr추가
tbody.appendChild(trTag);

//td생성
const tdTag0 = document.createElement('td');
const tdTag1 = document.createElement('td');
const tdTag2 = document.createElement('td');
const tdTag3 = document.createElement('td');
//tr에 td를 추가
trTag.appendChild(tdTag0);
trTag.appendChild(tdTag1);
trTag.appendChild(tdTag2);
trTag.appendChild(tdTag3);

const json5 = {'result':['Yeonju',28,'여','서울']};

//td에 텍스트요소 추가
tdTag0.innerText = json5.result[0]
tdTag1.innerText = json5.result[1]
tdTag2.innerText = json5.result[2]
tdTag3.innerText = json5.result[3]

const dataDB = {
	'result':[
		{'userName':'Anna', 'userAge':28, 'userGender':'여','userAddr':'서울'},
		{'userName':'Jiin', 'userAge':28, 'userGender':'여','userAddr':'부산'},
		{'userName':'Jisu', 'userAge':28, 'userGender':'여','userAddr':'울산'},
		{'userName':'누군가', 'userAge':15, 'userGender':'남','userAddr':'춘천'}
	]
}

const dataDB2 = {
	'result':[
		['Anna', 28, '여', '서울'],
		['Jiin', 28, '여', '부산'],
		['Jisu', 28, '여', '울산'],
		['누군가', 15, '남', '춘천']
	]
}

for(let i=0;i<4;i++){
	let trTag2 = document.createElement('tr');
	tbody.appendChild(trTag2);
	
	for(let j=0;j<4;j++){
		let tdTagSub = document.createElement('td');
		
		console.log(dataDB2.result[i][j])
		
		tdTagSub.innerText = dataDB2.result[i][j]

		trTag2.appendChild(tdTagSub)
		/*console.log('------------------------')*/
	}
		
}

const data1 = '{"name":"John","age":30}'; //String
const json7 = JSON.parse(data1); //String -> JSON / 문자열 데이터를 객체화 시킴

//JSON -> 클라이언트 ->문자열(문자열이 아니면 에러남)<- 통신할 때
//JSON 형태의 문자열
const data3 = '{"userName":"m1","userAge":"11","userGender":"M","userAddr":"서울"}';
//data3을 JSON 객체로 변환
const j2 = JSON.parse(data3);

console.log(typeof j2)











