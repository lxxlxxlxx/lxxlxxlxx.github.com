package com.credit.dao;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.credit.entity.Zcpg;

public class ZcpgDao {

    private HibernateTemplate ht;

    public HibernateTemplate getHt() {
        return ht;
    }

    public void setHt(HibernateTemplate ht) {
        this.ht = ht;
    }

    public List<Zcpg> findZcpgAll() {
        List<Zcpg> list = ht.find("from Zcpg t order by t.id desc ");
        return list;
    }

    public Zcpg findSingleZcpg(String Zcpgid) {
        Zcpg Zcpg = ht.get(Zcpg.class, Integer.parseInt(Zcpgid));
        return Zcpg;
    }

    public List<Zcpg> findZcpgByUid(String uid) {
        List<Zcpg> list = new ArrayList<Zcpg>();
        String sql = "select t.id , d.ZcpgName from Zcpg t left join Zcpg d on t.aid = d.id  where t.uid ="
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
                Zcpg uobj = new Zcpg();
                uobj.setId(Integer.parseInt(obj[0] + ""));
                list.add(uobj);
            }
        }

        return list;
    }

    public void addOrUpdateZcpg(Zcpg Zcpgobj) {
        try {
            if(Zcpgobj.getId()==0){
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                Zcpgobj.setPgrq(sdf.format(new Date()));
                ht.save(Zcpgobj);
            }else{
                ht.update(Zcpgobj);
            }
        } catch (DataAccessException e) {
            e.printStackTrace();
        }
    }

    public void deleteZcpg(String delid) {
        String sql = "delete from Zcpg where id=" + delid;
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
