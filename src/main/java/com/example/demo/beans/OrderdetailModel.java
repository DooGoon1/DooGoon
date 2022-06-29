package com.example.demo.beans;

import com.example.demo.entity.orders;
import com.example.demo.entity.products;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class OrderdetailModel {
	
	private int orderId;
	
	private products product;
	
	private double price;
	
	private int quantity;
}
