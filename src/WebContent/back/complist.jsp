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
	 List<Comp> all=(List<Comp>)request.getAttribute("info");
	 Iterator<Comp> iter=all.iterator();
	 Comp cp=null;
%>
<table class="table table-bordered">
	<thead>
		<td>编号</td>
		<td>公司名称</td>
		<td>项目名称</td>
		<td>项目简介</td>
		<td>发布日期</td>
		<td>发布人</td>
		<td>修改</td>
		<td>删除</td>
	</thead>
<% 
    while(iter.hasNext())
    {

    	cp=iter.next();
 %> 
     <tr>
 		<td><%=cp.getId() %></td>
 		<td><%=cp.getName() %></td>
 		<td><%=cp.getXiangmu() %></td>
 		<td><%=cp.getNeirong() %></td>
 		<td><%= new SimpleDateFormat("yyyy-MM-dd").format(cp.getCdate()) %></td>
 		<td><%=cp.getCadmin() %></td>
 
 		<td><a href="letcomp?tag=<%="f" %>&id=<%=cp.getId()%>"><img src="../images/update.gif"></a></td>
		<td><a href="letcomp?tag=<%="r" %>&id=<%=cp.getId()%>"><img src="../images/delete.gif"></a></td>
 	</tr>
<%
    }
%>
</table>
</body>
</html>