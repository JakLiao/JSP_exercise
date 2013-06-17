<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
<%-- 
<jsp:include>与include指令的区别  
（1）<%@ include file>是直接包含源代码，<jsp:include>包含请求的HTML代码，并且支持JSP表达式和Struts应用中的请求模式。 
（2）通过<jsp:include>包含一个JSP页面，在包含的页面中相关的response操作都被忽略，也就是说当前操作不能通过response对象重定向到其他页面。如果用<%@include>包含的JSP页面，在该页面中所有的response操作都会正常运行。 
（3）<jsp:include>元素请求代码时，可以带参数，而<%@include>就不可以带参数。 
（4）从执行速度角度上讲，<%@include>比<jsp:include>请求速度快，因为<%@include>仅处理一个请求，而<jsp:include>处理两个请求。 
（5）从实际应用角度上讲，<%@include>用于检测用户是否登录、网站标识或网站的一些静态不变的信息；而<jsp:include>用于发送一个请求，并接收返回的HTML，并可以加入参数。
--%>

	<div>
		<%@ include file="/inc.jspf" %>
	</div>
	<jsp:include page="/inc.jsp" flush="true" />
</body>
</html>