<%@ page import="java.util.logging.SimpleFormatter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="westos.whq.vo.*,java.util.*,java.text.*" %>
<%@ page import="westos.whq.servlet.*,westos.whq.factory.*,westos.whq.dbcon.*,westos.whq.dao.*,westos.whq.dao.impl.*,westos.whq.dao.proxy.*" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>西部开源技术中心</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="../css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="../css/stu01.css">
	<script type="text/javascript"  src="../js/jquery-2.2.0.min.js"></script>
	<script type="text/javascript" src="../js/bootstrap.min.js"></script>
	<script type="text/javascript" src="../js/holder.min.js"></script>
	<script type="text/javascript" src="../js/stu01.js"></script>
	

</head>
<body>
 <% 
	 String c1="新闻";
      List<News> all01= new ArrayList<News>();
     try{
	  	all01=Factory.getNewsInstance().FindAll01(c1);
     }catch(Exception e)
     {
    	 e.printStackTrace();
    	 System.out.println("1111");
     }
	 
	  
	 Iterator<News> iter01=all01.iterator();
	 
	 News ne01=null;
	 
	 
	 String c2="公告";
     List<News> all02= new ArrayList<News>();
    try{
	  	all02=Factory.getNewsInstance().FindAll01(c2);
    }catch(Exception e)
    {
   	 e.printStackTrace();
   	 System.out.println("1111");
    }
	 
	  
	 Iterator<News> iter02=all02.iterator();
	 
	 News ne02=null;
	 
	 String c3="招聘";
	 
     List<News> all03= new ArrayList<News>();
    try{
	  	all03=Factory.getNewsInstance().FindAll01(c3);
    }catch(Exception e)
    {
   	 e.printStackTrace();
   	 System.out.println("1111");
    }
	 
	  
	 Iterator<News> iter03=all03.iterator();
	 
	 News ne03=null;
	 
	 List<Job> all04= new ArrayList<Job>();
	    try{
		  	all04=Factory.getJobInstance().FindAll02();
	    }catch(Exception e)
	    {
	   	 e.printStackTrace();
	   	 System.out.println("222");
	    }
		 
		  
		 Iterator<Job> iter04=all04.iterator();
		 
		 Job ne04=null;
		
		 List<Comp> all05= new ArrayList<Comp>();
		    try{
			  	all05=Factory.getCompInstance().FindAll03();
		    }catch(Exception e)
		    {
		   	 e.printStackTrace();
		   	 System.out.println("222");
		    }
			 
			  
			 Iterator<Comp> iter05=all05.iterator();
			 
			 Comp ne05=null;
 %>
	<div class="container">
		
		<div class="row p1 rowback">
			<div class=" col-xs-1 col-md-1"></div>
			<div class="col-xs-10 col-sm-6 col-md-4 text-center">
				<img src="../images/phone.png">&nbsp;&nbsp;<span>客服热线：400-8000-8456&nbsp;&nbsp;|&nbsp;&nbsp;关注我们</span>&nbsp;&nbsp;<img src="../images/weibo.png">&nbsp;&nbsp;<img src="../images/weixin.png">
			</div>
		
			<div class=" col-sm-2 col-md-3"></div>
			<div class="col-xs-12 col-sm-6 col-md-4 text-center"><span>你好！欢迎你来到西部开源技术中心&nbsp;&nbsp;|&nbsp;&nbsp;帮助中心</span></div>
			
		</div>
		<div class="row bodyback">
			<div class="col-sm-1 col-md-1"></div>
			<div class=" col-xs-4 col-sm-3 col-md-2"><img src="../images/logo-4.png" style="width:90%;"></div>
			<div class=" col-xs-4 col-sm-2 col-md-2 font01 text-right">享受开源</div>
			<div class=" col-xs-4 col-sm-2 col-md-2 font01 text-left">体验自由</div>
			<div class=" col-xs-8 col-sm-9 col-md-5 text-center"><img class="img01" src="../images/logo-left.png"></div>
			<div class="col-md-1"></div>
			
		</div>
		<div class="row navback font02">
			<div class="    col-md-1"></div>
			<div class="col-sm-12 col-md-9">
				<ul class="nav nav-pills">
					<!--  <li class="dropdown"><a class="dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" >首&nbsp;&nbsp;&nbsp;&nbsp;页</a>
						<ul class="dropdown-menu">
							<li><a href="#">111</a></li>
							<li><a href="#">222</a></li>
							<li><a href="#">333</a></li>
						</ul>
					</li>
					-->
					<li><a href="index.html">首&nbsp;&nbsp;&nbsp;&nbsp;页</a></li>
					<li><a href="kaiyuan.html">关于开源</a></li>
					<li><a href="jiaoyu.jsp">教育培训</a></li>
					<li><a href="">学习视频</a></li>
					<li><a href="">就业招聘</a></li>
					<li><a href="">考务系统</a></li>
					<li><a href="jishu.html">企业技术支持</a></li>
					<li><a href="telphone.html">联系我们</a></li>
					
				</ul>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-2 visible-md-block visible-lg-block" >
				<form action="">
					<input type="search" style="width:150px; margin-left:-50px; margin-top:7px;" placeholder="搜索"  results="n">
				</form>
			</div>
			
		</div>

		<div class="row huanback">
			<div class="  col-sm-12 col-md-12" style="padding: 0px;">
				<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
			  <ol class="carousel-indicators">
			    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="3"></li>
			  </ol>
			  

  <!-- Wrapper for slides -->
	  <div class="carousel-inner" role="listbox">
		    <div class="item active">
		      <img src="../images/0.jpg" alt="...">
		    </div>
	   		 <div class="item">
	      	<img src="../images/1.jpg" alt="...">
	    
		    </div>
		    <div class="item">
		      <img src="../images/2.jpg" alt="...">
		    
		    </div>
	        <div class="item">
	      	<img src="../images/3.jpg" alt="...">
	  
	    	</div>
	</div>
	 

	<!-- Controls -->
	  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
	 
	   
	  </a>
	  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
	 
	  </a> 
		</div>
	</div>
	</div>
	<div class="row rowback">
	 	<div class="    col-md-1"></div>
	 	<div class="col-sm-12 col-md-9 text-right"><form action="" method="post" id="form01" name="form01">
	 		<label for="txtUser">账&nbsp;&nbsp;号：</label>
	 		<input type="text" name="txtUser" value="">
	 		<label for="txtPwd">密&nbsp;&nbsp;码：</label>
	 		<input type="password" name="txtPwd">
	 		<input type="submit" value="登&nbsp;&nbsp;录" style="background:#9ACD32; color:#fff;">

	 	</form>
		
	 	</div>
	 	<div class="col-md-1"><a href="" style="display:block;margin-top:3px;">快速注册</a></div>
	 	
	 	<div class="col-md-1"></div>
	 </div>
	 <div class="row text-center font03 h1 bodyback">
	 	<div class="    col-md-1"></div>
	 	<div class=" col-sm-12 col-md-10">Education&nbsp;&nbsp;教育培训</div>
	 	<div class="    col-md-1"></div>
	 </div>
	  <div class="row text-center font05 bodyback">
	 	<div class="    col-md-1"></div>
	 	<div class=" col-sm-12 col-md-10">西部开源技术中心独制五大就业方向课程</div>
	 	<div class="    col-md-1"></div>
	 </div>
	  <div class="row text-center bodyback">
	 	<div class="    col-md-1"></div>
	 	<div class="  col-sm-12 col-md-10">LINUX系统运维工程师/JAVA EE工程师/C开发工程师/Android工程师/Web前端工程师</div>
	 	<div class="    col-md-1"></div>
	 </div>

	 <div class="row fangxiang bodyback">
	 	<div class="    col-md-1"></div>
	 	<div class="   col-sm-12 col-md-10"><img src="../images/h-1.png" alt="..."><img src="../images/h-2.png" alt="..."><img src="../images/h-3.png" alt="..."><img src="../images/h-4.png" alt="..."></div>
	 	<div class="    col-md-1"></div>
	 </div>
	 <div class="row bodyback" style="padding-top:50px;">
	 	<div class="    col-md-1"></div>
	 	<div class="col-sm-10 col-md-5">
	 		<button class="btn01 active01"><img src="../images/news.png">&nbsp;&nbsp;新&nbsp;&nbsp;闻</button>
	 		<button class="btn01"><img src="../images/notice.png">&nbsp;&nbsp;公&nbsp;&nbsp;告</button>
	 		<button class="btn01"><img src="../images/job.png">&nbsp;&nbsp;招&nbsp;&nbsp;聘</button>
	 		<div class="news active02 active03">
	 		<div style="width:60%;"><img alt="" src="../images/pic.png" style="width:100%; border:5px solid #ccc;"></div>
	 		<p class="text-right"><img alt="" src="../images/more.png"><a href="">更多新闻</a></p>
