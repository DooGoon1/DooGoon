package com.example.demo.bean_config;

import com.example.demo.beans.User;

public class UserDaoSQLServer implements UserDaoInterface {

	@Override
	public void insert(User u) {
		System.out.println("Them MySql");
	}

	@Override
	public void update(User u) {
		System.out.println("Cap nhat MySql");
	}

	@Override
	public void delete(User u) {
		System.out.println("Xoa MySql");
	}

	@Override
	public void all() {
		System.out.println("All MySql");
	}
}
