package com.windhide.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.windhide.bean.Big_blog;
import com.windhide.bean.Little_blog;

@Mapper
public interface Big_blogMapper {

	@Select("select * from big_blog")
	public List<Big_blog> findAllBig_blog();

	
	@Select("select * from big_blog where blog_id = ${id}")
	public Big_blog findBig_blogByid(int id);


	@Insert("insert into big_blog values("
			+ "NULL,"
			+ "'${blog_frist_title}'," + 
			"'${blog_second_title}'," + 
			"'${blog_context1}'," + 
			"'${blog_blod_context}'," + 
			"'${blog_context3}'," + 
			"'${blog_say}'," + 
			"'${blog_context4}'," + 
			"'${blog_context5}'," + 
			"'${blog_context2}'," + 
			"'${img1}'," + 
			"'${img2}'," + 
			"'${img3}')")
	public int Add_big_blog(Big_blog bb);

	@Update("update big_blog set "
			+ "blog_frist_title = '${blog_frist_title}'," + 
			"blog_second_title = '${blog_second_title}'," + 
			"blog_context1 = '${blog_context1}'," + 
			"blog_blod_context = '${blog_blod_context}'," + 
			"blog_context3 = '${blog_context3}'," + 
			"blog_say = '${blog_say}'," + 
			"blog_context4 = '${blog_context4}'," + 
			"blog_context5 = '${blog_context5} ', " + 
			"blog_context2 = '${blog_context2}'," + 
			"img1 = '${img1}'," + 
			"img2 = '${img2}'," + 
			"img3 = '${img3}'"
			+ "where blog_id = ${blog_id}")
	public void Upd_big_blog(Big_blog bb);
	
	
	@Update("update little_blog set "
			+ "bigimgsrc = '${bigimgsrc}',"
			+ "blg_title = '${blg_title}',"
			+ "intro = '${intro}' where big_blog_id = ${big_blog_id}")
	public void upd_little_blog(Little_blog lb);
	
	@Insert("insert into little_blog values("
			+ "NULL,"
			+ "'${Day}',"
			+ "'${Mouth}',"
			+ "'${bigimgsrc}',"
			+ "'${blg_title}',"
			+ "'${intro}',"
			+ "${big_blog_id}"
			+ ")")
	public void add_little_blog(Little_blog lb);
	
	
	@Delete("delete from little_blog where big_blog_id = ${id}")
	public void del_little_blog(int id);
	
	@Delete("delete from big_blog where blog_id = ${id}")
	public void del_big_blog(int id);
}
