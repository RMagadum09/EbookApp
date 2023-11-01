package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.entity.Cart;

public class CartDaoImpl implements CartDao {


	private Connection con;

	public CartDaoImpl(Connection con) {
		this.con = con;
	}

	public boolean addCart(Cart c) {
		boolean f = false;

		try {

			String sql = "INSERT INTO `cart`"
					+ "(`bId`,`userId`,`bookName`, `author`,`price`,`totalprice`) "
					+ "values(?,?,?,?,?,?)";
			
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, c.getbId());
			ps.setInt(2, c.getUserId());
			ps.setString(3, c.getBookName());
			ps.setString(4, c.getAuthor());
			ps.setDouble(5, c.getPrice());
			ps.setDouble(6, c.getTotalPrice());
			
			int i = ps.executeUpdate();
			if(i==1) {
				f=true;
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}

	public List<Cart> getBookByUser(int userId) {
		ArrayList<Cart> list = new ArrayList<Cart>();
		
		Cart c = null;
		double totalPrice=0;
		
		try {
			 String sql = "SELECT * FROM `cart` WHERE `userId`=?";
			 PreparedStatement ps = con.prepareStatement(sql);
			 ps.setInt(1, userId);
			 
			 ResultSet rs = ps.executeQuery();
			 while (rs.next()) {
				c = new Cart();
				c.setcId(rs.getInt(1));
				c.setbId(rs.getInt(2));
				c.setUserId(rs.getInt(3));
				c.setBookName(rs.getString(4));
				c.setAuthor(rs.getString(5));
				c.setPrice(rs.getDouble(6));
				
				totalPrice = totalPrice +rs.getDouble(7);
				
				c.setTotalPrice(totalPrice);
				 list.add(c);
				 
				
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		return list;
	}

	public boolean deleteBook(int bid, int uid, int cid) {
		boolean f = false;
		
		String sql = "DELETE FROM `cart` WHERE `bId`=? and `userId` =? and `cId`=?" ;
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, bid);
			ps.setInt(2, uid);
			ps.setInt(3, cid);

			int i = ps.executeUpdate();
	
			
			if(i==1) {
				f=true;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		
		
		return f;
	}
	
	
}
