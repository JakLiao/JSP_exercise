<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

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
    request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("username");
	String password = request.getParameter("password");
	String passwdConfirm = request.getParameter("passwdConfirm");
	String sex = request.getParameter("sex");
	String career = request.getParameter("career");
	String[] hobby = request.getParameterValues("hobby");
	String introduce = request.getParameter("introduce");
	%>
	<table>
		<tr>
			<td align="right">用户名：</td>
			<td> <%=name %></td>
		</tr>
		<tr>
			<td align="right">密码：</td>
			<td><%=password %></td>
		</tr>
		<tr>
			<td align="right">密码确认：</td>
			<td><%=passwdConfirm %></td>
		</tr>
		<tr>
			<td align="right">性别：</td>
			<td>
				<%=sex %>
			</td>
		</tr>
		<tr>
			<td align="right">职业：</td>
			<td>
				<%=career %>
			</td>
		</tr>
		<tr>
			<td align="right">个人爱好：</td>
			<td>
				<% 
				if(hobby != null){
					int size=java.lang.reflect.Array.getLength(hobby);
					for(int i = 0; i < size; i++)
					{
						out.println(hobby[i]+"<br />");
					}
				}
				else
				{
					out.println("没有爱好"+"<br />");
				}
				%>
			</td>
		</tr>
		<tr>
			<td align="right">个人说明：</td>
			<td>
				<%=introduce %>
			</td>
		</tr>
	</table>
  </body>
</html>
