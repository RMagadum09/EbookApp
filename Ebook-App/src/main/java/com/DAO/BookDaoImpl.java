package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.BookDetails;

public class BookDaoImpl implements BooksDao {
	private Connection con;

	public BookDaoImpl(Connection con) {
		super();
		this.con = con;
	}

	public boolean addBooks(BookDetails b) {
		boolean f = false;
		try {
			String sql = "INSERT into bookdetails(bookName, author, price, bookCategory,status,photo,userEmail) values(?,?,?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, b.getBookName());
			ps.setString(2, b.getAuthor());
			ps.setDouble(3, b.getPrice());
			ps.setString(4, b.getBookCategory());
			ps.setString(5, b.getStatus());
			ps.setString(6, b.getPhotoName());
			ps.setString(7, b.getEmail());

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;

	}

	public List<BookDetails> getAllBooks() {

		List<BookDetails> list = new ArrayList<BookDetails>();
		BookDetails b = null;

		try {
			String sql = "SELECT * from bookdetails ";
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				b = new BookDetails();
				b.setBookId(rs.getInt(1));
				b.setBookName(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getDouble(4));
				b.setBookCategory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setPhotoName(rs.getString(7));
				b.setEmail(rs.getString(8));

				list.add(b);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	public BookDetails getBookById(int id) {
		BookDetails b = null;
		try {
			String sql = "SELECT * FROM `bookdetails` WHERE `bookId`=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				b = new BookDetails();
				b.setBookId(rs.getInt(1));
				b.setBookName(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getDouble(4));
				b.setBookCategory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setPhotoName(rs.getString(7));
				b.setEmail(rs.getString(8));

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return b;

	}

	public boolean updateEditBooks(BookDetails b) {
		boolean f = false;
		try {
			String sql = "UPDATE bookdetails SET `bookName`=?, `author`=? ,`price`=?, `status`=? WHERE bookId=? ";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, b.getBookName());
			ps.setString(2, b.getAuthor());
			ps.setDouble(3, b.getPrice());
			ps.setString(4, b.getStatus());
			ps.setInt(5, b.getBookId());
			
			int i = ps.executeUpdate();
			
			if (i==1) {
				f=true;
				
			} 
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return f;
	}

	public boolean deleteBooks(int id) {
		boolean f = false;
		try {
			String sql = "DELETE FROM `bookdetails` WHERE `bookId`=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			int i = ps.executeUpdate();
			
			if(i==1) {
				f=true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		return f;
	}

}




































