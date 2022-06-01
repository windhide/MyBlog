package com.windhide.controller;

import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.windhide.bean.Big_blog;
import com.windhide.bean.FileUpload;
import com.windhide.bean.Little_blog;
import com.windhide.service.AboutService;
import com.windhide.service.Big_blogService;

@Controller
public class Big_blogController {

	@Autowired
	Big_blogService bs;
	@Autowired
	AboutService as;
	
	
	@Value("${file.location.path}")
	private String fileLocation;

	@RequestMapping("/big_blog_byid")
	public String getBig_blog_byid(int id, Model model) {
		model.addAttribute("bblog", bs.findBig_blogByid(id));
		model.addAttribute("about", as.FindAbout());
		return "single-post.jsp";
	}

	@RequestMapping("/big_blog_Add")
	public String insert(Big_blog bb, @RequestParam("file") MultipartFile[] file) {
		String uri1 = FileUpload.upload(file[0], "blog_img", fileLocation);
		String uri2 = FileUpload.upload(file[1], "blog_img", fileLocation);
		String uri3 = FileUpload.upload(file[2], "blog_img", fileLocation);
		/*
		 * if want put on server there "upload" should be change to "/FileUpload" 
		 */
		int lid = 0;
		
		bb.setImg1(uri1);
		bb.setImg2(uri2);
		bb.setImg3(uri3);
		int ret = bs.Add_big_blog(bb);

		List<Big_blog> list = bs.findAllBig_blog();
		for (int i = 0; i < list.size(); i++) {

			if(uri1.equals(list.get(i).getImg1()) && uri2.equals(list.get(i).getImg2()) &&  uri3.equals(list.get(i).getImg3()) ) {
				lid = list.get(i).getBlog_id();
			}
			
		}

		Calendar cal = Calendar.getInstance();
		Little_blog lb = new Little_blog();
		lb.setDay(cal.get(Calendar.DATE) + "");
		lb.setMouth((cal.get(Calendar.MONTH) + 1) + "");
		lb.setBigimgsrc(bb.getImg1());
		lb.setBlg_title(bb.getBlog_frist_title());
		lb.setIntro(bb.getBlog_second_title());
		lb.setBig_blog_id(lid);
		
		bs.add_little_blog(lb);

		if (ret != 0) {
			return "blog_data_list";
		} else {
			return "redirect";
		}

	}
	
	
	@RequestMapping("/blog_data_list")
	public String selectBlogData(Model model) {
		model.addAttribute("data_list", bs.findAllBig_blog());
		return "root_side-menu-blog-crud-data-list.jsp";
	}

	
	@RequestMapping("/delete_blog_data")
	public String delBlogData(int id) {
		bs.del_little_blog(id);
		bs.del_big_blog(id);
		return "blog_data_list";
	}
	
	@RequestMapping("/big_blog_Upd")
	public String delBlogData(Big_blog bb, @RequestParam("file") MultipartFile[] file) {

		String uri1 = FileUpload.upload(file[0], "blog_img", fileLocation);
		String uri2 = FileUpload.upload(file[1], "blog_img", fileLocation);
		String uri3 = FileUpload.upload(file[2], "blog_img", fileLocation);

		bb.setImg1(uri1);
		bb.setImg2(uri2);
		bb.setImg3(uri3);
		bs.Upd_big_blog(bb);
		
		Little_blog lb = new Little_blog();
		lb.setBigimgsrc(bb.getImg1());
		lb.setBlg_title(bb.getBlog_frist_title());
		lb.setIntro(bb.getBlog_second_title());
		lb.setBig_blog_id(bb.getBlog_id());
		bs.upd_little_blog(lb);
		
		
		return "blog_data_list";
	}
	
	
	
}
