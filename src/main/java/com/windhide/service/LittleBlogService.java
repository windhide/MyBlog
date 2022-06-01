package com.windhide.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.windhide.bean.Little_blog;
import com.windhide.mapper.BlogMapper;

@Service
public class LittleBlogService {

	@Autowired
	BlogMapper bm;
	
	public List<Little_blog> FindLittleBlog() {
		return bm.FindLittleBlog();
	}
	
}
