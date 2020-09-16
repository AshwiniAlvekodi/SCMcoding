package com.springmvc.dao;
import com.springmvc.model.CreateRules;

public interface UserDao {
  int createRule(CreateRules rules);
  CreateRules getRulesObject();
}