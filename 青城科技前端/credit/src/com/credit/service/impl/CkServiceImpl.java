package com.credit.service.impl;

import java.util.List;

import com.credit.dao.CkDao;
import com.credit.entity.Ck;
import com.credit.service.CkService;

public class CkServiceImpl implements CkService {

    private CkDao dao;

    public CkDao getDao() {
        return dao;
    }

    public void setDao(CkDao dao) {
        this.dao = dao;
    }

    @Override
    public List<Ck> findCkAll() {
        return dao.findCkAll();
    }

    @Override
    public Ck findSingleCk(String Ckid) {
        return dao.findSingleCk(Ckid);
    }

    @Override
    public void addOrUpdateCk(Ck Ckobj) {
        dao.addOrUpdateCk(Ckobj);
    }

    @Override
    public void deleteCk(String CkDelId) {
        dao.deleteCk(CkDelId);
    }

    @Override
    public void updateCkStatus(String Ckid) {
        dao.updateCkStatus(Ckid);
    }

}
