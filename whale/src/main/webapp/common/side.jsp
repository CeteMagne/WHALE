<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="side">
	<div class="side-inner">
		<ul class="nav flex-column">
			<li class="nav-item"><a href="home.jsp" class="nav-link"><img src="<%=request.getContextPath()%>/img/logo-whaleblue.svg" alt="" class="icon"></a></li>
			<li class="nav-item"><a href="home.jsp" class="nav-link"><img src="<%=request.getContextPath()%>/img/home.svg" alt=""></a></li>
			<li class="nav-item"><a href="search.jsp" class="nav-link"><img src="<%=request.getContextPath()%>/img/search.svg" alt=""></a></li>
			<li class="nav-item"><a href="notification.jsp" class="nav-link"><img src="<%=request.getContextPath()%>/img/notification.svg" alt=""></a></li>
			<li class="nav-item"><a href="profile.jsp" class="nav-link"><img src="<%=request.getContextPath()%>/img/profile.svg" alt=""></a></li>
			<li class="nav-item"><a href="post.jsp" class="nav-link"><img src="<%=request.getContextPath()%>/img/post.svg" alt="" class="post-tweet"></a></li>
			<li class="nav-item my-icon"><img src="<%=request.getContextPath()%>/img_uploaded/user/sample-person.jpg" alt="" class="js-popover" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="right" data-bs-html="true" data-bs-content="<a href='profile.php'>プロフィール</a><br><a href='../sign-out.php'>ログアウト</a>"></li>
		</ul>
	</div>
</div>