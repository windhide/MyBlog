package com.windhide.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.windhide.bean.Resume_edu;
import com.windhide.bean.Resume_exp;
import com.windhide.mapper.ResumeMapper;

@Service
public class ResumeService {

	@Autowired
	ResumeMapper rm;
	
	public List<Resume_edu> FindEdu(){
		return rm.FindEdu();
	};
	
	public List<Resume_exp> FindExp(){
		return rm.FindExp();
	}

	public void updatedEdu(Resume_edu edu) {
		// TODO Auto-generated method stub
		rm.updateEdu(edu);
	}

	public void updateExp(Resume_exp exp) {
		// TODO Auto-generated method stub
		rm.updateExp(exp);
	}

	public void removeExp(int id) {
		// TODO Auto-generated method stub
		rm.removeExp(id);
	}

	public void removeEdu(int id) {
		// TODO Auto-generated method stub
		rm.removeEdu(id);
	}

	public void addEdu(Resume_edu edu) {
		// TODO Auto-generated method stub
		rm.addEdu(edu);
	}

	public void addExp(Resume_exp exp) {
		// TODO Auto-generated method stub
		rm.addExp(exp);
	}

	

	
	
}
