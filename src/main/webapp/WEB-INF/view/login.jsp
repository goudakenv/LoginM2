<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
<style>
/* スタイルのリセット */
body, h1, p, form, input, a {
    margin: 0;
    padding: 0;
}

body {
    font-family: 'Arial', sans-serif;
    background-color: #f5f5f5;
    text-align: center;
    padding: 20px;
}

h1 {
    color: #333;
}

form {
    margin-top: 20px;
}

p {
    margin-bottom: 10px;
}

input {
    padding: 8px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
}

input[type="submit"] {
    background-color: #4caf50;
    color: #fff;
    cursor: pointer;
}

input[type="submit"]:hover {
    background-color: #45a049;
}

a {
    text-decoration: none;
    color: #007bff;
}

a:hover {
    text-decoration: underline;
}

</style>
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