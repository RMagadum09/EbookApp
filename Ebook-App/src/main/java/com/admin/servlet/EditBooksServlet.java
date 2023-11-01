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
import com.entity.BookDetails;

@WebServlet(urlPatterns = "/editbooks")
public class EditBooksServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id = Integer.parseInt(req.getParameter("id"));
			String bookName = req.getParameter("bookname");
			String author = req.getParameter("authorname");
			Double price = Double.parseDouble(req.getParameter("price"));
			String status = req.getParameter("bookStatus");
			
			BookDetails b = new BookDetails();
			b.setBookId(id);
			b.setBookName(bookName);
			b.setAuthor(author);
			b.setPrice(price);
			b.setStatus(status);
			
			BookDaoImpl dao = new BookDaoImpl(DBConnect.getCon());
			boolean f = dao.updateEditBooks(b);
			
			HttpSession session = req.getSession();
			
			 
			if (f) {
				session.setAttribute("successMessage", "Book Updated Succefully");
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
