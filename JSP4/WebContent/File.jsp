<%@ page language="java" import="java.io.File" import="java.util.Date" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>File</title>

<%String path = request.getSession().getServletContext().getRealPath("/");  %>
</head>
<body>
<jsp:useBean id="fileBean" scope="page" class="tri.FilePath"/>
<%=path %>
<%
fileBean.getFileMessage(path);
File[] list2 = fileBean.getList();
for(int k = 0;k < fileBean.getLen(); k++)
{
%>
	<hr>
	<%=k+1%>:文件名<%=list2[k].getName()%>
	<br>&nbsp; &nbsp; &nbsp;
	路径：<%=list2[k].getPath()%>
	<br>&nbsp; &nbsp; &nbsp;
	是否为文件：<%=list2[k].isFile()%>
	<br>&nbsp; &nbsp; &nbsp;
	是否可读：<%=list2[k].canRead()%>
	<%
	if(list2[k].isFile())
	{
	%>
	<br>&nbsp; &nbsp; &nbsp;
	文件大小:<%=list2[k].length() %>bytes
	<br>&nbsp; &nbsp; &nbsp;
	 最后更改日期：  <%=new Date(list2[k].lastModified()) %>
	<br>
	 <%
	}
	else
	{
	%>
	<br>&nbsp; &nbsp; &nbsp;   
	该文件是目录
	<%
	}
}
%>
</body>
</html>