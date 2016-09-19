<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>员工管理</title>
<style>
body { background:#EAEAEA;}
#box { width:1002px;

	   margin:auto;
	   font-family:"仿宋";
	   font-size:16px;
	   color:#609;
	   font-weight:600;
	   line-height:35px;
	   
}

fieldset { -moz-border-radius:10px;
			width:980px;
		   border:1px solid #09F;
		   border-radius:10px;
		   margin:auto;
}

#zhiwuinfo input { width:120px;
}
#box span { margin-left:10px;}
legend { color:#909;}
</style>
</head>
<body>
<div id="box">
<form>
	<span>档案编号：<input type="text"></span>
	<fieldset>
    	<legend>档案信息</legend>
 		
      <table width="992" height="156">
          <tr>
            <td width="87" height="36">姓&nbsp;名：</td>
            <td width="168"><input type="text" name="userName"></td>
            <td width="90">性&nbsp;别：</td>
            <td width="170"><input type="radio" name="sex" value="男" checked="checked">男 <input type="radio" name="sex" value="女">女</td>
            <td width="88">出生日期：</td>
            <td width="169"><input type="date"></td>
            <td width="123" rowspan="3">照片</td>
          </tr>
          <tr>
            <td height="36">民&nbsp;族：</td>
            <td>
            	<select name="minzu">
                	<option>汉&nbsp;族</option>
                    <option>回&nbsp;族</option>
                    <option>维吾尔族</option>
                    <option></option>
                </select>
            </td>
            <td>籍&nbsp;贯：</td>
            <td><input type="text" name="jiguan"></td>
            <td>身份证号：</td>
            <td><input type="text" name="shenfen"></td>
          </tr>
          <tr>
            <td height="36">学&nbsp;历：</td>
            <td>
            	<select name="xuelie">
                	<option>专&nbsp;科</option>
                    <option>本&nbsp;科</option>
                    <option>研究生&nbsp;</option>
                    <option>博&nbsp;士</option>
                </select>
            </td>
            <td>专&nbsp;业：</td>
            <td><input type="text" name="zhuanye"></td>
            <td>党&nbsp;员：</td>
            <td><input type="radio" name="dangyuan" value="是">是<input type="radio" name="dangyuan" value="否" checked="checked">否</td>
          </tr>
          <tr>
            <td height="36">邮政编码：</td>
            <td><input type="text" name="youbian" />
           </td>
            <td>婚姻状况：</td>
            <td><input type="radio" name="hun" value="未婚" checked="checked">未婚 <input type="radio" name="hun" value="已婚">已婚</td>
            <td>家庭地址：</td>
            <td colspan="2"><input type="text" style="width:300px;" /></td>
          </tr>
      </table>
	</fieldset>
    
   	<fieldset id="zhiwuinfo">
   	  <legend>职务信息</legend>
 		
      <table width="990" height="194">
          <tr>
            <td width="86" height="36">部&nbsp;门：</td>
            <td width="144">
            	<select name="bumen">
                    <option>办公室</option>
                    <option>市场部</option>
                    <option>技术部</option>
                    <option>财务部</option>
                    <option>后勤部</option>
                </select>
            </td>
            <td width="86">职&nbsp;务：</td>
            <td width="145"><select name="zhiwu">
              <option>总经理</option>
              <option>市场专员</option>
              <option>咨询师</option>
              <option>职业规划师</option>
              <option>市场总监</option>
              <option>技术工程师</option>
              <option>办公室文员</option>
              <option>市场代理</option>
            </select></td>
            <td width="86">技术方向：</td>
            <td width="144"><select name="zhiwu2">
              <option>Linux C、C++开发</option>
              <option>Linux企业运维</option>
              <option>Android应用程序开发</option>
              <option>web前端开发</option>
              <option>java EE应用程序开发</option>
            </select></td>
            <td width="86">职称</td>
             <td width="144"><select name="zhiwu2">
              <option>工程师初级</option>
              <option>工程师中级</option>
              <option>工程师高级</option>
            </select></td>
          </tr>
          <tr>
            <td height="36">入职日期：</td>
            <td><input type="text" name="youbian2" />
            </td>
            <td>用工形式：</td>
            <td><select name="xingshi">
              <option>专职</option>
              <option>兼职</option>
            </select></td>
            <td>离职日期：</td>
            <td><input type="text" name="lizhiriqi" /></td>
            <td>离职原因：</td>
            <td><input type="text" name="lizhiruanyin" /></td>
          </tr>
          <tr>
            <td height="36">合同开始：</td>
            <td><input type="text" name="youbian" />
           </td>
            <td>合同结束：</td>
            <td><input type="text" name="youbian3" /></td>
            <td>转正日期：</td>
            <td><input type="text" name="lizhiriqi2" /></td>
            <td>工龄：</td>
            <td><input type="text" name="lizhiruanyin2" /></td>
          </tr>
         <tr>
            <td height="36">账号卡号：</td>
            <td><input type="text" name="youbian" />
           </td>
            <td>发卡银行：</td>
            <td><input type="text" name="youbian3" /></td>
            <td>社会保险：</td>
            <td><input type="text" name="lizhiriqi2" /></td>
            <td>养老保险：</td>
            <td><input type="text" name="lizhiruanyin2" /></td>
          </tr>
            <tr>
            <td height="36">医疗保险：</td>
            <td><input type="text" name="youbian" />
           </td>
            <td>失业保险：</td>
            <td><input type="text" name="youbian3" /></td>
            <td>工伤保险：</td>
            <td><input type="text" name="lizhiriqi2" /></td>
            <td>公积金号：</td>
            <td><input type="text" name="lizhiruanyin2" /></td>
          </tr>
      </table>
	</fieldset>
    
   	<fieldset id="zhiwuinfo">
   	  <legend>个人信息</legend>
 		
      <table width="990" height="118">
          <tr>
            <td width="86" height="36">固定电话：</td>
            <td width="144"><input type="text" name="youbian4" /></td>
            <td width="86">移动电话：</td>
            <td width="145"><input type="text" name="youbian5" /></td>
            <td width="86">QQ：</td>
            <td width="144"><input type="text" name="lizhiriqi3" /></td>
            <td width="86">E_Mail:</td>
            <td width="177"><input type="text" name="lizhiruanyin3" /></td>
          </tr>
          <tr>
            <td height="36">第二学历：</td>
            <td><input type="text" name="youbian2" />
            </td>
            <td>第二专业：</td>
            <td><input type="text" name="youbian6" /></td>
            <td>毕业日期：</td>
            <td><input type="text" name="lizhiriqi" /></td>
            <td>毕业学校：</td>
            <td><input type="text" name="lizhiruanyin" /></td>
          </tr>
          <tr>
            <td height="36">电脑水平：</td>
            <td><input type="text" name="youbian" />
           </td>
            <td>特长：</td>
            <td><input type="text" name="youbian3" /></td>
            <td>爱好：</td>
            <td colspan="3"><input type="text" name="lizhiriqi4" /></td>
          </tr>
         <tr>
            <td height="36">入党日期：</td>
            <td><input type="text" name="youbian" />
           </td>
            <td>邮政编码：</td>
            <td><input type="text" name="youbian3" /></td>
            <td>联系地址：</td>
            <td colspan="3"><input type="text" name="lizhiriqi2" /></td>
        </tr>
    
      </table>
	</fieldset>
    <p align="center"><input type="submit"  value="保 存">&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="取 消"></p>
</form>
</div>
</body>
</html>