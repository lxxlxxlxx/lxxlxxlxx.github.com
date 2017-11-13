package com.credit.service.impl;

import java.util.List;

import com.credit.dao.CommonDao;
import com.credit.entity.User;
import com.credit.service.CommonService;

public class CommonServiceImpl implements CommonService {

    private CommonDao dao;

    public CommonDao getDao() {
        return dao;
    }

    public void setDao(CommonDao dao) {
        this.dao = dao;
    }

    @Override
    public User findUserByUsernameAndPwdAndRole(String username, String pwd, String role) {
        return dao.findUserByUsernameAndPwdAndRole(username, pwd, role);
    }

    @Override
    public User findSingleUser(String uid) {
        return dao.findSingleUser(uid);
    }

    @Override
    public void updatePwd(String uid, String newpwd) {
        dao.updatePwd(uid, newpwd);
    }

	@Override
	public List<User> findAllUser() {
		return dao.findAllUser();
	}

	@Override
	public void delete(String uid) {
		dao.delete(uid);
		
	}

	@Override
	public void addOrUpdateUser(User userObj) {
		dao.addOrUpdateUser(userObj);
	}


}
