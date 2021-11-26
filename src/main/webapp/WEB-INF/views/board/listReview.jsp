<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 목록</title>
</head>
<body>
	<table>
		<thead>
			<tr>
				<td>id</td>
				<td>title</td>
				<td>content</td>
			</tr>
		</thead>

		<tbody>
		<c:forEach var="listReview" items="${list}">
				<tr>
					<td>${listReview.id}</td>
					<td>${listReview.title}</td>
					<td>${listReview.content}</td>
				</tr>
		</c:forEach>
		</tbody>

	</table>
</body>
</html>