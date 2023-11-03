package com.DAO;

import java.util.List;

import com.entity.BookDetails;

public interface BooksDao {
	public boolean addBooks(BookDetails b);
	
	public List<BookDetails> getAllBooks();
	
	public BookDetails getBookById(int id );
	
	public boolean updateEditBooks(BookDetails b);
	
	public boolean deleteBooks(int id);
	
	public List<BookDetails> getAllNewBooks();
	
	public List<BookDetails> getAllOldBooks();
	
	public List<BookDetails> getAllRecentBooks();
	
	public List<BookDetails> getBookByOld(String email, String cate);
	
	public List<BookDetails> getBookBySearch(String ch);
	
	public List<BookDetails> getRecentBooks();
	
	public List<BookDetails> getOldBooks();
	
	public List<BookDetails> getNewBooks();

}
