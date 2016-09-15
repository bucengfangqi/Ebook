package com.java.action;

import java.util.List;
import java.util.Map;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.java.service.BookService;
import com.java.service.UserService;
import com.java.service.impl.UserServiceImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.interceptor.annotations.Before;
public class Useraction extends ActionSupport{
	private int id;
	private String username;
	private String password;
	
	ActionContext context;
	Map request;
	Map session;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	protected static UserService userService;
	
	public static UserService setUpBeforeClass(){
		//读取配置文件
		ApplicationContext context=new ClassPathXmlApplicationContext("ApplicationContext.xml");
		//获取Us实例
		userService=(UserService) context.getBean("userServiceImpl");
		return  userService;
	}
	
	//判断用户
		public String judge(){
			
			//这家伙是用来辅助传递值到页面的
			context=ActionContext.getContext();
			//这家伙是用来传递值到页面的
			request=(Map) context.get("request");
			
			List<String> user1=setUpBeforeClass().getAllUser();
			
			String password1=userService.getPassword(username);
			if(null==username||"".equals(username.replace(" ",""))){
				request.put("req","请务必输入昵称！");
				return NONE;
			}else if(user1.contains(username.replace(" ",""))==false){
				request.put("req","昵称未注册！");
				return NONE;
			}else if(null==password||"".equals(password.replace(" ",""))){
				request.put("req","请输入密码！");
				return NONE;
			}else if(user1.contains(username.replace(" ",""))==true&&password.replace(" ","").equals(password1)){
				session=context.getSession();
				session.put("loginSign",username);
				return SUCCESS;
			}else if(user1.contains(username)==true&&password.replace(" ","")!=password1){
				request.put("req","密码错误！请重新输入~");
				return NONE;
			}else{
				request.put("req","账号输入错误!");
				return NONE;
			}
		}
		//替换session为null达到清除session的效果
		public String clean(){
			context=ActionContext.getContext();
			session=context.getSession();
			session.put("loginSign",null);
			return SUCCESS;
		}
		
}
