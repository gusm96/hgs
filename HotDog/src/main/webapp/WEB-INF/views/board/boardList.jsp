<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:if test="${type == 1 }">
				<title>공지 게시글</title>
			</c:if>
			<c:if test="${type == 2 }">
				<title>이벤트 게시글</title>
			</c:if>
<%@ include file="/WEB-INF/views/frame/pageSet.jsp"%>
<style type="text/css">
html, body {
	margin: 0;
	height: 100%;
	overflow: hidden;
}

#container {
	height: 100%;
}
</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/frame/nav.jsp" %>
	<div id="container" class="row">
		<div class="col-md-2"></div>
		<div class="col-md-8" style="margin-top: 50px;">
					<c:if test="${type == 1 }">
				<h3>공지 게시글</h3>
			</c:if>
			<c:if test="${type == 2 }">
				<h3>이벤트 게시글</h3>
			</c:if>
			<table class="table">
				<thead>
					<tr>
						<th scope="col">게시글 번호</th>
						<th scope="col">제목</th>
						<th scope="col">작성일</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${board}" var="b">
						<tr>
							<th scope="row">${b.adminBoardIdx}</th>
							<td><a
								href="${pageContext.request.contextPath}/board/list/detail/${b.adminBoardIdx}">${b.title}</a></td>
							<td><c:out value="${fn:substring(b.createDate, 0, 10)}"/></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>