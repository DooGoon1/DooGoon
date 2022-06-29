package com.example.demo.beans;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotBlank;
import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Component //đánh giấu class là một thành phần bên trong spring - khi spring chạy thì sẽ tự nhận diện component(thành phần) này và nạp vào IOC Container
public class User {
	@NotBlank(message = "Không được để trống")
	@Pattern(regexp = "a-zA-Z", message = "Họ tên sai định dạng")
	private String hoTen;
	
	@NotBlank(message = "Không được để trống")
	private String diaChi;
	
	@NotNull(message = "Không được để trống")
	private int gioiTinh;
	
	@NotBlank(message = "Không được để trống")
	@Email
	@Pattern(regexp = "\\w+@fpt.edu.vn", message = "Email sai định dạng")
	private String email;
	
	@NotBlank(message = "Không được để trống")
	private String password;
	
	@NotBlank(message = "Không được để trống")
	@Pattern(regexp = "0\\d{2}\\d{2}\\d{5}", message = "SDT sai định dạng")
	private String sdt;
	
	@NotBlank(message = "Không được để trống")
	private String avatar;
	
//	public String getHoTen() {
//		return hoTen;
//	}
//	public void setHoTen(String hoTen) {
//		this.hoTen = hoTen;
//	}
//	public String getDiaChi() {
//		return diaChi;
//	}
//	public void setDiaChi(String diaChi) {
//		this.diaChi = diaChi;
//	}
//	public int getGioiTinh() {
//		return gioiTinh;
//	}
//	public void setGioiTinh(int gioiTinh) {
//		this.gioiTinh = gioiTinh;
//	}
//	public String getEmail() {
//		return email;
//	}
//	public void setEmail(String email) {
//		this.email = email;
//	}
//	public String getPassword() {
//		return password;
//	}
//	public void setPassword(String password) {
//		this.password = password;
//	}
//	public String getSdt() {
//		return sdt;
//	}
//	public void setSdt(String sdt) {
//		this.sdt = sdt;
//	}
//	public String getAvatar() {
//		return avatar;
//	}
//	public void setAvatar(String avatar) {
//		this.avatar = avatar;
//	}
	
	
}
