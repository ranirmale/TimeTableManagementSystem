package com.ttmgmt.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.ttmgmt.dao.BaseDao;
import com.ttmgmt.domain.User;

public class HomeServiceImpl implements HomeService {
    
	@Autowired
	private BaseDao baseDao;
	
	public void setBaseDao(BaseDao baseDao) {
		this.baseDao=baseDao;
	}
	
	
	@Override
	public void saveUser(User user) {
		baseDao.saveUser(user);

	}

	@Override
	public User loginUser(User user) {
		
		return baseDao.loginUser(user);
	}

}
