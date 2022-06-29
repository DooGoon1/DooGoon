package com.example.demo.controller.admin;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.beans.AccountModel;
import com.example.demo.beans.Repository.AccountRepository;
import com.example.demo.entity.account;
import com.example.demo.utils.HashUtil;

@Controller
@RequestMapping("/admin/accounts")
public class AccountController {
	
	@Autowired
	private AccountRepository accountRepo;

	@GetMapping("create_acc")
	public String create(@ModelAttribute("accounts") account acc) {
		return "/admin/accounts/create_acc";
	}

	@PostMapping("/store")
	public String store(@Valid @ModelAttribute("accounts") AccountModel model, BindingResult result) {
		if (result.hasErrors()) {
			return "/admin/accounts/create_acc";
		}

		account acc = new account();

		acc.setFullname(model.getFullname());
		acc.setUsername(model.getUsername());
		acc.setEmail(model.getEmail());
		acc.setPassword(model.getPassword());
		acc.setPhoto(model.getPhoto());
		acc.setAdmin(model.getAdmin());
		acc.setActivated(model.getActivated());
		
		String hashedPassword = HashUtil.hash(acc.getPassword());
		acc.setPassword(hashedPassword);
		
		this.accountRepo.save(acc);

		return "redirect:/admin/accounts/index";
	}

	@GetMapping("delete/{id}")
	public String delete(@PathVariable("id") account acc) {
		this.accountRepo.delete(acc);
		return "redirect:/admin/accounts/index";
	}

	@GetMapping("index")
	public String index(Model model, @RequestParam(name = "size", defaultValue = "3") Integer size,
			@RequestParam(name = "page", defaultValue = "0") Integer page) {
		Pageable pageable = PageRequest.of(page, size);
		Page<account> p = this.accountRepo.findAll(pageable);
		model.addAttribute("data", p);
		return "admin/accounts/index";
	}

	@GetMapping(value = "/edit/{id}")
	public String edit(Model model, @PathVariable("id") account acc) {

		model.addAttribute("acc", acc);
		return "admin/accounts/edit";
	}

	@PostMapping("/update/{id}")
	public String update(@PathVariable("id") account accountOld, AccountModel accountModel) {
		Integer idInteger = accountOld.getId();
		String fullnameString = accountModel.getFullname();
		String usernameString = accountModel.getUsername();
		String emailString = accountModel.getEmail();
		String photoString = accountModel.getPhoto();
		String passwordString = accountModel.getPassword();
		Integer avaitedInt = accountModel.getActivated();
		Integer adminInteger = accountModel.getAdmin();
		account account = new account();
		account.setFullname(fullnameString);
		account.setUsername(usernameString);
		account.setEmail(emailString);
		account.setPhoto(photoString);
		account.setPassword(passwordString);
		account.setAdmin(adminInteger);
		account.setActivated(avaitedInt);
		account.setId(idInteger);
		this.accountRepo.save(account);
		return "redirect:/admin/accounts/index";
	}
	
}
