<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags"%>

<html>
<head>
<link href="css/product.css" rel="stylesheet" type="text/css" />
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<title>Sign in with Facebook example</title>
</head>
<body>
	<tag:notloggedin>
		<div id="login">
			<p>
				<!-- <a class="facebook-before"></a> -->
			<form class="facebook" action="./signin">
				<input class="facebook" type="submit" name="login"
					value="Login Using Facebook"></input>
			</form>
		</div>
	</tag:notloggedin>
	<tag:loggedin>
		<h1>Welcome ${facebook.name} (${facebook.id})</h1>
		<form action="./post" method="post">
			<textarea cols="80" rows="2" name="message"></textarea>
			<input type="submit" name="post" value="statuses" />
		</form>
		<a href="./logout">logout</a>
	</tag:loggedin>
</body>
</html>