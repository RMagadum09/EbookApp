package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.CartDaoImpl;
import com.DB.DBConnect;
@WebServlet(urlPatterns = "/removeBook")
public class removeBookCart extends HttpServlet {
	
	 
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 int bid = Integer.parseInt(req.getParameter("bid"));		
		 int uid = Integer.parseInt(req.getParameter("uid"));
		 int cid = Integer.parseInt(req.getParameter("cid"));

		 CartDaoImpl dao= new CartDaoImpl(DBConnect.getCon());
		 boolean f = dao.deleteBook(bid,uid,cid);
		 HttpSession session = req.getSession();
		 
		 
		 
		 if(f) {
			 session.setAttribute("successMessage", "Book Removed from Cart");
			 resp.sendRedirect("checkOut.jsp");
		 }else {
			 session.setAttribute("failedMessage", "Something Went Wrong");
			 resp.sendRedirect("checkOut.jsp");
		 }
		 
		 
		 
	 
	 }

}
