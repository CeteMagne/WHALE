<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">

<head>
	<%@ include file="/common/head.html"%>
	<title>ログイン画面 / WHALE</title>
	<meta name="description" content="ログイン画面です">
</head>

<body class="signup text-center">
	<main class="form-signup">

		<%
		String status = (String) request.getAttribute("status");
		if (status == null) {
			status = "";
		}
		%>

		<%=status%>

		<form action="/whale/SignUp" method="POST">
			<img src="<%=request.getContextPath()%>/img/logo.svg" alt="" class="logo">
			<h1>WHALEにログイン</h1>
			<input type="name" class="form-control" name="name" placeholder="ユーザー名、例)whale123" required autofocus> <input type="password" class="form-control" name="password" placeholder="パスワード" required>
			<button class="w-100 btn btn-lg" type="submit" name="mode" value="signin">ログイン</button>
			<p class="mt-3 mb-2">
				<a href="<%=request.getContextPath()%>/sign-up.jsp">会員登録する</a>
			</p>
			<p class="mt-2 mb-3 text-muted">&copy; 2023</p>
		</form>
	</main>
	<%@ include file="/common/foot.jsp"%>
</body>

</html>