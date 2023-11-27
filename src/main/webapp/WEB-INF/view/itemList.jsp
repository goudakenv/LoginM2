<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="domain.Post"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>プロフィール</title>
</head>
<body>
	<h1>プロフィール</h1>
	<form action="" method="post">
	
		ネーム: <input type="text" name="username" required><br>
				 
趣味: <input type="text" name="name" required><br>

要望: <input type="text" name="age" required><br>
		
		メッセージ<br>
		<textarea name="message" rows="4" cols="50" required></textarea>
		<br> 
		
		<input type="submit" value="送信">
		
	</form>
	
	
	
	<hr>
	
	${user.loginId }
		<form action="/Login2M/item/out" method="post">
		<input type="submit" value="ログアウト" />
	</form>
	
	
	
	<h2>プロフィール一覧</h2>



	<%
	// リクエスト属性から投稿データのリストを取得
	Object attribute = request.getAttribute("postList");

	// もしも attribute が List<Post> であることが確定している場合
	if (attribute instanceof List<?>) {
		List<Post> postList = (List<Post>) attribute;

		// 投稿データを表示
		for (Post post : postList) {
	%>
	<p>
		番号:
		<%=post.getId()%></p>
		
			<p>
		ネーム:
		<%=post.getUsername()%></p>
		
	<p>
		趣味:
		<%=post.getName()%></p>
		
		<p>
		要望:
		<%=post.getAge()%></p>
		
	<p>
		メッセージ:
		<%=post.getMessage()%></p>
		
		<p>
		投稿時刻:
		<%=post.getCreatedAt()%></p>
	<hr>
	<%
	}
	} else {
	// もしも attribute が List<Post> でない場合のエラーハンドリングなど
	}
	%>

</body>
</html>