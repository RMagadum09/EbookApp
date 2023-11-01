package com.user.servlet;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAOImpl;
import com.DB.DBConnect;
import com.entity.User;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet(urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phonenumber = request.getParameter("phonenumber");
		String password = request.getParameter("password");
		String check = request.getParameter("check");
//		System.out.println(name+" "+email+" "+phonenumber+" "+password+" "+check);
		User us = new User();
		us.setName(name);
		us.setEmail(email);
		us.setPhoneNumber(phonenumber);
		us.setPassword(password);
		
		HttpSession session = request.getSession();
		
		
		if(check!=null) {
			Connection con = DBConnect.getCon();
			
			UserDAOImpl dao = new UserDAOImpl(con);
			boolean f2 = dao.checkUser(email);
			if(f2) {
				boolean f = dao.userRegister(us);
				if(f==true) {
//					System.out.println("user successful register");
					session.setAttribute("successMessage",  "User Registered Successfully");
					response.sendRedirect("register.jsp");
				}
				else {
					
//					System.out.println("Something went wrong");
					session.setAttribute("failureMessage",  "Something went wrong");
					response.sendRedirect("register.jsp");
					
				}
			}else {
				session.setAttribute("failureMessage",  "User Already Exist ");
				response.sendRedirect("register.jsp");
			}
			
		}
		else {
//			System.out.println("Plz agree terms and conditions");
			session.setAttribute("checkbox",  "Please agree terms and conditions");
			response.sendRedirect("register.jsp");
		}
		
		
	}

}
