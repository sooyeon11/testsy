<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>게시물 상세</title>
</head>
<body>
<table>
		<thead>
			<tr>
				<td>게시번호</td><td>${detail.idx}</td>
				<td>닉네임</td><td>${detail.id}</td>
				<td>조회수</td><td>${detail.hit}</td>
				<td>날짜</td><td>${detail.regidate}</td>
				<td>제목</td><td>${detail.title}</td>
			</tr>
		</thead>

		<tbody>
				<tr>
					<td>내용</td><td>${detail.content}</td>
				</tr>
		</tbody>
	</table>
		<a href="${path}update?idx=${detail.idx}" role="button">수정</a>
		<a href="${path}delete?idx=${detail.idx}" role="button">삭제</a>
</body>
</html>