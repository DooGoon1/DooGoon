package com.example.demo.controller;

import java.util.Arrays;
import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.beans.Student;

@Controller
@RequestMapping("admin/student")
public class StudentController {
	@GetMapping("create")
	public String create(@ModelAttribute("student") Student student) {
		return "admin/student/create";
	}

	@PostMapping("store")
	public String store(@Valid @ModelAttribute("student") Student student, BindingResult result) {
		if (result.hasErrors()) {
			System.out.println("Form không hợp lệ");
		} else {
			System.out.println("Form hợp lệ");
		}
		return "admin/student/create";
	}
	
	@ModelAttribute("khoa")
	public List<String> getKhoa(){
		return Arrays.asList("CNTT","UDPM", "QTKS");
	}
}
