import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.member;

@WebServlet("/join")
public class join extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		
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
		System.out.println(m.toString());
		
	
	}
	
}
