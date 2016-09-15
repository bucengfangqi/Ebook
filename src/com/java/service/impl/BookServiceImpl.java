package com.java.service.impl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.java.action.Bookaction;
import com.java.mapper.BookMapper;
import com.java.service.BookService;

@Service
@Transactional
public class BookServiceImpl implements BookService{
	@Autowired
	BookMapper bookMapper;
	public void addBook(Bookaction book) {
		bookMapper.addBook(book);
	}

	public void deleteBook(int id) {
		bookMapper.deleteBook(id);
	}

	public void updateBook(Bookaction book) {
		bookMapper.updateBook(book);
	}

	public List getAllBooks() {
		return  bookMapper.getAllBooks();
	}

	public List getBookAuthor() {
		return bookMapper.getBookAuthor();
	}

	public Bookaction getbook(int id) {
		// TODO Auto-generated method stub
		return bookMapper.getbook(id);
	}

}
