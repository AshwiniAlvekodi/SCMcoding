package com.springmvc.dao;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.springmvc.model.CreateRules;

public class UserDaoImpl implements UserDao {
  @Autowired
  DataSource datasource;
  @Autowired
  JdbcTemplate jdbcTemplate;
 	public int createRule(CreateRules rules) {
		String sql = "insert into rules_info values(?,?)";

	    return jdbcTemplate.update(sql, new Object[] { rules.getRuleName(), rules.getRuleLabel() });

	}
	
	 public CreateRules getRulesObject() {
		    String sql = "select * from rules_info order by rules_info asc";
		    List<CreateRules> rules = jdbcTemplate.query(sql, new RulesInfo());
		    return rules.size() > 0 ? rules.get(0) : null;
		    }
  }
   class RulesInfo implements RowMapper<CreateRules> {
	  public CreateRules mapRow(ResultSet rs, int arg1) throws SQLException {
		  CreateRules rule = new CreateRules();
		  rule.setRuleName(rs.getString("ruleName"));
		  rule.setRuleLabel(rs.getString("ruleLabel"));
	   
	    return rule;
	  }
	}
