<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글</title>
<%@include file="/WEB-INF/views/frame/pageSet.jsp"%>
<style type="text/css">
html, body {
	margin: 0;
	height: 100%;
	overflow: hidden;
}

#container {
	height: 100%;
}

.main-container {
	text-align: center;
}
.content{
	text-align: left;
}
</style>
</head>
<body>
		<%@ include file="/WEB-INF/views/frame/nav.jsp"%>
	<div id="container" class="row">
		<div class="col-md-2"></div>
		<div class="col-md-8 main-container" style="margin-top: 50px;">
			<h3>${board.title }</h3>
			<hr>
			<div class="content">${board.content}</div>
			<hr>
			<div>
				<span>작성일 [ ${board.createDate} ]</span> <span>수정일 [
					${board.editDate} ]</span>
			</div>
		</div>
	</div>
</body>
</html>