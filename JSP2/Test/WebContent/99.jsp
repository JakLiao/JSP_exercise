<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="1" style="border-collapse:collapse;">
<%
int i, j;
for(i = 1; i < 10; i++ )
{
	out.print("<tr>");
	for(j = 1; j < 10; j++)
	{
		out.print("<td align=\"right\">");
		out.print(i*j);
		out.print("</td>");
	}
	out.print("</tr>");
}
out.print("<tr>");
%>
</table>
</body>
</html>