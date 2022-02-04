<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>노래 이상형 월드컵</title>
</head>
<link href="./css/bchy.css" rel="stylesheet">
<meta name="viewport" content="width=device-width, maximum-scale=1.0, minimum-scale=1, user-scalable=yes,initial-scale=1.0" />
<body>
<header>
	<form action="index.jsp" method="post">
		<input class="head" type="submit" value="Team Busriders">
	</form>
</header>
<%!
int a = 0;
int b = 1;
int number = 0;
String song_str;
String num_str;
int num[] = new int[64]; //랜덤으로 0~64까지 저장하는 배열
int selectNum = 0;
boolean flag = false;
%>

<%
int round = Integer.parseInt(request.getParameter("round"));
//노래 유튜브 주소
String[] song = {"https://www.youtube.com/embed/sqgxcCjD04s","https://www.youtube.com/embed/R78C57LXd2E",
		"https://www.youtube.com/embed/FT1pDacyuVk","https://www.youtube.com/embed/rgms0zs6SZc","https://www.youtube.com/embed/H2ncCtw2YxA",
		"https://www.youtube.com/embed/yQ7X3mUl_F0","https://www.youtube.com/embed/3laLavGghc0","https://www.youtube.com/embed/3eKFF4cCBaY",
		"https://www.youtube.com/embed/n8iOhuv05As","https://www.youtube.com/embed/SK6Sm2Ki9tI","https://www.youtube.com/embed/WPdWvnAAurg",
		"https://www.youtube.com/embed/yU05gNCDeVE","https://www.youtube.com/embed/Uz0PppyT7Cc","https://www.youtube.com/embed/X3PFu82F_S8",
		"https://www.youtube.com/embed/RmuL-BPFi2Q","https://www.youtube.com/embed/v7bnOxV4jAc","https://www.youtube.com/embed/eUVwTjyi9n4",
		"https://www.youtube.com/embed/i7cSojnHbBw","https://www.youtube.com/embed/TgOu00Mf3kI","https://www.youtube.com/embed/NJR8Inf77Ac",
		"https://www.youtube.com/embed/TqIAndOnd74","https://www.youtube.com/embed/iOKRYIMhaDk","https://www.youtube.com/embed/0-q1KafFCLU",
		"https://www.youtube.com/embed/-_7HwAXKycU","https://www.youtube.com/embed/y59fHpNjTxI","https://www.youtube.com/embed/ArMWbOglay8",
		"https://www.youtube.com/embed/cHG7JZjL6Zc","https://www.youtube.com/embed/bmivgWKzGkM","https://www.youtube.com/embed/ENHQjGSK2T0",
		"https://www.youtube.com/embed/rUwVCFBk61s","https://www.youtube.com/embed/bepF3wff4GE","https://www.youtube.com/embed/SKs72A3PANQ",
		"https://www.youtube.com/embed/moETFD_H8EE","https://www.youtube.com/embed/LCBsfLaJl-A","https://www.youtube.com/embed/IgPcbE--mMA",
		"https://www.youtube.com/embed/m3DZsBw5bnE","https://www.youtube.com/embed/wEQpfil0IYA","https://www.youtube.com/embed/1q_t6RNuH8c",
		"https://www.youtube.com/embed/YlY2euBAZfM","https://www.youtube.com/embed/HzOjwL7IP_o","https://www.youtube.com/embed/D1PvIWdJ8xo",
		"https://www.youtube.com/embed/j1xkYT9nxHU","https://www.youtube.com/embed/udGwca1HBM4","https://www.youtube.com/embed/-5q5mZbe3V8",
		"https://www.youtube.com/embed/mOo8bVzN9M8","https://www.youtube.com/embed/7tkbzxa8MFQ","https://www.youtube.com/embed/mLCsbacHxA8",
		"https://www.youtube.com/embed/x7l0kLFN6Oc","https://www.youtube.com/embed/TUo_XGiPmvI","https://www.youtube.com/embed/tg2uF3R_Ozo",
		"https://www.youtube.com/embed/c9RzZpV460k","https://www.youtube.com/embed/IECYwwoAg44","https://www.youtube.com/embed/Z8E0apklL2w",
		"https://www.youtube.com/embed/cQuqs2LrXbo","https://www.youtube.com/embed/2COAu1l6hUQ","https://www.youtube.com/embed/sCmcSBsTxQc",
		"https://www.youtube.com/embed/lNvBbh5jDcA","https://www.youtube.com/embed/R3Fwdnij49o","https://www.youtube.com/embed/Wj7tpcw_LRI",
		"https://www.youtube.com/embed/o1MtOu0Z4Hg","https://www.youtube.com/embed/0tkgGcnRNTE","https://www.youtube.com/embed/F4K1mMDlsj0",
		"https://www.youtube.com/embed/KCpWMEsiN3Q","https://www.youtube.com/embed/VpaUh_BGqE0"};
	//랜덤으로 노래 영상이 나올 수 있게 0~63까지 배열에 랜덤 저장				
