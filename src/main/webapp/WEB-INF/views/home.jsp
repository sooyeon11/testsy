<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" pageEncoding="utf-8"%>
<html>
<head>
<title>Home</title>
</head>
<body>

	<form action="registerAction">
		<input type="text" name="id" id="id" placeholder="아이디입력"/><br/>
		<input type="text" name="name" id="name" placeholder="이름입력"/><br/>
		<input type="text" name="age" id="age" placeholder="나이"/><br/>
		<input type="submit" value="완료"/>
	</form>
		
		
		<a href="/ex00/listReview">게시물 목록</a>
		<a href="/ex00/ReviewPage?num=1">위드독 목록</a>
		<a href="/ex00/writeReview">글작성</a>
</body>
</html>
