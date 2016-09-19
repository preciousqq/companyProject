<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta  charset="UTF-8">
<title>信息添加</title>
<style>
body { 
	background:url(../images/top_bg.jpg);
}

#box { width:600px;
	   border:0px solid #FC0;
	   margin-left:auto;
	   margin-right:auto;
	   font-family:Verdana, Geneva, sans-serif;
	   font-size:16px;
	   color:#00C;
	   font-weight:500;
}
</style>
</head>
<body>
<div id="box">
<form action="letxibie" method="post">
  <h4 align="center" style="letter-spacing:10px;">系别添加</h4>
  <hr width="100%" color="#CCFF99" size="2" />
  <table width="535" height="127" border="0" align="center">
  <tr>
    <td width="358" align="right" valign="middle">系别编号：</td>
    <td width="426"><input type="text" name="x_id" size="20"></td>
  </tr>
  <tr>
    <td align="right" valign="middle">系别名称：</td>
    <td><input type="text" name="x_name" size="20"></td>
  </tr>
  <tr>
    <td align="right" valign="middle">负责人：</td>
    <td><input type="text" name="e_id"  size="20"></td>
  </tr>

  <tr align="center">

    <td colspan="2"><input type="submit" value="保存">&nbsp;&nbsp;
    <input type="reset" value="取消">
    <input type="hidden" name="tag" value="A">
    </td>
 </tr>
</table>

</form>
  <hr width="100%" color="#CCFF99" size="2" />
  </div>
</body>
</html>