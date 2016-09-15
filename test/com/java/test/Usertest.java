package com.java.test;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.java.service.UserService;
import com.java.service.impl.UserServiceImpl;

public class Usertest {
	
	protected static UserService userService;
	@BeforeClass
	public static void setUpBeforeClass(){
		//读取配置文件
		ApplicationContext context=new ClassPathXmlApplicationContext("ApplicationContext.xml");
		//获取Us实例
		userService=(UserService) context.getBean("userServiceImpl");
	}
	@Test
	public void getUser(){
		
		System.out.println(userService.getAllUser());
	}
}
