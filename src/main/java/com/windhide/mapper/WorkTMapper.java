package com.windhide.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.windhide.bean.OnlyWorktype;
import com.windhide.bean.WorkerT;

@Mapper
public interface WorkTMapper {

	@Select("select * from workt a,work_type b where a.worktypeid = b.tid group by a.id")
	public List<WorkerT> FindWork();

	@Select("select * from work_type")
	public List<OnlyWorktype> FindWorkType();

	@Insert("insert into workt values(NULL,'${imgsrc}','${work_title}',${worktypeid})")
	public int addWorkT(WorkerT wt);

	@Delete("delete from workt where id = ${id}")
	public void deleteWorkT(int id);

	@Update("update workt set imgsrc = '${imgsrc}',work_title='${work_title}',worktypeid=${worktypeid} where id = ${id} ")
	public void updateWorkT(WorkerT wt);

}
