package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import java.io.File;

import com.DAO.BookDaoImpl;
import com.DB.DBConnect;
import com.entity.BookDetails;

@WebServlet(urlPatterns = "/addOldBook")
@MultipartConfig
public class AddOldBook extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String bookName = req.getParameter("bookname");
		String author = req.getParameter("authorname");
		String price =req.getParameter("price");
		String categories = "Old";
		String status = "Active";
		Part part = req.getPart("bookimg");
		String fileName = part.getSubmittedFileName();
		
		String userEmail = req.getParameter("user");
		
		BookDetails b = new BookDetails(0, bookName, author, price, categories, status, fileName,userEmail);
		
		BookDaoImpl dao = new BookDaoImpl(DBConnect.getCon());
		
		boolean f = dao.addBooks(b);
		
		HttpSession session = req.getSession();
		
		if (f) {
			String path = getServletContext().getRealPath("")+"book";
			
			File file = new File(path);
			part.write(path+File.separator +fileName);
			
			
			session.setAttribute("successMessage", "Book Add Successfully");
			resp.sendRedirect("sellBook.jsp");			
		}
		else {
			session.setAttribute("failedMessage", "Something Wrong on server");
			resp.sendRedirect("sellBook.jsp");

		}
		
	}

}
