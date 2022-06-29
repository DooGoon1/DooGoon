package com.example.demo.beans;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Data
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Student {
	String name;
	String email;
	Double diem;
	Boolean gioiTinh;
	String khoa;
}
