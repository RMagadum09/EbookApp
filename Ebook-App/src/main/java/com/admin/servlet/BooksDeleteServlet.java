package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.BookDaoImpl;
import com.DB.DBConnect;

@WebServlet(urlPatterns = "/delete")
public class BooksDeleteServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 try {
			 int id = Integer.parseInt(req.getParameter("id"));
			 BookDaoImpl dao = new BookDaoImpl(DBConnect.getCon());
			 boolean f = dao.deleteBooks(id);
			 
 
				HttpSession session = req.getSession();
				
				 
				if (f) {
					session.setAttribute("successMessage", "Book Deleted Succefully");
					resp.sendRedirect("admin/allbooks.jsp");
				} else {
					session.setAttribute("allbooks.jsp", "Something Wrong on Server");
					resp.sendRedirect("admin/allbooks.jsp");

				}
			
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
		
}
