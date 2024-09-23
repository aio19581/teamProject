package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.createUser;
import model.member;

@WebServlet("/member")
public class memberServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String command = req.getParameter("command");
		String url ="";
		
		if(command.equals("JOIN")) {
			createUser c = new createUser();
			url = (String)c.createUserInfo(req, resp);
		}
		
		//DB에 전달하는 코드 넣기
		RequestDispatcher view = req.getRequestDispatcher(url);
		view.forward(req, resp);
	
	}
	
}
