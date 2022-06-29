package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.bean_config.UserDaoInterface;
import com.example.demo.beans.User;

@Controller
public class HelloController {
	
	@Autowired
	private User user;
	
	@Autowired
	@Qualifier("user_dao_sqlserver")
	private UserDaoInterface dao;

//	@RequestMapping(
//			value="/hello",
//			method=RequestMethod.GET)
	
	@GetMapping("hello")
	public String hello(
			Model model,
			@RequestParam(
					name="ho_ten",
					defaultValue = "IT16306"
					) String hoTen
	) {
		System.out.println("HelloController@hello");
		model.addAttribute("message", hoTen);
		return "hello";
	}
	
	@GetMapping("demo-bean")
	@ResponseBody
	public String demoBean() {
		this.dao.insert(user);
		this.dao.update(user);
		this.dao.delete(user);
		this.dao.all();
		return "hello" + "-" + this.user.getHoTen();
	}
}
