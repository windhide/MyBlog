package com.windhide.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.windhide.bean.Resume_edu;
import com.windhide.service.AboutService;
import com.windhide.service.Big_blogService;
import com.windhide.service.LittleBlogService;
import com.windhide.service.ResumeService;
import com.windhide.service.WorkTService;

@Controller
public class AllController {

	@Autowired
	AboutService as;
	@Autowired
	ResumeService rs;
	@Autowired
	WorkTService ws;
	@Autowired
	LittleBlogService lbs;
	@Autowired
	Big_blogService bs;
	
	
	@RequestMapping("/")
	public String AllLoad(Model model) {
		model.addAttribute("about", as.FindAbout());
		model.addAttribute("Resume_edu", rs.FindEdu());
		model.addAttribute("Resume_exp", rs.FindExp());
		model.addAttribute("WorkT", ws.FindWork());
		model.addAttribute("WorkType", ws.FindWorkType());
		model.addAttribute("Little_Blog", lbs.FindLittleBlog());
		
		return "index.jsp";
	}
	
	
}
