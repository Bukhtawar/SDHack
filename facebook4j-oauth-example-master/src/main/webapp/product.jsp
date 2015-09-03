<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags" %>

<html>
<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<link href="css/product.css" rel="stylesheet" type="text/css" />

<div>
	<div class="product">
		<h1>${product.name}</h1>
		<img src="${product.image}" width="300"/>
	</div>
	<div class="login">
		<tag:notloggedin>
		  <a href="signin">Sign in with Facebook</a>
		</tag:notloggedin>
		<tag:loggedin>
		  Welcome <b>${facebook.name}</b></br>
		<a href="./logout">logout</a>
		</tag:loggedin>
	</div>
</div>
</head>
</html>