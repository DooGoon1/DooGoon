package com.example.demo.beans.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.example.demo.entity.account;

public interface AccountRepository extends JpaRepository<account, Integer>{
	
	@Query("SELECT entity FROM account entity WHERE email=:email")
	public account findByEmail(@Param("email") String email);
	
	@Query(value = "SELECT acc FROM account acc WHERE acc.id = :id ") 
	public account findbyid(@Param("id") int id);
}
