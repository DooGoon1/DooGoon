package com.example.demo.controller.admin;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.beans.OrderModel;
import com.example.demo.beans.OrderdetailModel;
import com.example.demo.beans.Repository.AccountRepository;
import com.example.demo.beans.Repository.OrderRespository;
import com.example.demo.beans.Repository.OrderdetailRespository;
import com.example.demo.beans.Repository.ProductRespository;
import com.example.demo.entity.account;
import com.example.demo.entity.order_details;
import com.example.demo.entity.orders;
import com.example.demo.entity.products;

@Controller
@RequestMapping("/admin/order_detail")
public class OrderdetailController {

	@Autowired
	private OrderdetailRespository orderDeatailRepo;

	@Autowired
	private ProductRespository proRepo;

	@Autowired
	private OrderRespository orderRepo;
	
	@Autowired
	private AccountRepository accRepo;

	@GetMapping("/index_detail")
	public String index(Model model, @RequestParam(name = "size", defaultValue = "6") Integer size,
			@RequestParam(name = "page", defaultValue = "0") Integer page,
			@ModelAttribute("orderDetail") OrderdetailModel orderDetail, @ModelAttribute("oder") OrderModel oder) {
		
		List<order_details> lod=this.orderDeatailRepo.finODetailbyOderId(0);
		if(lod.size()>0) {
		model.addAttribute("dataa",lod);
		double thanhtien = 0;
		for (order_details orderDetails : lod) {
			thanhtien += orderDetails.getPrice();
		}
		model.addAttribute("thanhtien",thanhtien);
		}
		
		Pageable pageable = PageRequest.of(page, size);
		Page<products> p = this.proRepo.findAll(pageable);
		model.addAttribute("data", p);
		return "admin/order_detail/home_detail";
	}
	
	@PostMapping("/store/{id}")
	public String store(
		@PathVariable("id") products product,
		order_details oderdetail
	) 
	{		
		order_details check = this.orderDeatailRepo.findbyOrderdetail(0, product.getId());
		
		
		if(check == null) {
			order_details od = new order_details();
			od.setPrice(product.getPrice()*oderdetail.getQuantity());
			od.setQuantity(oderdetail.getQuantity());
			od.setProduct(product);
			od.setOrderId(0);
			
			this.orderDeatailRepo.save(od);
		}else {
			order_details od = new order_details();
			od.setId(check.getId());
			od.setQuantity(check.getQuantity() + oderdetail.getQuantity());
			od.setPrice(product.getPrice() * oderdetail.getQuantity());
			od.setProduct(product);
			od.setOrderId(0);
			
			this.orderDeatailRepo.save(od);
		}
		
		
		return "redirect:/admin/order_detail/index_detail";
	}
	
	@PostMapping("/update/{id}")
	public String update(
		@PathVariable("id") products product,
		order_details oderdetail
	) 
	{		
		order_details check = this.orderDeatailRepo.findbyOrderdetail(0, product.getId());
		
		
			order_details od = new order_details();
			od.setQuantity(oderdetail.getQuantity());
			od.setPrice(product.getPrice() * oderdetail.getQuantity());
			od.setProduct(product);
			od.setOrderId(0);
			od.setId(check.getId());
			
			this.orderDeatailRepo.save(od);
		
		return "redirect:/admin/order_detail/index_detail";
	}
	
//	@GetMapping("buy")
//	public String buy(
//			Model model,
//			@ModelAttribute("oder") OrderModel oder
//			) {
//		
//		List<order_details> lod=this.orderDeatailRepo.finODetailbyOderId(0);
//		if(lod.size()>0) {
//		model.addAttribute("data",lod);
//		double thanhtien = 0;
//		for (order_details orderDetails : lod) {
//			thanhtien += orderDetails.getPrice();
//		}
//		model.addAttribute("thanhtien",thanhtien);
//		return "/admin/order_detail/gio_hang";
//		}else {
//			return "redirect:/admin/order_detail/index_detail";
//		}
//	}
	
	@PostMapping("add")
	public String add(OrderModel oder) {
		List<order_details> lod=this.orderDeatailRepo.finODetailbyOderId(0);
		int idstr= this.orderRepo.finMaxIdOrder();
		int idadd=idstr+1;
		
		account acc = this.accRepo.findbyid(1);//lay user thêm vào order
		
		orders o = new orders();
		o.setUser(acc);
		o.setAddress(oder.getAddress());
		o.setCreatedDate(oder.getCreatedDate());
		
		
		for (order_details orderDetails : lod) {
			orderDetails.setOrderId(idadd);
			this.orderDeatailRepo.save(orderDetails);
		}
		
		this.orderRepo.save(o);
		return "redirect:/admin/order_detail/index_detail";
	}
	
	@GetMapping("/delete/{id}")
	public String delete(@PathVariable("id") order_details orderdetail)
	{
		this.orderDeatailRepo.delete(orderdetail);

		return "redirect:/admin/order_detail/index_detail";
	}

}
