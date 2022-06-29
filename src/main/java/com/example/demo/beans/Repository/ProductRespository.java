package com.example.demo.beans.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.entity.products;

public interface ProductRespository extends JpaRepository<products, Integer> {

}
