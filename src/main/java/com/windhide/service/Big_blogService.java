package com.windhide.service;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.windhide.bean.Big_blog;
import com.windhide.bean.Little_blog;
import com.windhide.mapper.Big_blogMapper;

@Service
public class Big_blogService {

	@Autowired
	Big_blogMapper bm;
	
	public List<Big_blog> findAllBig_blog(){
		return bm.findAllBig_blog();
	}
	
	public Big_blog findBig_blogByid(int id) {
		
		return bm.findBig_blogByid(id);
	}

	public int Add_big_blog(Big_blog bb) {
		// TODO Auto-generated method stub
		return bm.Add_big_blog(bb);
	}

	public void add_little_blog(Little_blog lb) {
		// TODO Auto-generated method stub
		bm.add_little_blog(lb);
	}
	
	public void del_little_blog(int id) {
		bm.del_little_blog(id);
	}
	
	public void del_big_blog(int id) {
		bm.del_big_blog(id);
	}
	

	public void Upd_big_blog(Big_blog bb) {
		bm.Upd_big_blog(bb);
	}
	
	public void upd_little_blog(Little_blog lb) {
		bm.upd_little_blog(lb);
	}
	
	
}
