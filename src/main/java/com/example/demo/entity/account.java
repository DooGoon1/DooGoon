package com.example.demo.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name = "accounts")
public class account {
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "username")
	private String username;

	@Column(name = "password")
	private String password;

	@Column(name = "fullname")
	private String fullname;

	@Column(name = "email")
	private String email;

	@Column(name = "photo")
	private String photo;

	@Column(name = "activated")
	private int activated;

	@Column(name = "admin")
	private int admin;
}
