package com.java.service;
import java.util.List;

import com.java.action.Bookaction;

public interface BookService {
	public void addBook(Bookaction book);
	public void deleteBook(int id);
	public void updateBook(Bookaction book);
	public List getAllBooks();
	public List getBookAuthor();
	public Bookaction getbook(int id);
}
