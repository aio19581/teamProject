package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/index")
public class indexServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req,resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		
		String command = req.getParameter("command");
		String url="";
		
		if(command.equals("LOGIN")) {
			url="login.jsp";
		} else if(command.equals("JOIN")) {
			url = "join.jsp";
		} else if(command.equals("MYPAGE")) {
			url = "/WEB-INF/views/mypageMain.jsp";
		} else if(command.equals("MYPAGE2")) {
			url = "/WEB-INF/views/mypageMain2.jsp";
		}
		
		RequestDispatcher view = req.getRequestDispatcher(url);
		view.forward(req, resp);
		
	}
	
}
