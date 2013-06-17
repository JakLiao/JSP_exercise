<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Guess Number Game</title>
</head>
<body>
	<%
		String b = "disabled=\"disabled\"";
		String hint = "";
		String result = "";
		String display = "style=\"display: none\"";
		int number = 0;
		ArrayList<Integer> history = (ArrayList<Integer>) session
				.getAttribute("history");
		Map<Date, String> userMap = new HashMap<Date, String>();
		userMap = (HashMap<Date, String>) application
				.getAttribute("userMap");
		if (history == null) {
			history = new ArrayList<Integer>();
		}
		if (session.getAttribute("num") == null) {
			Random r = new Random();
			number = r.nextInt(10);
			session.setAttribute("num", number);
			out.println(number);
		} else if (request.getParameter("submit1") != null) {
			String s = request.getParameter("number");
			Integer num = Integer.parseInt(s);

			number = (Integer) session.getAttribute("num");
			if (num.equals(number)) {
				result = new String("恭喜你猜对了!" + number + "是正确答案  请输入你的名字：");
				display = "";
				history.add(num);
				b = "";
				hint = "是否重新开始游戏？";
			} else if (history.size() == 2) {
				result = new String("很遗憾，三次均没有猜中╮(╯▽╰)╭ " + number
						+ "是正确答案");
				session.removeAttribute("history");
				session.removeAttribute("num");
				history.clear();
				b = "";
				hint = "是否重新开始游戏？";
			} else {
				history.add(num);
				session.setAttribute("history", history);
			}
		} else if (request.getParameter("submit3") != null) {
			Date date = new Date();
			String name = request.getParameter("name");
			userMap.put(date, name);
			application.setAttribute("userMap", userMap);
			session.removeAttribute("history");
			session.removeAttribute("num");
			history.clear();
			Random r = new Random();
			number = r.nextInt(10);
			out.println(number);
			session.setAttribute("num", number);
			b = "disabled=\"disabled\"";
			hint = "";
			display = "style=\"display: none\"";
		} else if (request.getParameter("submit2") != null) {
			session.removeAttribute("history");
			session.removeAttribute("num");
			history.clear();
			Random r = new Random();
			number = r.nextInt(10);
			out.println(number);
			session.setAttribute("num", number);
			b = "disabled=\"disabled\"";
			hint = "";
			display = "style=\"display: none\"";
		}
	%>
	<br />
	<div>
		<div style="float: left;">
			<form name="form1" id="form1" action="" method="post">
				<table align="center" border="1" width="600"
					style="border-collapse: collapse;">
					<tr>
						<td colspan=2>请输入猜的数字(0 - 9)：<input type="text" name="number"
							id="number" />
						</td>
					</tr>
					<tr>
						<td align="center" width="200"><input name="submit1"
							id="submit1" type="submit" value="提交" /></td>
						<td align="center"><span style="color: red;"><%=hint%></span>
							<input name="submit2" id="submit2" type="submit" value="重玩"
							<%=b%> /></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>编号</td>
						<td>猜测的数字</td>
					</tr>
					<%
						for (int i = 0; i < history.size(); i++) {
					%>
					<tr>
						<td><%=i + 1%></td>
						<td><%=history.get(i)%></td>
					</tr>
					<%
						}
					%>
				</table>
			</form>
			<div align="center">
				<br><%=result%>
				<form name="form1" id="form1" action="" method="post">
					<table <%=display%>>
						<tr>
							<td><input type="text" name="name" id="name" />
								<input name="submit3" id="submit3" type="submit" value="确定" /></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
		<div style="float: left;">
			<table>
				<tr>
					<td colspan=2 align="left">排行榜</td>
				</tr>
				<tr>
					<th>玩家名字</th>
					<th width="300" align="center">猜对时间</th>
				</tr>
				<%
					Set<Date> key = userMap.keySet();
					for (Iterator<Date> it = key.iterator(); it.hasNext();) {
						Date s = (Date) it.next();
				%>
				<tr>
					<td><%=userMap.get(s)%></td>
					<td><%=s%></td>
				</tr>
				<%
					}
				%>
			</table>
		</div>
	</div>
</body>
</html>