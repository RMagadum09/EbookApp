package com.DAO;

import java.util.List;

import com.entity.BookDetails;

public interface BooksDao {
	public boolean addBooks(BookDetails b);
	
	public List<BookDetails> getAllBooks();
	
	public BookDetails getBookById(int id );
	
	public boolean updateEditBooks(BookDetails b);
	
	public boolean deleteBooks(int id);

}
