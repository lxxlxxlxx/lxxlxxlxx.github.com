package com.credit.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.credit.entity.Sk;

public class SkDao {

    private HibernateTemplate ht;

    public HibernateTemplate getHt() {
        return ht;
    }

    public void setHt(HibernateTemplate ht) {
        this.ht = ht;
    }

    public List<Sk> findSkAll() {
        List<Sk> list = ht.find("from Sk t order by t.id desc ");
        return list;
    }

    public Sk findSingleSk(String Skid) {
        Sk Sk = ht.get(Sk.class, Integer.parseInt(Skid));
        return Sk;
    }

    public List<Sk> findSkByUid(String uid) {
        List<Sk> list = new ArrayList<Sk>();
        String sql = "select t.id , d.SkName from Sk t left join Sk d on t.aid = d.id  where t.uid ="
                + uid;
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
                Sk uobj = new Sk();
                uobj.setId(Integer.parseInt(obj[0] + ""));
                list.add(uobj);
            }
        }

        return list;
    }

    public void addOrUpdateSk(Sk Skobj) {
        try {
            if(Skobj.getId()==0){
                ht.save(Skobj);
            }else{
                ht.update(Skobj);
            }
        } catch (DataAccessException e) {
            e.printStackTrace();
        }
    }

    public void deleteSk(String delid) {
        String sql = "delete from Sk where id=" + delid;
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
