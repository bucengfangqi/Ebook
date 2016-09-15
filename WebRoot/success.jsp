<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://jsptags.com/tags/navigation/pager" prefix="pg"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>欢迎</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript">
		 function delcfm() {
        		if (!confirm("确认要删除？")) {
           			 window.event.returnValue = false;
        }
    }
	</script>
<style type="text/css">
* {
	border-collapse: collapse;
	border-color: green;
	padding-top: 12px;
	padding-bottom: 4px;
	padding-left: 4px;
	padding-right: 4px;
	text-decoration: none;
	color: #FFF;
	border-color: #FFF;
	font-size: 18px;
}

#test15,#test16,#test2 {
	border-radius: 18px;
}

#test1 {
	color: #000;
	font-size: 24px;
	font-family: 华文琥珀;
	text-shadow: 5px 5px 5px grey;
}

#test3 {
	background-color: #630;
}

#test4 {
	background-color: #960;
}

#test5 {
	background-color: #990;
}

#test6 {
	background-color: #660;
}

#test7 {
	background-color: #C39;
}

#test8 {
	background-color: #63C;
}

#test9 {
	background-color: #F99;
}

#test10 {
	background-color: #C96;
}

#test11 {
	background-color: #6F9;
	color: #000;
}

#test12 {
	background-color: #663;
}

#test13 {
	background-color: red;
}

#test14 {
	background-color: #3083EB;
	line-height: 24px;
}

#test15 {
	background-color: #390;
}

#test16 {
	background-color: #360;
	font-family: 华文琥珀;
	font-weight: lighter;
}

#test17,#test18 {
	color: green;
}
#test19{
	margin-bottom:200px;
}
#test20{
	margin-bottom:0px;
	text-align:center;
	color:blue;
	font-family:楷体;
	font-size:16px;
	font-weight:bold;
}
#test21{
	background-color:green;
	height: 2em;
	text-align:center;
}
a:HOVER {
	text-decoration: underline;
}
#mess,#mess1{
position:absolute;
	width:10px;
	height:2px;
	background-color:red;
	border-radius: 10px;
	box-shadow: 3px 3px 10px grey;
}
</style>

</head>

<body background="image/t01d584b1b55661de4f.jpg" onload="init()">
<div id="test19">
	<div id="test1" align="center">
		亲爱的${loginSign}，欢迎您~
		 <a href="clean.action" id="test17">[注销]</a>&nbsp;
		 <a href="listbooks.action" id="test18">[刷新页面]&nbsp;${requestScope.req}</a>
	</div><br />
	
	<table align="center" border="1px solid 0FFF" style="width:80%;">
		<tr>
			<th id="test16" colspan="10" align="center">库存图书</th>
		</tr>
		
		<tr>
			<td id="test15" align="left" colspan="10">
				<a href="<%=path%>/addpage.action">+添加新书</a>
			</td>
		</tr>
		
		<tr>
			<td id="test3">书名</td>
			<td id="test4">作者</td>
			<td id="test5">价格</td>
			<td id="test6">库存量</td>
			<td id="test7">ISBN号</td>
			<td id="test8">出版社</td>
			<td id="test9">出版日期</td>
			<td id="test10">页数</td>
			<td id="test11" colspan="2">操作</td>
		</tr>
		
		<s:iterator value="bookList">
			<tr>
				<td id="test3"><s:property value="bookname" /></td>
				<td id="test4"><s:property value="bookauthor" /></td>
				<td id="test5"><s:property value="price" /></td>
				<td id="test6"><s:property value="total" /></td>
				<td id="test7"><s:property value="ISBN" /></td>
				<td id="test8"><s:property value="bookpress" /></td>
				<td id="test9"><s:property value="pubdate" /></td>
				<td id="test10"><s:property value="page" /></td>
				<td id="test12">
					<a href="<%=path%>/findById.action?id=${id}">修改信息</a>
				</td>
				<td id="test13">
					<a href="<%=path%>/removeBook.action?id=${id}" onclick="delcfm()">删除</a>
				</td>
			</tr>
			
			<tr>
				<td id="test14" colspan="10"><s:property value="introdurce"/></td>
			</tr>
		</s:iterator>
			<tr>
				<td id="test21" colspan="10"><s:property value="占个地方"/>三更灯火五更鸡，正是男儿读书时。黑发不知勤学早，白首方悔读书迟。</td>
			</tr>
	</table>
</div>
	<div id="test20">
		到底翻不动啦！亲~  —_—|||
	</div>
</body>
</html>
