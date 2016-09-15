package com.java.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.java.mapper.UserMapper;
import com.java.service.UserService;
@Service
@Transactional
public class UserServiceImpl implements UserService{
	@Autowired
    UserMapper userMapper;

public List getAllUser() {
	// TODO Auto-generated method stub
	return userMapper.getAllUser();
}

public String getPassword(String user) {
	// TODO Auto-generated method stub
	return userMapper.getPassword(user);
}

	
	
}
