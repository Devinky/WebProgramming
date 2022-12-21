<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="login1221Insert.do" method="post" id="join">

       <table>
         <tr>
           <th colspan="2">회원가입</th>
         </tr>
              
         <tr>
           <td><label for="userId">ID </label></td>
           <td><input type="text" name="userId" id="userId" maxlength="12" placeholder="영문, 숫자 조합 6~10자"></td>
         </tr>
              
         <tr>
           <td><label for="userPw">Password </label></td>
           <td><input type="password" name="userPw" id="userPw" maxlength="12" placeholder="영문, 숫자 조합 8~12자"></td>
         </tr>
              
         <tr>
           <td><label for="gender">성별 </label></td>
           <td><input type="radio" name="gender" id="genderfemale">여성
             <input type="radio" name="gender" id="gendermale">남성
             <input type="radio" name="gender" id="gendersecret" checked>비밀
           </td>
         </tr>
              
         <tr>
           <td><label for="hobbys">취미 </label></td>
           <td><input type="checkbox" name="hobbys" id="read">독서
             <input type="checkbox" name="hobbys" id="music">음악감상
             <input type="checkbox" name="hobbys" id="movie">영화관람
             <input type="checkbox" name="hobbys" id="game">게임
             <input type="checkbox" name="hobbys" id="outdoor">아웃도어
           </td>
         </tr>

         <tr>
           <td><label for="city"> 거주지 </label></td>
           <td><select name="city">
               <option value="" selected>::거주지역선택::</option>
               <option value="seoul">서울</option>
               <option value="gyeongi">경기</option>
               <option value="chungcheong">충청도</option>
               <option value="jeonra">전라도</option>
               <option value="kangwon">강원도</option>
               <option value="kyeongsang">경상도</option>
               <option value="pusan">부산</option>
             </select>
           </td>
         </tr>

         <tr>
           <td><label for="memo">자기소개</label></td>
           <td><textarea name="memo" cols="50" rows="5"></textarea></td>
         </tr>
              
         <tr class="lastTr">
           <th colspan="2">
             <input type="reset" value="초기화">
             <input type="button" value="눌러보세요" onclick="alert('🎅메리 크리스마스~')">
             <input type="submit" value="가입">
           </th>
         </tr>
              
       </table>

     </form>
</body>
</html>