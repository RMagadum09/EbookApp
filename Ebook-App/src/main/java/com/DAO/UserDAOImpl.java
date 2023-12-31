package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.entity.User;

public class UserDAOImpl implements UserDAO {
	
	private Connection con;

	public UserDAOImpl(Connection con) {
		super();
		this.con = con;
	}

	public boolean userRegister(User us) {
		String sql = "INSERT into user (`name`, `email`, `phonenumber`,`password` ) values(?,?,?,?)";
		boolean f = false;
		
		try {
			PreparedStatement statement = con.prepareStatement(sql);
			statement.setString(1, us.getName());
			statement.setString(2, us.getEmail());
			statement.setString(3, us.getPhoneNumber());
			statement.setString(4, us.getPassword());
			int i = statement.executeUpdate();
			if(i==1) {
				f=true;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return f;
	
	
	}

	public User login(String email, String password) {
		
		User us = null;
		try {
			String sql = "SELECT * from user WHERE `email` = ? and `password` = ?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				us = new User();
				us.setId(rs.getInt(1));
				us.setName(rs.getString(2));
				us.setEmail(rs.getString(3));
				us.setPhoneNumber(rs.getString(4));
				us.setPassword(rs.getString(5));
				us.setAddress(rs.getString(6));
				us.setLandmark(rs.getString(7));
				us.setCity(rs.getString(8));
				us.setState(rs.getString(9));
				us.setPincode(rs.getString(10));

			}
					
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return us;
	}
	public boolean checkPassword(int id, String pass) {
		boolean f = false;
		try {
			String sql = "SELECT * FROM `user` WHERE `id`=? and `password`=? ";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ps.setString(2, pass);
			
			ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {
				f=true;
				
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		return f;
	}
	public boolean updateProfile(User us) {
		String sql = "UPDATE `user` SET `name`=?, `email`=?, `phonenumber`=?  WHERE`id`=?";
		boolean f = false;
		
		try {
			PreparedStatement statement = con.prepareStatement(sql);
			statement.setString(1, us.getName());
			statement.setString(2, us.getEmail());
			statement.setString(3, us.getPhoneNumber());
			statement.setInt(4,us.getId());
			
			int i = statement.executeUpdate();
			
			if(i==1) {
				f=true;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return f;
	}
	 public boolean checkUser(String email) {
		 String sql = "SELECt* FROM `user` WHERE `email`=?";
			boolean f = true;
			
			try {
				
				PreparedStatement statement = con.prepareStatement(sql);
				statement.setString(1, email);
				
				ResultSet rs = statement.executeQuery();
				while (rs.next()) {
					f= false;
					
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			
			return f;
		}
	}
	


