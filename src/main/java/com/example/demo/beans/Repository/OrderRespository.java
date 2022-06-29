package com.example.demo.beans.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.demo.entity.orders;

public interface OrderRespository extends JpaRepository<orders, Integer>  {
	@Query(value = "SELECT Max(acc.id) FROM orders acc ") 
	public int finMaxIdOrder();
}
