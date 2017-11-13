package com.credit.dao;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.credit.entity.Kh;

public class KhDao {

    private HibernateTemplate ht;

    public HibernateTemplate getHt() {
        return ht;
    }

    public void setHt(HibernateTemplate ht) {
        this.ht = ht;
    }

    public List<Kh> findKhAll() {
        List<Kh> list = ht.find("from Kh t order by t.id desc ");
        return list;
    }

    public Kh findSingleKh(String Khid) {
        Kh Kh = ht.get(Kh.class, Integer.parseInt(Khid));
        return Kh;
    }

    public List<Kh> findKhByUid(String uid) {
        List<Kh> list = new ArrayList<Kh>();
        String sql = "select t.id , d.KhName from Kh t left join Kh d on t.aid = d.id  where t.uid =" + uid;
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
                Kh uobj = new Kh();
                uobj.setId(Integer.parseInt(obj[0] + ""));
                list.add(uobj);
            }
        }

        return list;
    }

    public void addOrUpdateKh(Kh Khobj) {
        try {
            if(Khobj.getId()==0){
                Khobj.setStatus("未审核");
                ht.save(Khobj);
            }else{
                ht.update(Khobj);
            }
        } catch (DataAccessException e) {
            e.printStackTrace();
        }
    }

    public void deleteKh(String delid) {
        String sql = "delete from Kh where id=" + delid;
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
    
    public void updateKhStatus(String khid){
        String sql = "update Kh set status='已审核' where id=" + khid;
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
