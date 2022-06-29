package com.example.demo.bean_config;

import com.example.demo.beans.User;

public interface UserDaoInterface {
	public void insert(User u);
	public void update(User u);
	public void delete(User u);
	public void all();
}
