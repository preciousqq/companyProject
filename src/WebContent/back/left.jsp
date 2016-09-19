<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<script type="text/javascript">
	function showc()
	{
	var c1=document.getElementById('commodity');
		
		if(c1.style.display=='none')
		{
		   c1.style.display='block';
		}
		else
		{
	    	c1.style.display='none';
		}

	}
		function showo()
	{
	var c1=document.getElementById('orderForm');
		
		if(c1.style.display=='none')
		{
		   c1.style.display='block';
		}
		else
		{
	    	c1.style.display='none';
		}

	}
			function showa()
	{
	var c1=document.getElementById('admin');
		
		if(c1.style.display=='none')
		{
		   c1.style.display='block';
		}
		else
		{
	    	c1.style.display='none';
		}

	}
			
			function showu()
			{
			var c1=document.getElementById('user');
				
				if(c1.style.display=='none')
				{
				   c1.style.display='block';
				}
				else
				{
			    	c1.style.display='none';
				}

			}
			function showe()
			{
			var c1=document.getElementById('empForm');
				
				if(c1.style.display=='none')
				{
				   c1.style.display='block';
				}
				else
				{
			    	c1.style.display='none';
				}

			}
			
			function shown()
			{
			var c1=document.getElementById('news');
				
				if(c1.style.display=='none')
				{
				   c1.style.display='block';
				}
				else
				{
			    	c1.style.display='none';
				}

			}
			function showj()
			{
			var c1=document.getElementById('job');
				
				if(c1.style.display=='none')
				{
				   c1.style.display='block';
				}
				else
				{
			    	c1.style.display='none';
				}

			}
			
			function showcp()
			{
			var c1=document.getElementById('comp');
				
				if(c1.style.display=='none')
				{
				   c1.style.display='block';
				}
				else
				{
			    	c1.style.display='none';
				}

			}

</script>
<style type="text/css">
* { border:0px;
	padding:0px;
	margin:0px;
}

body{
	background:url(../images/top_bg.jpg);
}
#left { margin-left:30px;
		margin-top:20px;
		text-align:center;
		color:#FFF;
		font-weight:bold;
	
}
#left ul {
	list-style:none;
 	margin-left:20px;

}

#letf ul a { text-decoration:none;}
#left ul li { background:#006; 
			width:150px; 
			line-height:30px;
			margin-top:2px;
			border-top:2px solid #F60;
			border-left:10px solid #F60;
			border-right:2px solid #F60;
			letter-spacing:2px;
			border-radius:5px;
			}


#commodity { display:none; text-align:left;}

#commodity ul { 
  list-style-image:url(../images/img5.gif);
}
#commodity ul li { background:none;
			border:0px;
			line-height:20px;
}
#commodity ul a { text-decoration:none;}
#orderForm { display:none; text-align:left;}
#orderForm ul { 
  list-style-image:url(../images/img5.gif);
}

#orderForm ul li { 
	border:0px;
	background:none;
	line-height:20px;
	 }
#orderForm ul a { text-decoration:none;}
#admin { display:none;text-align:left;}
#admin ul { 
  list-style-image:url(../images/img5.gif);
}

#admin ul li { background:none;
			 border:0px;
				line-height:20px;
			}
 #admin ul a { text-decoration:none;}
 
 #user { display:none;text-align:left;}
#user ul { 
  list-style-image:url(../images/img5.gif);
}

#user ul li { background:none;
 				line-height:20px;
			  border:0px;
			  }
#user ul a { text-decoration:none;}

 #empForm { display:none;text-align:left;}
#empForm ul { 
  list-style-image:url(../images/img5.gif);
}

#empForm ul li { background:none;
				border:0px;
			line-height:20px;
				 }
#empForm ul a { text-decoration:none;}

#news { display:none;text-align:left;}
#news ul { 
  list-style-image:url(../images/img5.gif);
}

