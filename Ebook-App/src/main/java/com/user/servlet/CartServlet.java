package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.BookDaoImpl;
import com.DAO.CartDaoImpl;
import com.DB.DBConnect;
import com.entity.BookDetails;
import com.entity.Cart;


@WebServlet(urlPatterns ="/cart")
public class CartServlet extends HttpServlet{
	
	
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
			int bid = Integer.parseInt(req.getParameter("bid"));
			int uid = Integer.parseInt(req.getParameter("uid"));
			
			BookDaoImpl dao = new BookDaoImpl(DBConnect.getCon());
			BookDetails b = dao.getBookById(bid);
			
			Cart c = new Cart();
			c.setbId(bid);
			c.setUserId(uid);
			c.setBookName(b.getBookName());
			c.setAuthor(b.getAuthor());
			c.setPrice(Double.parseDouble(b.getPrice()));
			c.setTotalPrice(Double.parseDouble(b.getPrice()));
			
			CartDaoImpl dao2 = new CartDaoImpl(DBConnect.getCon());
			boolean f = dao2.addCart(c);
			
			HttpSession session = req.getSession();
			
			if(f) {
				session.setAttribute("addCart", "Book Added to Cart");
				resp.sendRedirect("allNewBook.jsp");
			}else {
				session.setAttribute("failed", "Something went wrong");
				resp.sendRedirect("allNewBook.jsp");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}

}
