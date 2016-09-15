<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML5>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加图书信息</title>
    
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
	text-decoration: none;
	}
	#test1,#test2{
		position:relative;
		margin-left:20%;
	}
	#test15{
		margin-left:20%;
		color:#FFF;
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
	#test3,#test4,#test5,#test8,#test6,#test7,#test9,#test10,#test11{
		border: 1px solid green;
		padding-top:8px;
		padding-left:3px;
		padding-right:3px;
		padding-bottom:2px;
		box-shadow: 5px 5px 10px #030;
		border-radius:10px;
		background-color:#F0F0F0;
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
right:35%;
top: 20%;
font-size:50px;
font-family: 华文琥珀;
text-shadow: 5px 5px 5px #030;
transition:transform 2s,color 2s;
color: brown;
}
#test12{
box-shadow: 5px 5px 10px #030;
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
30%  {transform:rotate(40deg);color:red;}
40%  {transform:rotate(-35deg);}
50%  {transform:rotate(30deg);color:purple;}
60%  {transform:rotate(-25deg);}
70%  {transform:rotate(20deg);color:yellow;}
80%  {transform:rotate(-15deg);}
90%  {transform:rotate(10deg);color:blue;}
100% {transform:rotate(-5deg);}
}

</style>
  </head>
  
  <body bgcolor="#3083EB">
   <s:form action="addBook"  id="test1">
    	<s:textfield name="book.bookname" label="书名" maxlength="30" id="test3"/>
    	<s:textfield name="book.page" label="页数" maxlength="7" id="test4"/>
    	<s:textfield name="book.bookauthor" label="作者" maxlength="30" id="test5"/>
    	<s:textfield name="book.price" label="价格" maxlength="7" id="test6"/>
    	<div id="test13">读万卷书~行万里路~</div>
    	<s:textfield name="book.total" label="库存量" maxlength="7" id="test7"/>
    	<s:textfield name="book.ISBN" label="ISBN号" maxlength="13" id="test8"/>
    	<s:textfield name="book.bookpress" label="出版社" maxlength="20" id="test9"/>
    	<s:textfield name="book.pubdate" label="出版日期" maxlength="20" id="test10"/>
    	<s:textarea name="book.introdurce" label="简介" cols="80px" rows="10px" id="test11"/>
    	<s:submit value="添加" id="test12"/>
    </s:form>
    <div id="test14">*欢迎*</div>
    <br />
    <a href="<%=path%>/listbooks.action" id="test2">查看现有图书</a>
    <br /><br />
    <div id="test15">
    ${requestScope.req}
    </div>
  </body>
</html>
