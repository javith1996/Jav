package com.dao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

public class Userdao {
	
	@Autowired
	JdbcTemplate template;
	
	public int saveRecord(String name,String email,String pass,long mob )
	{
		return template.update("insert into register_tb values(?,?,?)",new String[]{name,email,pass});
		
	}	
}
