<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 작성</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>

<!-- include libraries(jQuery, bootstrap) -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
	rel="stylesheet" />
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- include summernote css/js -->
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css"
	rel="stylesheet" />
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
<script>
	$(document).ready(function() {
		$("#summernote").summernote({
			placeholder : "게시글을 작성하세요.",
			tabsize : 2,
			height : 500,
		});
	});
</script>
</head>
<body>
	<div class="row">
		<div class="col-md-8">
			<form method="post">
				<div class="row">
					<div class="col-md-2">제목</div>
					<div class="col-md-8" style="padding: 0">
						<input type="text" name="title" required style="width: 100%" />
					</div>
					<div class="col-md-2" style="padding: 0">
						<select name="adminBoardListIdx" id="adminBoardListIdx"
							class="form-select" aria-label="Default select example">
							<option selected>게시글 유행을 선택하세요.</option>
							<option value="1">이벤트</option>
							<option value="2">공지사항</option>
						</select>
					</div>
				</div>
				<textarea id="summernote" name="content"></textarea>
				<div class="d-grid gap-2 d-md-flex justify-content-md-end">
					<button class="btn btn-primary me-md-2" type="submit">
						작성하기</button>
					<button class="btn btn-primary" type="reset">리셋</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>