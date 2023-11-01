package com.user.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.BookOrderDaoImpl;
import com.DAO.CartDaoImpl;
import com.DB.DBConnect;
import com.entity.BookOrder;
import com.entity.Cart;
@WebServlet(urlPatterns = "/order")
public class OrderServlet extends HttpServlet {

	
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			HttpSession session = req.getSession();
			int id = Integer.parseInt(req.getParameter("id"));
			
			String name = req.getParameter("username");
			String email = req.getParameter("useremail");
			String phonenumber = req.getParameter("phoneNumber");
			String address = req.getParameter("address");
			String landmark = req.getParameter("landmark");
			String city = req.getParameter("city");
			String state = req.getParameter("state");
			String pincode = req.getParameter("pincode");
			String paymentmode = req.getParameter("paymentmode");
			
			String fulladdress = address +", "+ landmark +", "+ city +", "+ state +", "+ pincode; 
			
			
			CartDaoImpl dao = new CartDaoImpl(DBConnect.getCon());
			List<Cart> blist = dao.getBookByUser(id);
			if(blist.isEmpty()) {
				session.setAttribute("failedMessage", "Please Add Items to Cart");
				resp.sendRedirect("checkOut.jsp");
				
			}else {

				BookOrderDaoImpl dao2 = new BookOrderDaoImpl(DBConnect.getCon());
				
				BookOrder o = null;
				ArrayList<BookOrder> orderList = new ArrayList<BookOrder>();
				Random r = new Random();
				for(Cart c : blist) {
					o = new BookOrder();
					o.setOrderId("BOOK-ORD-00"+r.nextInt(1000));
					o.setUserName(name);
					o.setEmail(email);
					o.setPhoneNumber(phonenumber);
					o.setFullAddress(fulladdress);
					o.setBookName(c.getBookName());
					o.setAuthor(c.getAuthor());
					o.setPrice(c.getPrice()+"");
					o.setPaymentMode(paymentmode);
					
					orderList.add(o);
				}
				
				
				if("noselect".equals(paymentmode)) {
					session.setAttribute("failedMessage", "Please choose Payment Mode");
					resp.sendRedirect("checkOut.jsp");
				}else {
					
					boolean f = dao2.saveOrder(orderList);
					if (f) {
						resp.sendRedirect("orderSuccess.jsp");
					} else {
						session.setAttribute("failedMessage", "Order Couldn't be Placed");
						resp.sendRedirect("checkOut.jsp");

					}
					
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
