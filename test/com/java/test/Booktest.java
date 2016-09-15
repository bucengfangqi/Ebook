package com.java.test; 
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.java.action.Bookaction;
import com.java.service.BookService;

public class Booktest {
	protected static BookService userService;
	@BeforeClass
	public static void setUpBeforeClass(){
		//读取配置文件
		ApplicationContext context=new ClassPathXmlApplicationContext("ApplicationContext.xml");
		//获取UserBean实例
		userService=(BookService) context.getBean("bookServiceImpl");
	}
	@Test
	public void getBookAuthor(){
		
		System.out.println(userService.getBookAuthor());
	}
	@Test
	public void addBook(){
		Bookaction book=new Bookaction();
		
		book.setBookauthor("老君");
		book.setBookname("心灵鸡汤");
		book.setBookpress("打印出版社");
		book.setISBN("16445");
		book.setPage("365");
		book.setPrice("65.32");
		book.setPubdate("2015");
		book.setTotal("600");
		for(int i=1;i<=99;i++){
			userService.addBook(book);
		}
	}
	@Test
	public void getallbooks(){
		
		
		System.out.println(userService.getAllBooks());
	}
}