<table class="table table-hover">
<% 
    while(iter01.hasNext())
    {

    	ne01=iter01.next();
 %> 
 
      <tr>
     	<td style="padding-left:5px;"><img style="margin-right:10px;" src="../images/img5.gif"><a href="<%=ne01.getId() %>" style="color:#000;"><%=ne01.getBiaoti() %></a></td>
     	<td align="right"><%=new SimpleDateFormat("yyyy-MM-dd").format(ne01.getNdate()) %></td>

 	 </tr>
 		
 		
<%
    }
%>
</table>	
	 		</div>
	 		<div class="news active02">
	 		<div style="width:60%;"><img alt="" src="../images/pic.png" style="width:100%; border:5px solid #ccc;"></div>
	 		<p class="text-right"><img alt="" src="../images/more.png"><a href="">更多新闻</a></p>
	 		<table class="table table-hover">
<% 
    while(iter02.hasNext())
    {

    	ne02=iter02.next();
 %> 
 
      <tr>
     	<td style="width:83%;padding-left:5px;"><img style="margin-right:10px;" src="../images/img5.gif"><a href="<%=ne02.getId() %>" style="color:#000;"><%=ne02.getBiaoti() %></a></td>
     	<td style="width:17%"><%=new SimpleDateFormat("yyyy-MM-dd").format(ne02.getNdate()) %></td>

 	 </tr>
 		
 		
<%
    }
