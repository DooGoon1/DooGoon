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
import com.example.demo.beans.CategoryModel;
import com.example.demo.beans.User;
import com.example.demo.beans.Repository.CategoryRespository;
import com.example.demo.entity.account;
import com.example.demo.entity.categories;

@Controller
@RequestMapping("/admin/category")
public class CategoryController {
	@Autowired
	private CategoryRespository cateRespo;
	
	@GetMapping("index_cate")
	public String index(Model model, @RequestParam(name = "size", defaultValue = "4") Integer size,
							@RequestParam(name = "page", defaultValue = "0") Integer page) {
		Pageable able = PageRequest.of(page, size);
		Page<categories> p = this.cateRespo.findAll(able);
		model.addAttribute("data", p);
		
		return "/admin/category/index_cate";
	}
	
	@GetMapping("create_cate")
	public String create(@ModelAttribute("category") categories cate) {
		return "/admin/category/create_cate";
	}
	
	@PostMapping("/store")
	public String store(@Valid @ModelAttribute("category") CategoryModel model, BindingResult result) {
		if (result.hasErrors()) {
			return "/admin/category/create_cate";
		}
		
		categories cate = new categories();
		cate.setName(model.getName());
		
		this.cateRespo.save(cate);
		return "redirect:/admin/category/index_cate";
	}
	
	@GetMapping("delete/{id}")
	public String delete(@PathVariable("id") categories cate) {
		this.cateRespo.delete(cate);
		return "redirect:/admin/category/index_cate";
	}
	
	@GetMapping("/edit/{id}")
	public String edit(Model model, @PathVariable("id") categories cate) {

		model.addAttribute("cate", cate);
		return "admin/category/update_cate";
	}
	
	@PostMapping("/update/{id}")
	public String update(@PathVariable("id") categories cateOld, CategoryModel cateModel ) {
		Integer idInteger = cateOld.getId();
		String nameStr = cateModel.getName();
		categories category = new categories();
		category.setId(idInteger);
		category.setName(nameStr);
		this.cateRespo.save(category);
		return "redirect:/admin/category/index_cate";
	}
}
