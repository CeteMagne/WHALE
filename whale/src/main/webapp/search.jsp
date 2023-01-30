<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">

<head>
<%@ include file="/common/head.html"%>
<title>検索画面 / WHALE</title>
<meta name="description" content="検索画面です">
</head>

<body class="home search text-center">
	<div class="container">
		<%@ include file="/common/side.jsp"%>
		<div class="main">
			<div class="main-header">
				<h1>検索</h1>
			</div>

			<!-- 検索エリア -->
			<form action="SearchServlet" method="get">
				<div class="search-area">
					<input type="text" class="form-control" placeholder="キーワード検索" name="keyword" value="">
					<button type="submit" class="btn">検索</button>
				</div>
			</form>

			<!-- 仕切りエリア -->
			<div class="ditch"></div>

			<!-- 投稿一覧エリア -->
			<p class="p-3">投稿がありません</p>
			<div class="tweet-list">
			</div>
		</div>
	</div>
	<%@ include file="/common/foot.jsp"%>
</body>
</html>