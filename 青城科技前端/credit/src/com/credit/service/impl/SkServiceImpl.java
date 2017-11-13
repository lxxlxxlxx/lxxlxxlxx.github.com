package com.credit.service.impl;

import java.util.List;

import com.credit.dao.SkDao;
import com.credit.entity.Sk;
import com.credit.service.SkService;

public class SkServiceImpl implements SkService {

    private SkDao dao;

    public SkDao getDao() {
        return dao;
    }

    public void setDao(SkDao dao) {
        this.dao = dao;
    }

    @Override
    public List<Sk> findSkAll() {
        return dao.findSkAll();
    }

    @Override
    public Sk findSingleSk(String Skid) {
        return dao.findSingleSk(Skid);
    }

    @Override
    public void addOrUpdateSk(Sk Skobj) {
        dao.addOrUpdateSk(Skobj);
    }

    @Override
    public void deleteSk(String SkDelId) {
        dao.deleteSk(SkDelId);
    }

}
