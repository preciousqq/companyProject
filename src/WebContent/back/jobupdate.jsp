<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="westos.whq.vo.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>job</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="../css/bootstrap.min.css">
	<script type="text/javascript"  src="../js/jquery-2.2.0.min.js"></script>
	<script type="text/javascript" src="../js/bootstrap.min.js"></script>
	<script type="text/javascript" src="../js/holder.min.js"></script>
	<style type="text/css">
		body {background: #eee;}
		.row {margin-bottom: 10px;}
	</style>
</head>
<body>
<%  
	Job j=(Job)request.getAttribute("info");
	String datetime=new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime()); //获取系统时间 
%>

	<div class="container">
	
		<div class="row">
			<div class="col-sm-1" style="background:#0000FF;">1</div>
			<div class="col-sm-1" style="background:#8A2BE2;">2</div>
			<div class="col-sm-1" style="background:#A52A2A;">3</div>
			<div class="col-sm-1" style="background:#7FFF00;">4</div>
			<div class="col-sm-1" style="background:#D2691E;">5</div>
			<div class="col-sm-1" style="background:#DC143C;">6</div>
			<div class="col-sm-1" style="background:#008000;">7</div>
			<div class="col-sm-1" style="background:#4B0082;">8</div>
			<div class="col-sm-1" style="background:#FF0000;">9</div>
			<div class="col-sm-1" style="background:#00FF7F;">10</div>
			<div class="col-sm-1" style="background:#FFFF00;">11</div>
			<div class="col-sm-1" style="background:#EE82EE;">12</div>
		</div>
		<div class="row">
			<div class="col-sm-1"></div>
			<div class="col-sm-2"></div>
			<div class="col-sm-2"></div>
			<div class="col-sm-2">
				<h4 class="text-center">就业修改</h4>
			</div>
			<div class="col-sm-2"></div>
			<div class="col-sm-2"></div>
			<div class="col-sm-1"></div>
		</div>
		<div class="row" style="background:#ccc;">
			<div class="col-sm-12"></div>
		</div>
		
		
		<form action="letjob" method="post">
			<div class="row">
			<div class="col-sm-1"></div>
			<div class="col-sm-2"></div>
			<div class="col-sm-2 text-right">编号：</div>
			<div class="col-sm-2 text-left"><input type="text" name="id" value="<%=j.getId() %>" readonly>
			</div>
			<div class="col-sm-2"></div>
			<div class="col-sm-1"></div>
		</div>
		<div class="row">
			<div class="col-sm-1"></div>
			<div class="col-sm-2"></div>
			<div class="col-sm-2 text-right">学员姓名：</div>
			<div class="col-sm-2 text-left"><input type="text" name="xueyuan" value="<%=j.getXueyuan() %>">
			</div>
			<div class="col-sm-2"></div>
			<div class="col-sm-1"></div>
		</div>
		<div class="row">
			<div class="col-sm-1"></div>
			<div class="col-sm-2"></div>
			<div class="col-sm-2 text-right">毕业院校：</div>
			<div class="col-sm-2 text-left"><input type="text" name="school" value="<%=j.getSchool() %>">
		    </div>
			<div class="col-sm-2"></div>
			<div class="col-sm-1"></div>
		</div>
		<div class="row">
			<div class="col-sm-1"></div>
			<div class="col-sm-2"></div>
			<div class="col-sm-2 text-right">专业：</div>
			<div class="col-sm-2 text-left"><input type="text" name="zhuanye" value="<%=j.getZhuanye() %>">
		    </div>
			<div class="col-sm-2"></div>
			<div class="col-sm-1"></div>
		</div>
		<div class="row">
			<div class="col-sm-1"></div>
			<div class="col-sm-2"></div>
			<div class="col-sm-2 text-right">工作单位：</div>
			<div class="col-sm-2 text-left"><input type="text" name="danwei" value="<%=j.getDanwei() %>">
		    </div>
			<div class="col-sm-2"></div>
			<div class="col-sm-1"></div>
		</div>
		<div class="row">
			<div class="col-sm-1"></div>
			<div class="col-sm-2"></div>
			<div class="col-sm-2 text-right">薪资说明：</div>
			<div class="col-sm-2 text-left"><textarea rows="5" cols="50" name="xinzi"><%=j.getXinzi() %></textarea>
		    </div>
			<div class="col-sm-2"></div>
			<div class="col-sm-1"></div>
		</div>
		<div class="row">
			<div class="col-sm-1"></div>
			<div class="col-sm-2"></div>
			<div class="col-sm-2 text-right">发布人：</div>
			<div class="col-sm-2 text-left"><input type="text" name="jadmin" value="<%=j.getJadmin() %>">
		    </div>
			<div class="col-sm-2"></div>
			<div class="col-sm-1"></div>
		</div>
		<div class="row">
			<div class="col-sm-1"></div>
			<div class="col-sm-2"></div>
			<div class="col-sm-2 text-right">发布日期：</div>
			<div class="col-sm-2 text-left"><input type="text" name="jdate"  value="<%=datetime %>"  readonly>
		    </div>
			<div class="col-sm-2"></div>
			<div class="col-sm-1"></div>
		</div>
			<div class="row" style="background:#ccc;">
			<div class="col-sm-12"></div>
		</div>
		<div class="row">
			<div class="col-sm-1"></div>
			<div class="col-sm-2"></div>
			<div class="col-sm-2"></div>
			<div class="col-sm-2 text-center "><input type="submit" value="保存">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="取消"></div>
			<input type="hidden" name="tag" value="u">
			<div class="col-sm-2"></div>
			<div class="col-sm-1"></div>
		</div>
	   </form>
	</div>
</body>
</html>