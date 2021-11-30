<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="reviewwrite.do" method="post">
	<input type="text" name="idx" id="idx"/><br/>
		<input type="text" name="id" id="id"/><br/>
		<input type="text" name="title" id="title"/><br/>
		<input type="text" name="content" id="content"/><br/>
		<input type="text" name="img" id="img"/><br/>
		<input type="text" name="hit" id="hit"/><br/>
		<input type="date" name="rigedate" id="regidate"/><br/>
		<input type="submit" value="작성완료"/>
		<input type="reset" value="취소"/>
	</form>

</body>
</html>