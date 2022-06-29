package com.example.demo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.beans.Repository.AccountRepository;
import com.example.demo.entity.account;
import com.example.demo.utils.HashUtil;

@Controller
public class LoginController {

	@Autowired
	private HttpServletRequest request;
	
	@Autowired
	private AccountRepository accountRepo;

	@GetMapping("/Login")
	public String getLoginForm() {
		return "/admin/accounts/Login";
	}
	
	@PostMapping("/login_acc")
	public String login(
		@RequestParam("email") String email,
		@RequestParam("password") String password
	) {
		account entity = this.accountRepo.findByEmail(email);
		HttpSession session = request.getSession();
		if (entity == null) {
			session.setAttribute("error", "Sai email hoặc mật khẩu");
			return "/admin/accounts/Login";
		}

		boolean checkPwd = HashUtil.verify(password, entity.getPassword());
		if (!checkPwd) {
			session.setAttribute("error", "Sai email hoặc mật khẩu");
			return "/admin/accounts/Login";
		}
		
		session.setAttribute("account", entity);
		return "/admin/accounts/form";
	}
}
