<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정</title>
</head>
<body>
	<h2>update page</h2>
	<form name = "update" method = "POST" action = "${path}/board/update?idx=${detail.idx}"	>
		<div>게시번호 : ${detail.idx}</div>
		<div>닉네임 : ${detail.id}</div>
		<div>조회수 : ${detail.hit}</div>
		<div>날짜 : ${detail.regidate}</div>
		<div>제목 : ${detail.title}</div>
		<div>
			<input name = "title" value="${detail.title}" type="text" />
		</div>
		<div>내용 : ${detail.content}</div>
		<div>
			<input name = "content" value="${detail.content}" type="text" />
		</div>
		
		<div>
			<input type = "submit" value="완료" />
			<input type = "reset" value="리셋" />
		</div>
	</form>
</body>
</html>