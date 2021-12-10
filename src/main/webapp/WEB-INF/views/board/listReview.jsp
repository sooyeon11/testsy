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
				<td>no</td>
				<td>id</td>
				<td>title</td>
				<td>content</td>
				<td>img</td>
				<td>hit</td>
				<td>regidate</td>
			</tr>
		</thead>

		<tbody>
		<c:forEach var="listReview" items="${list}">
				<tr>
					<td>${listReview.idx}</td>
					<td>${listReview.id}</td>
					<td>
						<a href="${path}detailReview?idx=${listReview.idx}">${listReview.title}</a>
					</td>
					<td>${listReview.content}</td>
					<td>${listReview.img}</td>
					<td>${listReview.hit}</td>
					<td>${listReview.regidate}</td>
				</tr>
		</c:forEach>
		</tbody>

	</table>
</body>
</html>