#news ul li { background:none;
				border:0px;
			line-height:20px;
				 }
#news ul a { text-decoration:none;}

#job { display:none;text-align:left;}

#job ul { 
  list-style-image:url(../images/img5.gif);
}

#job ul li { background:none;
				border:0px;
			line-height:20px;
				 }
#job ul a { text-decoration:none;}

#comp { display:none;text-align:left;}

#comp ul { 
  list-style-image:url(../images/img5.gif);
}

#comp ul li { background:none;
				border:0px;
			line-height:20px;
				 }
#comp ul a { text-decoration:none;}
</style>
</head>

<body>
<div id="left">
	<ul>
    	<li onclick="showc()">&nbsp;系别班级管理&nbsp;</li>
         <div id="commodity">
            <ul>
                <li><a href="xibieadd.jsp" target="right">系别信息添加</a></li>
                <li><a href="letbook?tag=<%="ff" %>&keyword=<%="" %>&ch=<%=""%>" target="right">系别信息列表</a></li>
                <li><a href="bookadd.jsp" target="right">班级信息添加</a></li>
                <li><a href="letbook?tag=<%="ff" %>&keyword=<%="" %>&ch=<%=""%>" target="right">班级信息列表</a></li>
            </ul>
        </div>
               <li onclick="showo()">&nbsp;学员信息管理&nbsp;</li>
          <div id="orderForm">
              <ul>
              	  <li><a href="ordershopadd.jsp" target="right">学信息员增加</a></li>
                  <li><a href="letordershop?tag=<%="ff" %>&keyword=<%="" %>&ch=<%=""%>" target="right">学员信息列表</a></li>
              </ul>
          </div>
        <li onclick="showe()">&nbsp;员工信息管理&nbsp;</li>
          <div id="empForm">
              <ul>
              	  <li><a href="ordershopadd.jsp" target="right">员工信息增加</a></li>
                  <li><a href="letordershop?tag=<%="ff" %>&keyword=<%="" %>&ch=<%=""%>" target="right">员工信息列表</a></li>
              </ul>
          </div>
        <li onclick="showu()">&nbsp;客户管理&nbsp;</li>
	  	<div id="user">
            <ul>
                <li><a href="useradd.jsp" target="right">&nbsp;客户添加&nbsp;</a></li>
                <li><a href="letuser?tag=<%="ff"%>&keyword=<%="" %>&ch=<%=""%>" target="right">&nbsp;客户列表&nbsp;</a></li>
               
            </ul>
        
		</div>
        <li onclick="showa()">管理员管理</li>
        <div id="admin">
            <ul>
                <li><a href="admin.jsp" target="right">管理员添加</a></li>
                <li><a href="letadminlist?keyword=<%="" %>&ch=<%=""%>" target="right">管理员列表</a></li>
            </ul>
        
		</div>
	  <li onclick="shown()">新闻管理</li>
        <div id="news">
            <ul>
                <li><a href="newsAdd.jsp" target="right">新闻添加</a></li>
                <li><a href="letnews?tag=<%="ff"%>&keyword=<%="" %>&ch=<%=""%>" target="right">新闻列表</a></li>
            </ul>
        
		</div>
		 <li onclick="showj()">就业管理</li>
        <div id="job">
            <ul>
                <li><a href="jobadd.jsp" target="right">就业添加</a></li>
                <li><a href="letjob?tag=<%="ff"%>&keyword=<%="" %>&ch=<%=""%>" target="right">就业列表</a></li>
            </ul>
        
		</div>
		
		 <li onclick="showcp()">项目管理</li>
        <div id="comp">
            <ul>
                <li><a href="compadd.jsp" target="right">项目添加</a></li>
                <li><a href="letcomp?tag=<%="ff"%>&keyword=<%="" %>&ch=<%=""%>" target="right">项目列表</a></li>
            </ul>
        
		</div>
    </ul>
</div>



</body>
</html>