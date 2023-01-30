<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">

<head>
<%@ include file="/common/head.html"%>
<title>プロフィール画面 / WHALE</title>
<meta name="description" content="プロフィール画面です">
</head>

<body class="home profile text-center">
	<div class="container">
		<%@ include file="/common/side.jsp"%>
		<div class="main">
			<div class="main-header">
				<h1>太郎</h1>
			</div>

			<!-- プロフィールエリア -->
			<div class="profile-area">
				<div class="top">
					<div class="user">
						<img src="<%=request.getContextPath()%>/img_uploaded/user/sample-person.svg" alt="">
					</div>

					<!-- 相手のページ -->
					<button class="btn btn-sm">フォローを外す</button>
					<button class="btn btn-sm btn-reverse">フォローする</button>
					<!-- 自分のページ -->
					<button class="btn btn-reverse btn-sm" data-bs-toggle="modal" data-bs-target="#js-modal">プロフィール編集</button>

					<div class="modal fade" id="js-modal" tabindex="-1" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<form action="profile.php" method="post" enctype="multipart/form-data">
									<div class="modal-header">
										<h5 class="modal-title">プロフィールを編集</h5>
										<button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
									</div>
									<div class="modal-body">
										<div class="user">
											<img src="<%=request.getContextPath()%>/img_uploaded/user/sample-person.svg" alt="">
										</div>
										<div class="mb-3">
											<label for="" class="mb-1">プロフィール写真</label> <input type="file" class="form-control form-control-sm" name="image">
										</div>

										<input type="text" class="form-control mb-4" name="nickname" value="太郎" placeholder="ニックネーム" maxlength="50" required> <input type="text" class="form-control mb-4" name="name" value="taro" 　placeholder="ユーザー名" maxlength="50" required> <input type="email" class="form-control mb-4" name="email" value="taro@techis.jp" placeholder="メールアドレス" maxlength="254" required> <input type="password" class="form-control mb-4" name="password" value="" placeholder="パスワードを変更する場合ご入力ください" minlength="4" maxlength="128">
									</div>

									<div class="modal-footer">
										<button class="btn btn-reverse" data-bs-dismiss="modal">キャンセル</button>
										<button class="btn" type="submit">保存する</button>
									</div>

								</form>
							</div>
						</div>
					</div>
				</div>

				<div class="name">太郎</div>
				<div class="text-muted">@taro</div>

				<div class="follow-follower">
					<div class="follow-count">1</div>
					<div class="follow-text">フォロー中</div>
					<div class="follow-count">1</div>
					<div class="follow-text">フォロワー</div>
				</div>
			</div>

			<!-- 仕切りエリア -->
			<div class="ditch"></div>

			<!-- 投稿一覧エリア -->
			<p class="p-3">ツイートがありません</p>
			<div class="tweet-list">
			</div>
		</div>
	</div>
	<%@ include file="/common/foot.jsp"%>
</body>

</html>