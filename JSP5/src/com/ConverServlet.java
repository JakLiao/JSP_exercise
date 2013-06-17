package com;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ConverServlet
 */
@WebServlet("/ConverServlet")
public class ConverServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConverServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		String str = request.getSession().getAttribute("upperStr").toString();
		char[] tmp = new char[50];
		int len = str.length()-1;
		for(int i=0;i < str.length();i++)
		{
			tmp[len-i] = str.charAt(i);
		}	
		String revertStr = new String(tmp);
		request.getSession().setAttribute("revertStr", revertStr);
		response.sendRedirect("/JSP5/DisplayServlet");
	}

}
