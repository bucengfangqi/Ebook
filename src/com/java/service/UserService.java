package com.java.service;

import java.util.List;

import com.java.action.Useraction;
public interface UserService {
	public List getAllUser();
	public String getPassword(String user);
}
