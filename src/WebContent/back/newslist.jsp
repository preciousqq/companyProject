<%@page import="java.util.logging.SimpleFormatter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="westos.whq.vo.*,java.util.*,java.text.*"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="../css/bootstrap.min.css">
	<script type="text/javascript"  src="../js/jquery-2.2.0.min.js"></script>
	<script type="text/javascript" src="../js/bootstrap.min.js"></script>
	<script type="text/javascript" src="../js/holder.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<%
	 List<News> all=(List<News>)request.getAttribute("info");
	 Iterator<News> iter=all.iterator();
	 News ne=null;
%>
<table class="table table-bordered">
	<thead>
		<td>新闻编号</td>
		<td>类别</td>
		<td>标题</td>
		<td>内容</td>
		<td>发布日期</td>
		<td>发布人</td>
		<td>修改</td>
		<td>删除</td>
	</thead>
<% 
    while(iter.hasNext())
    {

    	ne=iter.next();
 %> 
     <tr>
 		<td><%=ne.getId() %></td>
 		<td><%=ne.getLeibie() %></td>
 		<td><%=ne.getBiaoti() %></td>
 		<td><%=ne.getNeirong()%></td>
 		<td><%= new SimpleDateFormat("yyyy-MM-dd").format(ne.getNdate()) %></td>
 		<td><%=ne.getName() %></td>
 
 		<td><a href="letnews?tag=<%="f" %>&id=<%=ne.getId()%>"><img src="../images/update.gif"></a></td>
		<td><a href="letnews?tag=<%="r" %>&id=<%=ne.getId()%>"><img src="../images/delete.gif"></a></td>
 	</tr>
<%
    }
%>
</table>
</body>
</html>