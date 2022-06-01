package com.windhide.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.windhide.bean.Admin;
import com.windhide.mapper.AdminMapper;

@Service
public class AdminService {

	@Autowired
	AdminMapper am;
	
	
	public Admin login() {
		return am.Login();
	}
	
	
}
