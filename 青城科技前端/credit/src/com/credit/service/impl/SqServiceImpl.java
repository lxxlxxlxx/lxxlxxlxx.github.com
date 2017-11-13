package com.credit.service.impl;

import java.util.List;

import com.credit.dao.SqDao;
import com.credit.entity.Sq;
import com.credit.service.SqService;

public class SqServiceImpl implements SqService {

    private SqDao dao;

    public SqDao getDao() {
        return dao;
    }

    public void setDao(SqDao dao) {
        this.dao = dao;
    }

    @Override
    public List<Sq> findSqAll() {
        return dao.findSqAll();
    }

    @Override
    public Sq findSingleSq(String Sqid) {
        return dao.findSingleSq(Sqid);
    }

    @Override
    public void addOrUpdateSq(Sq Sqobj) {
        dao.addOrUpdateSq(Sqobj);
    }

    @Override
    public void deleteSq(String SqDelId) {
        dao.deleteSq(SqDelId);
    }

    @Override
    public void updateSqStatus(String sqid) {
        dao.updateSqStatus(sqid);
    }

    @Override
    public void updateSqFxpgdj(String sqid) {
        dao.updateSqFxpgdj(sqid);
    }

}
