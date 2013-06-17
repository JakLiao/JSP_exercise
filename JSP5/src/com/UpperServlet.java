package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpperServlet
 */
@WebServlet("/UpperServlet")
public class UpperServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpperServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		String upperStr;
		String path = this.getServletContext().getRealPath("/");
		if (request.getParameter("input") == null
				|| request.getParameter("input") == "") {
			out.println("字符串不能为空!");
			//out.close();
		} else {
			String temp = request.getParameter("input");
			upperStr = temp.toUpperCase();
			request.getSession().setAttribute("input", temp);
			request.getSession().setAttribute("upperStr", upperStr);
			response.sendRedirect("/JSP5/ConverServlet");
		}
	}

}
