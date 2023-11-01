package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.BookDaoImpl;
import com.DB.DBConnect;
@WebServlet(urlPatterns ="/deleteOldBook" )
public class DeleteOldBook extends HttpServlet{
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			try {
				
				String email = req.getParameter("email");
				int bid = Integer.parseInt(req.getParameter("bid"));	
				BookDaoImpl dao = new BookDaoImpl(DBConnect.getCon());
				
				boolean f = dao.deleteOldBook(email, "Old", bid);
				 HttpSession session = req.getSession();
				 
				 if(f) {
					 session.setAttribute("successMessage", "Old Book Removed Successfully");
					 resp.sendRedirect("editOldBook.jsp");
				 }else {
					 session.setAttribute("failedMessage", "Something Went Wrong");
					 resp.sendRedirect("editOldBook.jsp");
				 }
				
			} catch (Exception e) {
				e.printStackTrace();
			}
	
	
	
	}
}
