package com.credit.service;

import java.util.List;

import com.credit.entity.User;

public interface CommonService {

    public User findUserByUsernameAndPwdAndRole(String username, String pwd, String role);

    public User findSingleUser(String uid);

    public void updatePwd(String uid, String newpwd);

	public List<User> findAllUser();

	public void delete(String uid);

	public void addOrUpdateUser(User userObj);

}
