package com.windhide.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.windhide.bean.Little_blog;

@Mapper
public interface BlogMapper {

	@Select("select * from little_blog")
	public List<Little_blog> FindLittleBlog();
	
}
