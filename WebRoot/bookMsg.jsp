<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>修改图书信息</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
	*{
	font-size:16px;
	margin:0;
	font-weight: bold;
	text-decoration: none;
	}
	#test1,#test2{
		position:relative;
		margin-left:20%;
	}
	
	a{
		background-color:green;
		border:1px solid grey;
		color: #FFF;
		padding-top:4px;
		padding-left:2px;
		padding-right:2px;
		padding-bottom:4px;
		border-radius: 8px;
		font-size:16px;
	}
	#test3,#test4,#test5,#test8{
		border: 2px solid grey;
		color:grey;
		padding-top:8px;
		padding-left:3px;
		padding-right:3px;
		padding-bottom:2px;
	}
	#test6,#test7,#test9,#test10,#test11{
	border: 2px solid green;
	padding-top:8px;
		padding-left:3px;
		padding-right:3px;
		padding-bottom:2px;
	}
	a:HOVER{
	background-color:red;
}
#test13:HOVER{
transform:rotate(360deg);
color:green;
}
#test13{
position:absolute;
right:40%;
top: 20%;
font-size:50px;
font-family: 华文琥珀;
text-shadow: 5px 5px 5px grey;
transition:transform 2s,color 2s;
color: brown;
}
#test12{
box-shadow: 5px 5px 10px grey;
}
#test14{
position:absolute;
right:40%;
bottom:10%;
font-size:50px;
text-shadow: 5px 5px 5px grey;
animation-name:myfirst;
animation-iteration-count:infinite;
animation-direction:alternate;
animation-play-state:running;
animation-duration:8s;
animation-timing-function:linear;
color:green;
}
@keyframes myfirst
{
0%   {transform:rotate(0deg);}
10%  {transform:rotate(50deg);}
20%  {transform:rotate(-45deg);}
30%  {transform:rotate(40deg);}
40%  {transform:rotate(-35deg);}
50%  {transform:rotate(30deg);color:purple;}
60%  {transform:rotate(-25deg);}
70%  {transform:rotate(20deg);}
80%  {transform:rotate(-15deg);}
90%  {transform:rotate(10deg);}
100% {transform:rotate(-5deg);}
}

</style>
</head>

<body background="image/t01d584b1b55661de4f.jpg">
	<s:form action="updateBook" id="test1">
		<s:textfield name="book.bookname" label="书    名" value="%{book.bookname}"
			readonly="true"  id="test3"/>
		<s:textfield name="book.page" label="页    数" value="%{book.page}"
			readonly="true" id="test4"/>
		<s:textfield name="book.bookauthor" label="作    者"
			value="%{book.bookauthor}" readonly="true" id="test5"/>
		<s:textfield name="book.price" label="价    格" value="%{book.price}"
			maxlength="7" id="test6"/>
			<div id="test13">浓浓书香味儿~~~</div>
			
		<s:textfield name="book.total" label="库存量" value="%{book.total}"
			maxlength="7" id="test7"/> 
		<s:textfield name="book.ISBN" label="ISBN  号" value="%{book.ISBN}"
			readonly="true" maxlength="13" id="test8"/>
		<s:textfield name="book.bookpress" label="出 版 社"
			value="%{book.bookpress}" maxlength="20" id="test9"/>
		<s:textfield name="book.pubdate" label="出版日期" value="%{book.pubdate}"
			maxlength="20" id="test10"/>
		<s:textarea name="book.introdurce" label="图书简介"
			value="%{book.introdurce}" cols="100em" rows="10em" id="test11"/>
		<s:hidden name="book.id" value="%{book.id}"></s:hidden>
		<s:submit value="提交修改" id="test12"/>
	</s:form>
	<div id="test14">welcom~</div>
	<br />
	<a href="<%=request.getContextPath() %>/listbooks.action" id="test2">查看现有图书</a>
	<br />
	${requestScope.req}
	</div>
</body>
</html>