%>
</table>	
	 		</div>
	 		<div class="news active02">
	 		<div style="width:60%;"><img alt="" src="../images/pic.png" style="width:100%; border:5px solid #ccc;"></div>
	 		<p class="text-right"><img alt="" src="../images/more.png"><a href="">更多新闻</a></p>
	 		<table class="table table-hover">
<% 
    while(iter03.hasNext())
    {

    	ne03=iter03.next();
 %> 
 
      <tr>
     	<td style="width:83%;padding-left:5px;"><img style="margin-right:10px;" src="../images/img5.gif"><a href="<%=ne03.getId() %>" style="color:#000;"><%=ne03.getBiaoti() %></a></td>
     	<td style="width:17%"><%=new SimpleDateFormat("yyyy-MM-dd").format(ne03.getNdate()) %></td>

 	 </tr>
 		
 		
<%
    }
%>
</table>	</div>
	
	 	</div>
	 	<div class=" col-sm-10 col-md-5">
	 	<button class="active01">
	 	 <img src="../images/info.png">就业信息</button>
	 		
	 		
	 		<div class="new02">
	 		<table class="table table-hover">
<% 
    while(iter04.hasNext())
    {

    	ne04=iter04.next();
 %> 
 
      <tr>
     	<td style="width:20%;"><img style="margin-right:10px;" src="../images/img5.gif"><%=ne04.getXueyuan() %></td>
     	<td style="width:25%;"><%=ne04.getSchool() %></td>
     	<td style="width:25%;"><%=ne04.getDanwei() %></td>
     	<td style="width:40%;"><%=ne04.getXinzi() %></td>

 	 </tr>
 		
 		
<%
    }
