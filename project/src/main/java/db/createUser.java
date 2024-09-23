package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.member;

public class createUser {
	public Object createUserInfo(HttpServletRequest req, HttpServletResponse resp) throws ServletException{
		
		Connection conn= null;
		PreparedStatement stmt = null;
		int result = 0;
		
		try {
			conn = DBConnect.getConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		String memberId = req.getParameter("memberId");
		String memberPw = req.getParameter("memberPw");
		String name = req.getParameter("name");
		String birth = req.getParameter("birth");
		String phoneNumber = req.getParameter("phoneNumber");
		String email1 = req.getParameter("email");
		String email2 = req.getParameter("email2");
		String nickName = req.getParameter("nickName");
		String zipNo = req.getParameter("zipNo");
		String Addr1 = req.getParameter("roadAddrPart1");
		String addrDetail = req.getParameter("addrDetail");
		String Addr2 = req.getParameter("roadAddrPart2");
		
		String email = email1 +"@"+email2;
		String address = zipNo + " "+Addr1+addrDetail+Addr2;
		member m = new member("user",memberId,memberPw,name,birth,phoneNumber,email,address,nickName);
		
		String sql = "INSERT INTO member (memberId,memberpw,membername,birth,phonenumber,email,nickname,address) "
				+ "VALUE (?,?,?,?,?,?,?,?)";
		
		try {
			stmt = conn.prepareStatement(sql);
			
			stmt.setString(1, memberId);
			stmt.setString(2, memberPw);
			stmt.setString(3, name);
			stmt.setString(4, birth);
			stmt.setString(5, phoneNumber);
			stmt.setString(6, email);
			stmt.setString(7, nickName);
			stmt.setString(8, address);
			
			result = stmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		if (result <= 0) {
			return "error.jsp";
		}
		
		return "/WEB-INF/views/welcome.jsp";
	}
}
