package com.example.demo.configurations;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.example.demo.Intercepter.AuthenInterceptor;
import com.example.demo.Intercepter.DemoLoginIntercepter;

@Configuration
public class InterCeptorConfig implements WebMvcConfigurer{
	@Autowired
	private AuthenInterceptor authen;
	
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(authen)
			.addPathPatterns("/admin/**")
			.excludePathPatterns("/Login");
	}
}
