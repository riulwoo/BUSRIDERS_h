<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>노래 월드컵</title>
</head>
<body>
<link href="./css/ggg.css" rel="stylesheet">
<!-- 노래월드컵 초기화면 -->
<div class="main">
	<h1>Team Busriders</h1>
	<div class = "jumbotron">
	좋아하는 노래 월드컵
	</div>

<form action="worldmain.jsp" method="post">
	<select name="round">
	<option value = "8">8강</option>
	<option value = "16">16강</option>
	<option value = "32">32강</option>
	<option value = "64">64강</option>
	</select>
	<input class = "submit" type="submit" value="시작">
</form>
</div>
<footer>
	<p>@BUSRIDERS making this Web site 2022-01-07</p>
</footer>
</body>
</html>