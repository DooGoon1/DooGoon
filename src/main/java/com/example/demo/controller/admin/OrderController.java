package com.example.demo.controller.admin;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.beans.CategoryModel;
import com.example.demo.beans.OrderModel;
import com.example.demo.beans.Repository.AccountRepository;
import com.example.demo.beans.Repository.OrderRespository;
import com.example.demo.entity.account;
import com.example.demo.entity.categories;
import com.example.demo.entity.orders;
import com.example.demo.entity.products;

@Controller
@RequestMapping("/admin/order")
public class OrderController {
	@Autowired
	private OrderRespository orderRepo;
	
	@Autowired
	private AccountRepository accrepo;
	
	
	@GetMapping("/create_order")
	public String create(@ModelAttribute("order") orders order, Model model) {
		List<account> acc = this.accrepo.findAll();
		model.addAttribute("dsAcc",acc);
		return "/admin/order/create_order";
	}
	
	
	@PostMapping("/store")
	public String store(OrderModel model) {
		orders order = new orders();
		order.setCreatedDate(model.getCreatedDate());
		order.setAddress(model.getAddress());
		int idStr = model.getUser().getId();
		account acc = this.accrepo.findById(idStr).get();
		order.setUser(acc);
		this.orderRepo.save(order);
		return "redirect:/admin/order/index_order";
	}
	
	@GetMapping("/index_order")
	public String index(
		Model model,
		@RequestParam(name="size", defaultValue="4") Integer size,
		@RequestParam(name="page", defaultValue="0") Integer page
	) {
		Pageable pageable = PageRequest.of(page, size);
		System.out.println(pageable);
		Page<orders> p = this.orderRepo.findAll(pageable);
		model.addAttribute("data", p);
		return "admin/order/index_order";
	}
	
	@GetMapping("delete/{id}")
	public String delete(@PathVariable("id") orders order) {
		this.orderRepo.delete(order);
		return "redirect:/admin/order/index_order";
	}
	
	@GetMapping("/edit/{id}")
	public String edit(Model model, @PathVariable("id") orders order) {
		List<account> list = this.accrepo.findAll();
		model.addAttribute("dsAcc", list);
		model.addAttribute("order", order);
		return "admin/order/update_order";
	}
	
	@PostMapping("/update/{id}")
	public String update(@PathVariable("id") orders orderOld, OrderModel orderModel ) {
		Integer idInteger = orderOld.getId();
		String addStr = orderModel.getAddress();
		Date dateStr = orderModel.getCreatedDate();
		account account = orderModel.getUser();
		orders or = new orders();
		or.setId(idInteger);
		or.setAddress(addStr);
		or.setCreatedDate(dateStr);
		or.setUser(account);
		this.orderRepo.save(or);
		return "redirect:/admin/order/index_order";
	}
}
