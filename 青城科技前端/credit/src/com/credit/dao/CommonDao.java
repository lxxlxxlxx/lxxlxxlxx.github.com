package com.credit.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.credit.entity.Ck;
import com.credit.entity.User;

public class CommonDao {

    private HibernateTemplate ht;

    public HibernateTemplate getHt() {
        return ht;
    }

    public void setHt(HibernateTemplate ht) {
        this.ht = ht;
    }

    public User findUserByUsernameAndPwdAndRole(String username, String pwd, String role) {
        List<User> list = null;
        try {
            list = ht.find("from User where uname='" + username + "' and pwd='" + pwd + "' and role='" + role + "'");
        } catch (DataAccessException e) {
            e.printStackTrace();
            throw new RuntimeException();
        }
        if (list != null && list.size() > 0) {
            return list.get(0);
        } else {
            return null;
        }
    }

    public User findSingleUser(String uid) {
        return ht.get(User.class, Integer.parseInt(uid));
    }

    public void updatePwd(String uid, String newpwd) {
        String sql = "update User set pwd='" + newpwd + "' where id=" + uid;
        Session session = null;
        try {
            session = ht.getSessionFactory().openSession();
            session.createSQLQuery(sql).executeUpdate();
        } catch (HibernateException e) {
            e.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }
    }

	public List<User> findAllUser() {
		List<User> list = ht.find("from User t order by t.id desc ");
        return list;
	}

	public void delete(String uid) {
		 String sql = "delete from User where id=" + uid;
	        Session session = null;
	        try {
	            session = ht.getSessionFactory().openSession();
	            session.createSQLQuery(sql).executeUpdate();
	        } catch (HibernateException e) {
	            e.printStackTrace();
	        } finally {
	            session.flush();
	            session.close();
	        }
		
	}

	public void addOrUpdateUser(User userObj) {
        try {
            if(userObj.getId()==0){
                ht.save(userObj);
            }else{
                ht.update(userObj);
            }
        } catch (DataAccessException e) {
            e.printStackTrace();
        }
	}

}
