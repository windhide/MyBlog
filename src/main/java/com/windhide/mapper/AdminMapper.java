package com.windhide.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.windhide.bean.Admin;

@Mapper
public interface AdminMapper {

	
	@Select("select * from admin_account")
	public Admin Login();
	
	
}
