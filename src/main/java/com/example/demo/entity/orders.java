package com.example.demo.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.TemporalType;
import javax.persistence.Temporal;

import lombok.Data;

@Data
@Entity
@Table(name = "orders")
public class orders {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@ManyToOne
	@JoinColumn(name="user_id")
	private account user;
	
	@Column(name="create_date")
	@Temporal(TemporalType.DATE)
	private Date createdDate;
	
	@Column(name="address")
	private String address;
}
