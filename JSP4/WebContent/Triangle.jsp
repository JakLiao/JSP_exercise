<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="triangle" scope="session" class="tri.Triangle" />
	<%
	String area = null;
	try{
		double a = Double.parseDouble(request.getParameter("a"));
		double b = Double.parseDouble(request.getParameter("b"));
		double c = Double.parseDouble(request.getParameter("c"));
		triangle.setA(a);
		triangle.setB(b);
		triangle.setC(c);
		area = triangle.circleArea();
	}catch(Exception e)
	{
		area = "请输入正确的边长";
	}
	%>
	<table>
		<tr>
			<td colspan="2">  你给出的三角形三边分别是：  </td>
		</tr>
		<tr>
			<td align="right">  边A是：  </td>
			<td>  <jsp:getProperty name="triangle" property="a" />  
			</td>
		</tr>
		<tr>
			<td align="right">  边B是： </td>
			<td>  <jsp:getProperty name="triangle" property="b" />  
			</td>
		</tr>
		<tr>
			<td align="right">  边C是：  </td>
			<td>  <jsp:getProperty name="triangle" property="c" />  
			</td>
		</tr>
		<tr>
			<td>这三条边能构成三角形吗？ </td>
			<td>  <jsp:getProperty name="triangle" property="isTri" />  
			</td>
		</tr>
		<tr>
			<td align="right">  由这三条边构成的面积是  </td>
			<td> 
			<%=area %> 
			</td>
		</tr>
	</table>
</body>
</html>