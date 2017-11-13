package com.credit.service.impl;

import java.util.List;

import com.credit.dao.KhDao;
import com.credit.entity.Kh;
import com.credit.service.KhService;

public class KhServiceImpl implements KhService {

    private KhDao dao;

    public KhDao getDao() {
        return dao;
    }

    public void setDao(KhDao dao) {
        this.dao = dao;
    }

    @Override
    public List<Kh> findKhAll() {
        return dao.findKhAll();
    }

    @Override
    public Kh findSingleKh(String Khid) {
        return dao.findSingleKh(Khid);
    }

    @Override
    public void addOrUpdateKh(Kh Khobj) {
        dao.addOrUpdateKh(Khobj);
    }

    @Override
    public void deleteKh(String KhDelId) {
        dao.deleteKh(KhDelId);
    }

    @Override
    public void updateKhStatus(String khid) {
        dao.updateKhStatus(khid);
    }

}
