package com.example.servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import foo.other.*;

public class MyController extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// get parameter from form:
		String p_name = request.getParameter("person_name");
		// create new Person object with this form parameter:
		Person person = new Person(p_name);
		// save this person object to request scope attribute:
		request.setAttribute("person_object", person);
		// using request create RequestDispatcher:
		RequestDispatcher rd = request.getRequestDispatcher("go.jsp");
		// send this request and response object to same server , but different
		// servlet
		// who knows how to deal with it:
		rd.forward(request, response);
	}
}
