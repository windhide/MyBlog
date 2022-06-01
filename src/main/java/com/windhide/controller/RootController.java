package com.windhide.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.windhide.bean.Admin;
import com.windhide.bean.WorkerT;
import com.windhide.service.AdminService;
import com.windhide.service.WorkTService;

@Controller
public class RootController {

	@Autowired
	WorkTService wt;
	@Autowired
	AdminService as;

	@RequestMapping("/root")
	public String login() {
		return "root_login-light-login.jsp";
	}

	@RequestMapping("/root_login")
	public String login_to_Root(Admin ad) {
		Admin sq = as.login();
		System.out.println(sq.getAccount().equals(ad.getAccount()));
		System.out.println(sq.getPassword().equals(ad.getPassword()));
		if (sq.getAccount().equals(ad.getAccount()) && sq.getPassword().equals(ad.getPassword())) {
			return "root_index.jsp";
		} else {
			return "root_login-light-login.jsp";
		}

	}

	@RequestMapping("/root_data_list")
	public String root_data_list(Model model) {

		model.addAttribute("data_list", wt.FindWork());

		return "root_side-menu-light-crud-data-list.jsp";
	}
	
	@RequestMapping("/root_data_list_delete")
	public String root_data_list_delete(int id) {
		
		wt.deleteWorkT(id);
		
		return "root_data_list";
	}

	
	
}
