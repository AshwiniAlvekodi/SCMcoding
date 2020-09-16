package com.springmvc.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.springmvc.dao.UserDao;
import com.springmvc.model.CreateRules;


public class UserServiceImpl implements UserService {

  @Autowired
  public UserDao userDao;

  
public int createRule(CreateRules rules) {
	return userDao.createRule(rules);
}

public CreateRules getRulesObject(){
	return userDao.getRulesObject();
}

}