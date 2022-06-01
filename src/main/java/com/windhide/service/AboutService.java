package com.windhide.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.windhide.bean.About;
import com.windhide.mapper.AboutMapper;

@Service
public class AboutService {

	@Autowired
	AboutMapper am;
	
	public About FindAbout() {
		return am.FindAbout();
	}

	public void updateAbout(About about) {
		am.updateAbout(about);
		
	};
	
	
}
