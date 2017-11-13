package com.credit.dao;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.credit.entity.Sq;

public class SqDao {

    private HibernateTemplate ht;

    public HibernateTemplate getHt() {
        return ht;
    }

    public void setHt(HibernateTemplate ht) {
        this.ht = ht;
    }

    public List<Sq> findSqAll() {
        List<Sq> list = ht.find("from Sq t order by t.id desc ");
        return list;
    }

    public Sq findSingleSq(String Sqid) {
        Sq Sq = ht.get(Sq.class, Integer.parseInt(Sqid));
        return Sq;
    }

    public List<Sq> findSqByUid(String uid) {
        List<Sq> list = new ArrayList<Sq>();
        String sql = "select t.id , d.SqName from Sq t left join Sq d on t.aid = d.id  where t.uid =" + uid;
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
                Sq uobj = new Sq();
                uobj.setId(Integer.parseInt(obj[0] + ""));
                list.add(uobj);
            }
        }

        return list;
    }

    public void addOrUpdateSq(Sq Sqobj) {
        try {
            if (Sqobj.getId() == 0) {
                Sqobj.setStatus("未审核");
                Sqobj.setFxpgdj(1);
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                Sqobj.setSqrq(sdf.format(new Date()));
                ht.save(Sqobj);
            } else {
                ht.update(Sqobj);
            }
        } catch (DataAccessException e) {
            e.printStackTrace();
        }
    }

    public void deleteSq(String delid) {
        String sql = "delete from Sq where id=" + delid;
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

    public void updateSqStatus(String sqid) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String sql = "update Sq set status='已审核' , sprq='" + sdf.format(new Date()) + "' where id=" + sqid;
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

    public void updateSqFxpgdj(String sqid) {
        String sql = "update Sq set fxpgdj=fxpgdj+1 where id=" + sqid;
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
