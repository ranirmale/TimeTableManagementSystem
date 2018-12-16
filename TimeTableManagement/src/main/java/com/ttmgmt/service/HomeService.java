package com.ttmgmt.service;



import com.ttmgmt.domain.User;

public interface HomeService {
	
    public void saveUser(User user);
	
	public User loginUser(User user);

	
}
