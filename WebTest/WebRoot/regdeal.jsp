<%@ page language="java" import="java.util.*" pageEncoding="UTF8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'regdeal.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  
  <body>
    <%
String name = new String(request.getParameter("name").getBytes("ISO8859_1"),"UTF8");
String password = new String(request.getParameter("password").getBytes("ISO8859_1"),"UTF8");
String passwdConfirm = new String(request.getParameter("passwdConfirm").getBytes("ISO8859_1"),"UTF8");
String sex = new String(request.getParameter("sex").getBytes("ISO8859_1"),"UTF8");
String career = new String(request.getParameter("career").getBytes("ISO8859_1"),"UTF8");
String hobby = new String(request.getParameter("hobby").getBytes("ISO8859_1"),"UTF8");
String introduce = new String(request.getParameter("introduce").getBytes("ISO8859_1"),"UTF8");
request.setAttribute("name",name);
request.setAttribute("password",password);
request.setAttribute("passwdConfirm",passwdConfirm);
request.setAttribute("sex",sex);
request.setAttribute("career",career);
request.setAttribute("hobby",hobby);
request.setAttribute("introduce",introduce);
%>
<!--<jsp:forward page="showRegisterInfo.jsp"/>-->
	<table>
		<tr>
			<td align="right">用户名：</td>
			<td> <%=request.getAttribute("name") %></td>
		</tr>
		<tr>
			<td align="right">密码：</td>
			<td><%=request.getAttribute("password") %></td>
		</tr>
		<tr>
			<td align="right">密码确认：</td>
			<td><%=request.getAttribute("passwdConfirm") %></td>
		</tr>
		<tr>
			<td align="right">性别：</td>
			<td>
				<%=request.getAttribute("sex") %>
			</td>
		</tr>
		<tr>
			<td align="right">职业：</td>
			<td>
				<%=request.getAttribute("career") %>
			</td>
		</tr>
		<tr>
			<td align="right">个人爱好：</td>
			<td>
				<input type="checkbox" name="hobby" value="computer" />电脑网络
				<input type="checkbox" name="hobby" value="movie" />影视娱乐
				<input type="checkbox" name="hobby" value="card" />棋牌娱乐
				<br />
				<input type="checkbox" name="hobby" value="reading" />读书读报
				<input type="checkbox" name="hobby" value="vine" />美酒佳肴
				<input type="checkbox" name="hobby" value="paint" />绘画书法
			</td>
		</tr>
		<tr>
			<td align="right">个人说明：</td>
			<td>
				<textarea name="introduce" rows="8" cols="50"><%=request.getAttribute("introduce") %></textarea>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center"> 
				<input type="submit" name="Submit" value="提交" />
				<input type="reset" name="Submit2" value="重置" />
			</td>
		</tr>
	</table>
  </body>
</html>
