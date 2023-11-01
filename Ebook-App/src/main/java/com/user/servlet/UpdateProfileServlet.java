package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAOImpl;
import com.DB.DBConnect;
import com.entity.User;
@WebServlet(urlPatterns = "/updateProfile")
public class UpdateProfileServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			int id = Integer.parseInt(req.getParameter("id"));
			String name = req.getParameter("name");
			String email = req.getParameter("email");
			String phonenumber = req.getParameter("phonenumber");
			String password = req.getParameter("password");
			
			User us = new User();
			us.setId(id);
			us.setName(name);
			us.setEmail(email);
			us.setPhoneNumber(phonenumber);
			
			HttpSession session = req.getSession();
			
			UserDAOImpl dao = new UserDAOImpl(DBConnect.getCon());
			
			boolean f = dao.checkPassword(id, password);
			if(f) {
				boolean f2 = dao.updateProfile(us);
				if (f2) {
					session.setAttribute("successMessage",  "User Updated Successfully");
					resp.sendRedirect("editProfile.jsp");
				} else {
					session.setAttribute("failedMessage",  "Something Went Wrong");
					resp.sendRedirect("editProfile.jsp");
				}
				
			}else {
				session.setAttribute("failedMessage",  "Your Password is Incorrect");
				resp.sendRedirect("editProfile.jsp");
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		
	}
}
