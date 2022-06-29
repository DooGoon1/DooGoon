package com.example.demo.beans;

import java.util.Date;

import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

import com.example.demo.entity.categories;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Component
public class ProductModel {
	
	@NotEmpty(message = "Không được để trống")
	private String name;
	
	@NotEmpty(message = "Không được để trống")
	private String image;
	
	private double price;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@NotNull(message = "Không được để trống")
	private Date createdDate;
	
	private int available;

	private categories category;
}
