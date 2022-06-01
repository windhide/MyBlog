package com.windhide.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.windhide.bean.About;

@Mapper
public interface AboutMapper {

	@Select("select * from about")
	public About FindAbout();

	@Update("update about set name = '${name}',engname='${engname}',email='${email}',birthday='${birthday}',tel='${tel}',adr='${adr}',introduce='${introduce}' ")
	public void updateAbout(About about);
	
}
