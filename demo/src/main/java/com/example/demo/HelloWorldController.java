package com.example.demo;

import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/rest")
public class HelloWorldController {

	@GetMapping("/get")
	public String sayHello() {
		return "Hello World!!!" ;
	}
}
