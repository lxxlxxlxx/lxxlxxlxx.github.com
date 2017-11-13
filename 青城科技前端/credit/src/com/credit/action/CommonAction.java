package com.credit.action;

import java.sql.Timestamp;
import java.util.List;

import com.credit.entity.Ck;
import com.credit.entity.User;
import com.credit.service.CommonService;
import com.opensymphony.xwork2.ActionContext;

public class CommonAction {

    private CommonService biz;

    public CommonService getBiz() {
        return biz;
    }

    public void setBiz(CommonService biz) {
        this.biz = biz;
    }

    public String login() {
        User user = biz.findUserByUsernameAndPwdAndRole(username, pwd, role);
        if (user == null) {
            ActionContext.getContext().put("msg", "该用户不存在，请重新登录！");
            return "reLogin";
        } else {
            ActionContext.getContext().getSession().put("uname", username);
            ActionContext.getContext().getSession().put("uid", String.valueOf(user.getId()));
            ActionContext.getContext().getSession().put("roler", role);
            ActionContext.getContext().put("msg", "");
            return "to_index";
        }
    }

    public String logout() {
        ActionContext.getContext().getSession().put("uname", null);
        ActionContext.getContext().getSession().put("uid", null);
        ActionContext.getContext().getSession().put("roler", null);
        ActionContext.getContext().put("msg", null);
        return "reLogin";
    }
    public String findAll(){
    	
    	try {
    		List<User> userList = biz.findAllUser();
            ActionContext.getContext().put("userList", userList);
        } catch (Exception e) {
            e.printStackTrace();
        }
    	return "signLoginList";
    }
    public String beforeAddOrUpdate() {
        if (uid != null && !uid.equals("")) {
            User user = biz.findSingleUser(uid);
            ActionContext.getContext().put("user", user);
        } else {
            User user = new User();
            ActionContext.getContext().put("user", user);
        }
        return "to_addOrEditUser";
    }
    public String delete() {
        biz.delete(uid);
        return "to_signLoginAction";
    }
    public String signsubmit() {
    	userObj.setAddtime(new Timestamp(System.currentTimeMillis()));
        biz.addOrUpdateUser(userObj);
        return "to_signLoginAction";
    }
    private String oldpwd;
    private String newpwd;
    
    public String getOldpwd() {
        return oldpwd;
    }

    public void setOldpwd(String oldpwd) {
        this.oldpwd = oldpwd;
    }

    public String getNewpwd() {
        return newpwd;
    }

    public void setNewpwd(String newpwd) {
        this.newpwd = newpwd;
    }

    public String updatePwd(){
        String uid = (String) ActionContext.getContext().getSession().get("uid");
        User user = biz.findSingleUser(uid);
        if (user != null) {
            String pwd = user.getPwd();
            if (pwd.equals(oldpwd)) {
                biz.updatePwd(uid, newpwd);
                ActionContext.getContext().put("msg", "");
            }else{
                ActionContext.getContext().put("msg", "旧密码错误！");
            }
        }
        return "to_index";
    }

    private String uid;
    private String username;
    private String pwd;
    private String role;
    private User userObj;
    
    public User getUserObj() {
		return userObj;
	}

	public void setUserObj(User userObj) {
		this.userObj = userObj;
	}

	public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

}
