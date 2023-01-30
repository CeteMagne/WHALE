<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">

<head>
<%@ include file="/common/head.html"%>
<title>ホーム画面 / WHALE</title>
<meta name="description" content="ホーム画面です">
</head>

<body class="home">
	<div class="container">
		<%@ include file="/common/side.jsp"%>
		<div class="main">
			<div class="main-header">
				<h1>ホーム</h1>
			</div>

			<!-- 投稿エリア -->
			<div class="post">
				<div class="my-icon">
					<img src="<%=request.getContextPath()%>/img_uploaded/user/sample-person.svg" alt="">
				</div>
				<div class="input-area">
					<form action="post.php" method="post" enctype="multipart/form-data">
						<textarea name="body" placeholder="いまどうしてる？" maxlength="140"></textarea>
						<div class="bottom-area">
							<div class="mb-0">
								<input type="file" name="image" class="form-control form-control-sm">
							</div>
							<button class="btn" type="submit">投稿する</button>
						</div>
					</form>
				</div>
			</div>

			<!-- 仕切りエリア -->
			<div class="ditch"></div>

			<!-- 投稿一覧エリア -->
			<p class="p-3">投稿がありません</p>
			<div class="post-list">
			</div>
		</div>
	</div>
	<%@ include file="/common/foot.jsp"%>
</body>

</html>