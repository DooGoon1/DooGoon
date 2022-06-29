package com.example.demo.controller.admin;

import java.util.Calendar;
import java.util.Date;
import java.util.List;


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
import com.example.demo.beans.ProductModel;
import com.example.demo.beans.Repository.CategoryRespository;
import com.example.demo.beans.Repository.ProductRespository;
import com.example.demo.entity.categories;
import com.example.demo.entity.products;

@Controller
@RequestMapping("/admin/product")
public class ProductController {

	@Autowired
	private ProductRespository proRepo;
	
	
	@Autowired
	private CategoryRespository cateRepo;
	
	
	@GetMapping("/create_pro")
	public String create(@ModelAttribute("products") products pro, Model model) {
		List<categories> list = this.cateRepo.findAll();
		model.addAttribute("dsCate", list);
		return "/admin/product/create_pro";
	}
	
	@PostMapping("/store")
	public String store(@Valid @ModelAttribute("products") ProductModel model, BindingResult result) {
		if (result.hasErrors()) {
			return "redirect:/admin/product/create_pro";
		}
		
		products pro = new products();
		pro.setName(model.getName());
		pro.setImage(model.getImage());
		pro.setPrice(model.getPrice());
		pro.setAvailable(model.getAvailable());

		int idStr = model.getCategory().getId();
		categories cate = this.cateRepo.findById(idStr).get();
		pro.setCategory(cate);
		
		pro.setCreatedDate(model.getCreatedDate());

		this.proRepo.save(pro);
		return "redirect:/admin/product/index_pro";
	}
	
	@GetMapping("delete/{id}")
	public String delete(@PathVariable("id") products pro) {
		this.proRepo.delete(pro);
		return "redirect:/admin/product/index_pro";
	}
		
	@GetMapping("/edit/{id}")
	public String edit(Model model, @PathVariable("id") products pro) {
		List<categories> list = this.cateRepo.findAll();
		model.addAttribute("dsCate", list);
		model.addAttribute("pro", pro);
		return "admin/product/update_pro";
	}
	
	
	@PostMapping("/update/{id}")
	public String update(@Valid @PathVariable("id") products proOld, ProductModel proModel ) {
		System.out.println("------------------------------------------------------------------------");
		Integer idStr = proOld.getId();
		System.out.println(idStr);
		String nameStr = proModel.getName();
		String imgStr = proModel.getImage();
		Double priceStr = proModel.getPrice();
		Integer avaiStr = proModel.getAvailable();
		products pr = this.proRepo.findById(idStr).get();
		
		categories cate = proModel.getCategory();
		
		products pro = new products();
		pro.setId(idStr);
		pro.setName(nameStr);
		pro.setImage(imgStr);
		pro.setPrice(priceStr);
		pro.setAvailable(avaiStr);	
		pro.setCategory(cate);		
		pro.setCreatedDate(pr.getCreatedDate());

		this.proRepo.save(pro);
		return "redirect:/admin/product/index_pro";
	}
	
	
	@GetMapping("/index_pro")
	public String index(
		Model model,
		@RequestParam(name="size", defaultValue="4") Integer size,
		@RequestParam(name="page", defaultValue="0") Integer page
	) {
		Pageable pageable = PageRequest.of(page, size);
		System.out.println(pageable);
		Page<products> p = this.proRepo.findAll(pageable);
		model.addAttribute("data", p);
		List<products> pro = this.proRepo.findAll();
		model.addAttribute("dsPro", pro);
		return "admin/product/index_pro";
	}
}