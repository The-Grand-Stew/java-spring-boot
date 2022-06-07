package com.input1group.input2artifact;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

	@RequestMapping("/hello")
	public String helloWorld(){
		return "Hello World from Spring Boot";
	}
}
