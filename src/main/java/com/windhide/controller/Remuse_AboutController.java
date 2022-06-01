package com.windhide.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.windhide.bean.About;
import com.windhide.bean.Resume_edu;
import com.windhide.bean.Resume_exp;
import com.windhide.service.AboutService;
import com.windhide.service.ResumeService;

@Controller
public class Remuse_AboutController {

	@Autowired
	AboutService as;
	
	@Autowired
	ResumeService rs;
	
	
	
	
	@RequestMapping("/root_about")
	public String abouts(Model model) {
		model.addAttribute("list", as.FindAbout());
		return "root_about.jsp";
	}
	
	@RequestMapping("/aboutUpdate")
	public String About_Update(About about) {
		as.updateAbout(about);
		return "root_about";
	}
	
	
	
	
	@RequestMapping("/root_resume")
	public String remuses(Model model) {
		model.addAttribute("Edu", rs.FindEdu()); // 教育背景
		model.addAttribute("Exp", rs.FindExp());//  工作经验
		return "root_resume.jsp";
	}
	
	
	
	@RequestMapping("/root_eduupd")
	public String EduUpd(Resume_edu edu) {
		rs.updatedEdu(edu);
		return "root_resume";
	}
	
	@RequestMapping("/root_expupd")
	public String ExpUpd(Resume_exp exp) {
		rs.updateExp(exp);
		return "root_resume";
	}
	
	
	@RequestMapping("/root_deledu")
	public String EduUpd(int id) {
		rs.removeEdu(id);
		return "root_resume";
	}
	
	@RequestMapping("/root_delexp")
	public String ExpUpd(int id) {
		rs.removeExp(id);
		return "root_resume";
	}
	
	@RequestMapping("/root_eduadd")
	public String EduAdd(Resume_edu edu) {
		rs.addEdu(edu);
		return "root_resume";
	}
	
	@RequestMapping("/root_expadd")
	public String ExpAdd(Resume_exp exp) {
		rs.addExp(exp);
		return "root_resume";
	}
	
	
}
