package com.windhide.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.windhide.bean.FileUpload;
import com.windhide.bean.WorkerT;
import com.windhide.service.WorkTService;

@Controller
public class UploadController {
	/*
	 * 
	 * 此处是管理上传的mapping -/WorkAdd
	 */

	@Autowired
	WorkTService ws;

	@Value("${file.location.path}")
	private String fileLocation;

	@RequestMapping("/WorkAdd")
	public String insert(WorkerT wt, @RequestParam("file") MultipartFile file) {
		String uri = FileUpload.upload(file, "blog_img", fileLocation);
		/*
		 * if want put on server there "upload" should be change to "/FileUpload" 
		 */
		wt.setImgsrc(uri.toString());
		int ret = ws.addWorkT(wt);

		if (ret != 0) {
			return "root_data_list";
		} else {
			return "redirect";
		}

	}
	
	@RequestMapping("/root_data_list_update")
	public String root_data_list_update(WorkerT wk, @RequestParam("file") MultipartFile file) {
		String uri = FileUpload.upload(file, "blog_img", fileLocation);
		/*
		 * if want put on server there "upload" should be change to "/FileUpload" 
		 */
		wk.setImgsrc(uri.toString());
		ws.updateWorkT(wk);

		return "root_data_list";
	}

}
