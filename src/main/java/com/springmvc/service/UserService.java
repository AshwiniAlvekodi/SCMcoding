package com.springmvc.service;

import com.springmvc.model.CreateRules;

public interface UserService {
  
  int createRule(CreateRules rules);
  
  CreateRules getRulesObject();
}