package com.credit.dao;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.credit.entity.Ck;

public class CkDao {

    private HibernateTemplate ht;

    public HibernateTemplate getHt() {
        return ht;
    }

    public void setHt(HibernateTemplate ht) {
        this.ht = ht;
    }

    public List<Ck> findCkAll() {
        List<Ck> list = ht.find("from Ck t order by t.id desc ");
        return list;
    }

    public Ck findSingleCk(String Ckid) {
        Ck Ck = ht.get(Ck.class, Integer.parseInt(Ckid));
        return Ck;
    }

    public List<Ck> findCkByUid(String uid) {
        List<Ck> list = new ArrayList<Ck>();
        String sql = "select t.id , d.CkName from Ck t left join Ck d on t.aid = d.id  where t.uid =" + uid;
        Session session = null;
        List<Object[]> tmplist = null;
        try {
            session = ht.getSessionFactory().openSession();
            tmplist = session.createSQLQuery(sql).list();
        } catch (HibernateException e) {
            e.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }
        if (tmplist != null && tmplist.size() > 0) {
            for (Object[] obj : tmplist) {
                Ck uobj = new Ck();
                uobj.setId(Integer.parseInt(obj[0] + ""));
                list.add(uobj);
            }
        }

        return list;
    }

    public void addOrUpdateCk(Ck Ckobj) {
        try {
            if(Ckobj.getId()==0){
                ht.save(Ckobj);
            }else{
                ht.update(Ckobj);
            }
        } catch (DataAccessException e) {
            e.printStackTrace();
        }
    }

    public void deleteCk(String delid) {
        String sql = "delete from Ck where id=" + delid;
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
    
    public void updateCkStatus(String Ckid){
        String sql = "update Ck set status='已审核' where id=" + Ckid;
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
}
