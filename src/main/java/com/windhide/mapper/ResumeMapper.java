package com.windhide.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.windhide.bean.Resume_edu;
import com.windhide.bean.Resume_exp;

@Mapper
public interface ResumeMapper {

	@Select("select * from resume_education")
	public List<Resume_edu> FindEdu();
	
	@Select("select * from resume_experience")
	public List<Resume_exp> FindExp();

	
	@Update("update resume_education set "
			+ "edu_bigcontext = '${edu_bigcontext}',"
			+ "timeline='${timeline}',"
			+ "edu_context='${edu_context}' "
			+ "where id = ${id}")
	public void updateEdu(Resume_edu edu);

	@Update("update resume_experience set "
			+ "exp_bigcontext = '${exp_bigcontext}',"
			+ "timeline='${timeline}',"
			+ "exp_context='${exp_context}' "
			+ "where id = ${id}")
	public void updateExp(Resume_exp exp);

	@Delete("delete from resume_experience where id = ${id}")
	public void removeExp(int id);

	@Delete("delete from resume_education where id = ${id}")
	public void removeEdu(int id);

	@Insert("insert into resume_education values(Null,'${edu_bigcontext}','${timeline}','${edu_context}')")
	public void addEdu(Resume_edu edu);
	
	@Insert("insert into resume_experience values(Null,'${exp_bigcontext}','${timeline}','${exp_context}')")
	public void addExp(Resume_exp exp);
	
}
