package com.windhide.bean;

import java.io.File;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class FileUpload {

	
	 public static String upload(MultipartFile file, String path, String fileLocation) {
	        String fileFinishName = null;
	        try {
	            // 如果目录不存在则创建
	            File uploadDir = new File(fileLocation);
	            if (!uploadDir.exists()) {
	                uploadDir.mkdir();
	            }
	            //获取源文件名称
	            String fileName = file.getOriginalFilename();
	            fileFinishName = UUID.randomUUID() + fileName.substring(fileName.lastIndexOf("."), fileName.length());
	            //上传文件到指定目录下
	            File uploadFile = new File(uploadDir + uploadDir.separator + fileFinishName);
	            System.out.println(uploadFile);
	            file.transferTo(uploadFile);
	        } catch (Exception ex) {
	            ex.printStackTrace();
	        }finally {
				
			}
	        return path + "/" + fileFinishName;
	    }
	
	
}
