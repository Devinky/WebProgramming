<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>join</title>
</head>
<body>
	<div class="container">

		<div class="join">
			<div class="join-con">

				<form action="memberInsert.do" method="post" id="join">

					<table>
						<tr>
							<th colspan="2">회원가입</th>
						</tr>
						<tr>
							<td><label for="userId">ID </label></td>
							<td><input type="text" name="userId" id="userId"
								maxlength="12" placeholder="영문, 숫자 조합 6~10자"></td>
						</tr>
						<tr>
							<td><label for="userPw">Password </label></td>
							<td><input type="password" name="userPw" id="userPw"
								maxlength="12" placeholder="영문, 숫자 조합 8~12자"></td>
						</tr>
						<tr>
							<td><label for="gender">성별 </label></td>
							<td><input type="radio" name="gender" id="genderfemale"
								value="여성">여성 <input type="radio" name="gender"
								id="gendermale" value="남성">남성 <input type="radio"
								name="gender" id="gendersecret" value="비밀 " checked>비밀</td>
						</tr>
						<tr>
							<td><label for="hobbys">취미 </label></td>
							<td><input type="checkbox" name="hobbys" id="read"
								value="독서">독서 <input type="checkbox" name="hobbys"
								id="music" value="음악감상">음악감상 <input type="checkbox"
								name="hobbys" id="movie" value="영화관람">영화관람 <input
								type="checkbox" name="hobbys" id="game" value="게임">게임 <input
								type="checkbox" name="hobbys" id="outdoor" value="아웃도어">아웃도어</td>
						</tr>

						<tr>
							<td><label for="city"> 거주지 </label></td>
							<td><select name="city">
									<option value="" selected>::거주지역선택::</option>
									<option value="서울">서울</option>
									<option value="경기">경기</option>
									<option value="충청도">충청도</option>
									<option value="전라도">전라도</option>
									<option value="강원도">강원도</option>
									<option value="경상도">경상도</option>
									<option value="부산">부산</option>
							</select></td>
						</tr>

						<tr>
							<td><label for="memo">자기소개</label></td>
							<td><textarea name="memo" cols="50" rows="5"></textarea></td>
						</tr>
						<tr class="lastTr">
							<td colspan="2"><input type="reset" value="초기화"> <input
								type="button" value="눌러봐" onclick="alert('🎅메리 크리스마스~')">
								<input type="submit" value="가입"></td>
						</tr>
					</table>

				</form>

			</div>
		</div>

	</div>
</body>
</html>