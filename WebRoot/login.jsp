<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html5>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
	#test{
	position: absolute;
	left:40%;
	top:20%;
	}
	#test1{
	width:180px;
	font-size:18px;
	border-radius:5px;
	}
	*{
	text-decoration:none;
	}
	a:HOVER{
	text-decoration:underline;
	}
	#test2{
	border:1px solid #000;
	padding-left:45px;
	padding-right:40px;
	background-color:#FFF;
	box-shadow: 5px 5px 10px #030;
	border-radius:10px;
	}
	
	</style>
	<script src="script/jquery-1.7.2.js"></script>
	<script type="text/javascript">
	
	</script>
  </head>
  
  <body id="test" bgcolor="#3083EB">
  <div id="test2">
    <form action="test.action" method="post">
    <h2>登录页面</h2>
    	<input type="text" name="username" placeholder="请输入昵称"  id="test1" required="true" required oninvalid="setCustomValidity('亲爱的~账号别忘了哦~')" oninput="setCustomValidity('');"/><br/><br/>
    	<input type="password" name="password" placeholder="请输入密码" id="test1" required="true" required oninvalid="setCustomValidity('亲爱的~密码别忘了哦~')" oninput="setCustomValidity('');"/><br/><br/>
    	<input type="submit" value="提交" id="test1"><br/><br/>
    	<font color="grey">${requestScope.req}</font>
    </form>
    </div>
  </body>
</html>