for(int i=0; i<num.length; i++){
	do{
		selectNum = (int)(Math.random()*64)+1;
		for(int j=0; j<i; j++){
			if(selectNum == num[j]){
				flag = true;
				break;
			}
			flag = false;
		}
	}while(flag);
	num[i] = selectNum;
}
	
for(int i = 0; i<song.length; i++){
	if(i==0)
		song_str = "'" + song[i] + "'";
	else
		song_str += ",'" + song[i] + "'";
}
for(int i = 0; i<num.length; i++){
	if(i==0)
		num_str = "'" + num[i] + "'";
	else
		num_str += ",'" + num[i] + "'";
}
	
%>


<div class = "container">
<div class="div-style" id="div-round">
	노래 월드컵 <%=round %> 강
</div>
<script type="text/javascript">
var a = 0;
var b = 1;
var count = <%=round%>/2;
var number = 64;
var song = [<%=song_str%>];
var num = [<%=num_str%>];
var arrRound = new Array(count);
var nextRound = new Array();
var result;
	function nextLeft(){
		if(number-64 < count - 1){
			song[number] = song[parseInt(num[a])];
			num[number] = num[a];
			number += 1;
			a += 2;
			b += 2;
			document.getElementById("left").src = song[parseInt(num[a])];
			document.getElementById("right").src = song[parseInt(num[b])];
		}else if(number-64 == count - 1){
			if(count == 4){
				document.getElementById("div-round").innerHTML = "노래 월드컵 준결승";
			}else if(count == 2){
				document.getElementById("div-round").innerHTML = "노래 월드컵 결승";
			}else if(count == 1){
				document.getElementById("ss").value = song[a];
				document.getElementById("songmain").submit();
			}else{
				document.getElementById("div-round").innerHTML = "노래 월드컵 " + count + " 강";
			}
			song[number] = song[parseInt(num[a])];
			num[number] = num[a];
			number = 64;
			count = count / 2;
			a = 64;
			b = 65;
			document.getElementById("left").src = song[a];
			document.getElementById("right").src = song[b];
		}
	}
	function nextRight(){
		if(number-64 < count - 1){
			song[number] = song[parseInt(num[b])];
			num[number] = num[b];
			number += 1;
			a += 2;
			b += 2;
			document.getElementById("left").src = song[parseInt(num[a])];
			document.getElementById("right").src = song[parseInt(num[b])];
		}else if(number-64 == count - 1){
			if(count == 4){
				document.getElementById("div-round").innerHTML = "노래 월드컵 준결승";
			}else if(count == 2){
				document.getElementById("div-round").innerHTML = "노래 월드컵 결승";
			}else if(count == 1){
				document.getElementById("ss").value = song[b];
				document.getElementById("songmain").submit();
			}else{
				document.getElementById("div-round").innerHTML = "노래 월드컵 " + count + " 강";
			}
			song[number] = song[parseInt(num[b])];
			num[number] = num[b];
			number = 64;
			count = count / 2;
			a = 64;
			b = 65;
			document.getElementById("left").src = song[a];
			document.getElementById("right").src = song[b];
		}
	}
</script>
<form id="songmain" action="worldresult.jsp" method="post">
	<div class = "rect">
		<iframe src="<%=song[num[a]]%>" id="left" name="ileft" frameborder="0" margin = 5px width = "700wh"	height = "500"></iframe>
		<iframe src="<%=song[num[b]]%>" id="right" name="iright" frameborder="0" margin = 5px width = "700wh"	height = "500"></iframe>
	</div>
	<input type="hidden" id="ss" name="result" value="">
	<div class = "btnflex">
	<div class = "btn a" id = "div-lbtn">
		<button type="button" onclick="nextLeft()" id="lbtn">선택</button>
	</div>
	<div class = "btn b" id = "div-rbtn">
		<button type="button" onclick="nextRight()" id="rbtn">선택</button>
	</div>
	</div>
</form>
</div>
</body>
</html>