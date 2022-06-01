package com.windhide.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.windhide.bean.OnlyWorktype;
import com.windhide.bean.WorkerT;
import com.windhide.mapper.WorkTMapper;

@Service
public class WorkTService {

	@Autowired
	WorkTMapper wm;
	
	

	public List<WorkerT> FindWork(){
		return wm.FindWork();
	}
	

	public List<OnlyWorktype> FindWorkType(){
		return wm.FindWorkType();
	}


	public int addWorkT(WorkerT wt) {
		// TODO Auto-generated method stub
		return wm.addWorkT(wt);
	}
	
	public void deleteWorkT(int id) {
		wm.deleteWorkT(id);
	}
	
	public void updateWorkT(WorkerT wt) {
		wm.updateWorkT(wt);
	};

}
