package com.java.action;

import java.util.List;
import java.util.Map;

import org.junit.BeforeClass;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.java.service.BookService;
import com.java.service.UserService;
import com.java.service.impl.BookServiceImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.interceptor.annotations.Before;

public class Bookaction extends ActionSupport{
	private int id;
	private String introdurce;//介绍
	private String bookname;//书名
	private String bookauthor;//作者
	private String bookpress;//出版社
	private String pubdate;//出版日期
	private String total;//总数量
	private String page;//页数
	private String ISBN;//国际标准书号
	private String price;//价格
	private List bookList;
	private Bookaction book;
	public Bookaction getBook() {
		return book;
	}
	public void setBook(Bookaction book) {
		this.book = book;
	}


	ActionContext context;
	Map request;
	
	public List getBookList() {
		return bookList;
	}
	public void setBookList(List bookList) {
		this.bookList = bookList;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getIntrodurce() {
		return introdurce;
	}
	public void setIntrodurce(String introdurce) {
		this.introdurce = introdurce;
	}
	public String getBookname() {
		return bookname;
	}
	public void setBookname(String bookname) {
		this.bookname = bookname;
	}
	public String getBookauthor() {
		return bookauthor;
	}
	public void setBookauthor(String bookauthor) {
		this.bookauthor = bookauthor;
	}
	public String getBookpress() {
		return bookpress;
	}
	public void setBookpress(String bookpress) {
		this.bookpress = bookpress;
	}
	public String getPubdate() {
		return pubdate;
	}
	public void setPubdate(String pubdate) {
		this.pubdate = pubdate;
	}
	public String getTotal() {
		return total;
	}
	public void setTotal(String total) {
		this.total = total;
	}
	public String getPage() {
		return page;
	}
	public void setPage(String page) {
		this.page = page;
	}
	public String getISBN() {
		return ISBN;
	}
	public void setISBN(String iSBN) {
		ISBN = iSBN;
	}
	
	
	 public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}


	static BookService bookService;
	
	public static BookService setUpBeforeClass(){
			ApplicationContext cxt = new ClassPathXmlApplicationContext("ApplicationContext.xml");
			bookService = (BookService)cxt.getBean("bookServiceImpl");
			return bookService;
	}
	
	//查询出所有图书
	public String getAllBooks(){
		
			
			String result =NONE;
			try {
				bookList =setUpBeforeClass().getAllBooks();
				result = "success";
			} catch (Exception e) {
				e.printStackTrace();
				request.put("req","很抱歉！系统出现问题");
			}
			return result;
	}
	//查询出单个图书
	public String findById(){
		
		//这家伙是用来辅助传递值到页面的
				context=ActionContext.getContext();
				//这家伙是用来传递值到页面的
				request=(Map) context.get("request");
		String result =NONE;
		try {
			book=setUpBeforeClass().getbook(id);
			result = "success";
		} catch (Exception e) {
			e.printStackTrace();
			request.put("req","很抱歉！系统出现问题");
		}
		return result;
}
	//删除图书
	public String deleteBook(){
		//这家伙是用来辅助传递值到页面的
		context=ActionContext.getContext();
		//这家伙是用来传递值到页面的
		request=(Map) context.get("request");
		
		setUpBeforeClass().deleteBook(id);
			
		request.put("req","删除成功！");
		return SUCCESS;
	}
	//修改图书
	public String updateBook(){
		//这家伙是用来辅助传递值到页面的
				context=ActionContext.getContext();
				//这家伙是用来传递值到页面的
				request=(Map) context.get("request");
				String result =NONE ;
				try {
					setUpBeforeClass().updateBook(book);
					result =SUCCESS;
					request.put("req",book.bookname+"信息修改成功");
				} catch (Exception e) {
					e.printStackTrace();
					request.put("req","更新操作失败！");
				}
				return result;
		
	}
	
			//增加图书
		public String addBook(){
			//这家伙是用来辅助传递值到页面的
					context=ActionContext.getContext();
					//这家伙是用来传递值到页面的
					request=(Map) context.get("request");
					
					if("".equals(book.bookname.replaceAll(" ",""))||null==book.bookname.replaceAll(" ","")){
						request.put("req","亲爱的，很抱歉,最起码书名不能为空哦~");
						return NONE;
					}else{
						try {
							setUpBeforeClass().addBook(book);
							request.put("req",book.bookname+"添加成功");
							return SUCCESS;
						} catch (Exception e) {
							e.printStackTrace();
							request.put("req","添加操作失败！");
							return NONE;
						}
					}
					
			
		}
		
		
	
}
