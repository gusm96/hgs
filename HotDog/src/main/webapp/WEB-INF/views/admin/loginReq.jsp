<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<c:if test="${not empty adminLogger}">
	<script>
		location.href="${pageContext.request.contextPath}/admin/board";
	</script>
</c:if>
<html>
<head>
<title>핫핫!! 핫한 개들의 수다</title>
<%@ include file="/WEB-INF/views/frame/pageSet.jsp"%>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
</head>
<body class="text-center">
	<main class="form-signin">
		<form method="post">
			<h1 class="h3 mb-3 fw-normal">관리자 로그인</h1>

			<div class="form-floating">
				<input type="text" name="id" class="form-control" id="floatingInput"
					required> <label for="floatingInput">아이디</label>
			</div>
			<div class="form-floating">
				<input type="password" name="password" class="form-control"
					id="floatingPassword" required> <label
					for="floatingPassword">비밀번호</label>
			</div>
			<button class="w-100 btn btn-lg btn-primary" type="submit">Sign
				in</button>
		</form>
	</main>
</body>
</html>
