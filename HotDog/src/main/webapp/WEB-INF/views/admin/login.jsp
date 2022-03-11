<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
	<title>핫핫!! 핫한 개들의 수다</title>
	<%@ include file="/WEB-INF/views/frame/pageSet.jsp" %>
	
	<style>
		.container{
			position:absolute;
			border-radius:20px;
			width: 260px;
			text-align:center;
			display: flex;
			flex-direction: column;
			top: 50%;
			left: 40%;
			padding:40px;
			background-color: #ffffff;
		}
		
		#loginForm {
			display : none;
			padding : 0;
		}
		#loginByEmail{
			background-color: gray;
			border-radius: 5px;
			text-align: center;
			font-weight : bold;
			font-size: 22px;
			line-height: 60px;
			margin-bottom: 20px;
		}
		.select-box {
			width: 100%;
			height: 60px;
		}
		
		.login-background-photo{
			position: absolute;
			width: 100%;
		    left: 0;
		    top: 0;
		    max-height: 1009px; 
		}
	</style>
</head>
<body>	
	<img class="login-background-photo" alt="" src="images/login_background.jpg">
	<h2>핫한 개들의 수다</h2>
	<div class="container">
		<form class="form-signin " method="post" id="loginForm" action="login"> 
			<label for="inputEmail" class="sr-only"></label>	
			<input type="email"  id="email" name="email" class="form-control" style="width: 100%; height: 40px;" placeholder="email을 입력해주세요." required autofocus>
			
			<label for="inputPassword" class="sr-only"></label>
			<input type="password" id="password" name="password" class="form-control" style="width: 100%; height: 40px;" placeholder="password를 입력해주세요." required>
				
			<div style="margin:10px 0; font-size: 20px;">
				<span class="checkbox">
					<label>	
						<input type="checkbox" name="saveEmail"><span>로그인 상태 유지</span> 
					</label>
				</span>
				<button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
			</div>
		</form>
	</div> <!-- /container -->
</body>
</html>
