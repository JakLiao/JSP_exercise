<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>compute area of triangle</title>
</head>
<body>
	<form name="form1" id="form1" action="Triangle.jsp">
		<table>
			<tr>
				<th colspan="3" align="center">计算三角形面积</th>
			</tr>
			<tr>
				<td>输入三角形a边</td>
				<td><input type="text" name="a" id="a" /></td>
			</tr>
			<tr>
				<td>输入三角形b边</td>
				<td><input type="text" name="b" id="b" /></td>
			</tr>
			<tr>
				<td>输入三角形c边</td>
				<td><input type="text" name="c" id="c" /></td>
			</tr>
			<tr>
				<td>    <input type="submit" name="submit" value="开始计算" />  
				</td>
				<td>    <input type="reset" name="reset" value="重置" /> 
				</td>
			</tr>
		</table>
	</form>
</body>
</html>