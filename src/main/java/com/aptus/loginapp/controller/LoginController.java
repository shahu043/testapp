package com.aptus.loginapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.neo4j.Neo4jProperties.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.aptus.loginapp.repository.UserRepository;
import com.aptus.loginapp.utility.CustomUserDetails;

@RestController
public class LoginController {

	 @Autowired
	    private UserRepository userRepo;
	     
	    @GetMapping("/welcome")
	    public String welcome() {
	    	CustomUserDetails myAuthentication=(CustomUserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	    	
	        return "Welcome " + myAuthentication.getFullName();
	    }
}
