package com.ttmgmt.dao;



import com.ttmgmt.domain.User;

public interface BaseDao {
	
	public void saveUser(User user);
	
	public User loginUser(User user);

}
