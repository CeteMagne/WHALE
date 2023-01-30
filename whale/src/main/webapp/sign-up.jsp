<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ja">

<head>
	<%@ include file="/common/head.html"%>
	<title>会員登録画面 / WHALE</title>
	<meta name="description" content="会員登録画面です">
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
			<h1>アカウントを作る</h1>
			<input type="text" class="form-control" name="nickname" placeholder="ニックネーム" maxlength="50" required autofocus> <input type="text" class="form-control" name="name" placeholder="ユーザー名、例)whale123" maxlength="50" required> <input type="email" class="form-control" name="email" placeholder="メールアドレス" maxlength="254" required> <input type="password" class="form-control" name="password" placeholder="パスワード" minlength="4" maxlength="128" required>
			<button class="w-100 btn btn-lg" type="submit" name="mode" value="signup">登録する</button>
			<p class="mt-3 mb-2">
				<a href="<%=request.getContextPath()%>/sign-in.jsp">ログインする</a>
			</p>
			<p class="mt-2 mb-3 text-muted">&copy; 2023</p>
		</form>
	</main>
</body>

</html>