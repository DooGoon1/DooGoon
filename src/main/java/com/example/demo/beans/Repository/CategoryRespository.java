package com.example.demo.beans.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.entity.categories;

public interface CategoryRespository extends JpaRepository<categories, Integer>{

}
