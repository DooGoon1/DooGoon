package com.example.demo.configurations;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.example.demo.bean_config.UserDaoInterface;
import com.example.demo.bean_config.UserDaoMySQL;
import com.example.demo.bean_config.UserDaoSQLServer;

@Configuration
public class DemoBeanUserDao {
	@Bean("user_dao_mysql")
	public UserDaoInterface getUserDaoMySQL()
	{
		return new UserDaoMySQL();
	}
	
	@Bean("user_dao_sqlserver")
	public UserDaoInterface getUserDAOSqlServer()
	{
		return new UserDaoSQLServer();
	}
}
