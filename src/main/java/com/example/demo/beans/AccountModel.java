package com.example.demo.beans;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class AccountModel {
	
	@NotEmpty(message = "Không được để trống")
	private String username;
	
	@NotBlank(message = "Không được để trống")
	@Size(min = 6, message = "Mật khẩu có ít nhất 6 ký tự")
	private String password;
	
	@NotBlank(message = "Không được để trống")
	private String fullname;
	
	@Email
	@Pattern(regexp = "\\w+@gmail.com", message = "Email sai định dạng")
	@NotEmpty(message = "Không được để trống")
	private String email;
	
	@NotEmpty(message = "Không được để trống")
	private String photo;
	
	private int activated;
	
	private int admin;
}