%>
</table>	
	 		</div>
	 		<button class="active01" style="margin-top:10px;"><img src="../images/comp.png">企业案例</button>
	 		<div class="new03">
	 	<table class="table table-hover">
<% 
    while(iter05.hasNext())
    {

    	ne05=iter05.next();
 %> 
 
      <tr>
     	<td><%=ne05.getName() %></td>
 	 </tr>
 	  <tr>
     	<td><%=ne05.getName() %></td>

 	 </tr>
 	  <tr>
     	<td><%=ne05.getNeirong() %></td>
 	 </tr>
 		
 		
<%
    }
%>
</table>			
	 		
	 		</div>
	 
	</div>
	 	<div class="    col-md-1"></div>
	 </div>
	 	<div class="row text-center font03 h1 bodyback">
	 	<div class="    col-md-1"></div>
	 	<div class="col-sm-10 col-md-10">Students&nbsp;&nbsp;优秀学员</div>
	 	<div class="    col-md-1"></div>
	 </div>
	  <div class="row text-center font05 bodyback">
	 	<div class="    col-md-1"></div>
	 	<div class=" col-sm-12 col-md-10">西部开源技术中心成功为多家优秀企业输送人才</div>
	 	<div class="    col-md-1"></div>
	 </div>
	  <div class="row text-center bodyback">
	 	<div class="   col-md-1"></div>
	 	<div class=" col-sm-12 col-md-10">百度 / 网易 / 腾讯 / 京东 / 阿里巴巴 / 小米 / 华为</div>   
	 	<div class="  col-md-1"></div>
	 </div>
	<div class="row bodyback">
	 	<div class="  col-md-1"></div>
	 	<div class=" col-sm-12 col-md-10">
	 	<div class="students">
	 		<div class="students01">
	 		<div class="student"><img src="../images/main_wrapper-1.png" alt="..."><p>学员姓名：</p><p>就业企业：</p></div>
	 		<div class="student"><img src="../images/main_wrapper-2.png" alt="..."><p>学员姓名：</p><p>就业企业：</p></div>
	 		<div class="student"><img src="../images/main_wrapper-3.png" alt="..."><p>学员姓名：</p><p>就业企业：</p></div>
	 		<div class="student"><img src="../images/main_wrapper-4.png" alt="..."><p>学员姓名：</p><p>就业企业：</p></div>
	 		<div class="student"><img src="../images/main_wrapper-5.png" alt="..."><p>学员姓名：</p><p>就业企业：</p></div>
	 		
	 	 </div>
	    </div>
	 	</div>
	 	<div class="   col-md-1"></div>
	 </div>
	  <div class="row">
	 	
	 	<div class=" col-sm-12 col-md-12" style="padding: 0px;">
	 	<div class="comp01 text-left">
	 		<ul>
	 				<li style="margin-left:150px;"><a href="javascript:;" class="activebot">合作企业</a></li>
					<li><a href="javascript:;">教育培训</a></li>
					<li><a href="javascript:;">学习视频</a></li>
					<li><a href="javascript:;">就业招聘</a></li>
					<li><a href="javascript:;">考务系统</a></li>
					<li><a href="javascript:;">企业技术支持</a></li>
					<li><a href="javascript:;">联系我们</a></li>
					<li><a href="javascript:;"></a></li>
					<li ><a style="margin-left:100px; color:#ccff00;" href="javascript:;">更多企业</a></li>
	 		</ul>
	 	</div>
	 	</div>
	 </div>
	 <div class="row">
	 	<div class=" col-sm-12 col-md-12" style="padding: 0px;">
	 		<img src="../images/stubottom01.gif" alt="..." style="width:100%; margin-top:-10px;">
	 	</div>
	 </div>
	
</div>
	
</body>
</html>