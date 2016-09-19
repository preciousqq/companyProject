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
	 List<Job> all=(List<Job>)request.getAttribute("info");
	 Iterator<Job> iter=all.iterator();
	 Job j=null;
%>
<table class="table table-bordered">
	<thead>
		<td>编号</td>
		<td>学员</td>
		<td>学校</td>
		<td>专业</td>
		<td>就业单位</td>
		<td>薪资</td>
		<td>发布日期</td>
		<td>发布人</td>
		<td>修改</td>
		<td>删除</td>
	</thead>
<% 
    while(iter.hasNext())
    {

    	j=iter.next();
 %> 
     <tr>
 		<td><%=j.getId() %></td>
 		<td><%=j.getXueyuan() %></td>
 		<td><%=j.getSchool() %></td>
 		<td><%=j.getZhuanye() %></td>
 		<td><%=j.getDanwei() %></td>
 		<td><%=j.getXinzi() %></td>
 		<td><%= new SimpleDateFormat("yyyy-MM-dd").format(j.getJdate()) %></td>
 		<td><%=j.getJadmin() %></td>
 
 		<td><a href="letjob?tag=<%="f" %>&id=<%=j.getId()%>"><img src="../images/update.gif"></a></td>
		<td><a href="letjob?tag=<%="r" %>&id=<%=j.getId()%>"><img src="../images/delete.gif"></a></td>
 	</tr>
<%
    }
%>
</table>
</body>
</html>