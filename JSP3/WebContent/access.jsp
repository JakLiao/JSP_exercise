<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();
		Cookie cookie = null;
		Cookie cookieip = null;
		Cookie tmp = null;
		if (cookies != null) {
			for (int i = 0; i < cookies.length; i++) {
				if (cookies[i].getName().equals("AccessTime"))
					cookie = cookies[i];
				if (cookies[i].getName().equals("AccessIP"))
					cookieip = cookies[i];
			}
			for (Cookie cookiet : cookies) {
				System.out.println(cookiet.getName() + "\t"+ cookiet.getValue());
			}
		}
		java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat(
				"yyyy-MM-dd HH:mm:ss");
		out.println(sdf.format(new java.util.Date()) + "<br />");
		if ((cookie != null) && (cookieip != null)) {
			out.println("上一次访问的时间：" + cookie.getValue() + " "
					+ cookieip.getValue());
			for (Cookie cookiet : cookies) {
				System.out.println(cookiet.getName() + "\t"
						+ cookiet.getValue());
			}
			cookie.setValue(sdf.format(new java.util.Date()));
			response.addCookie(cookie);

			cookieip.setValue(request.getRemoteAddr());
			response.addCookie(cookieip);
		}
		if (cookies == null) {
			cookie = new Cookie("AccessTime", "");
			cookie.setValue(sdf.format(new java.util.Date()));
			response.addCookie(cookie);
			cookieip = new Cookie("AccessIP", "");
			cookieip.setValue(request.getRemoteAddr());
			response.addCookie(cookieip);
			out.println("你是第1次访问本页面");
		}
	%>
</body>
</html>