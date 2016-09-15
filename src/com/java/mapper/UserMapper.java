package com.java.mapper;

import java.util.List;

import com.java.action.Useraction;

public interface UserMapper {
		public List getAllUser();
		public String getPassword(String user);
}
