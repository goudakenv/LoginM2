<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
</head>
<body>
	<h1>ログイン</h1>
	<c:if test="${!empty error}">
		<p>${error}</p>
	</c:if>
	<form action="" method="post">
		<p>ログインID：
		  <input type="text" name="id"/>
		</p>
		<p>ログインPASS：
		  <input type="text" name="pass"/>
		</p>
		<p>
			<input type="submit" value="ログイン">
		</p>
	</form>
	<a href="register">新規登録</a>




</body>
</html>