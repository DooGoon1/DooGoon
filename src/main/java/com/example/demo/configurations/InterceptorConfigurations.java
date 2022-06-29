package com.example.demo.configurations;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.example.demo.Intercepter.DemoLoginIntercepter;

@Configuration
public class InterceptorConfigurations implements WebMvcConfigurer{
	
	@Autowired
	private DemoLoginIntercepter demo;

	public void addInterceptor(InterceptorRegistry registry) {
		registry.addInterceptor(demo).addPathPatterns("/hello");
	}
}
