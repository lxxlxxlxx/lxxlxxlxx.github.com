package com.credit.service.impl;

import java.util.List;

import com.credit.dao.ZcpgDao;
import com.credit.entity.Zcpg;
import com.credit.service.ZcpgService;

public class ZcpgServiceImpl implements ZcpgService {

    private ZcpgDao dao;

    public ZcpgDao getDao() {
        return dao;
    }

    public void setDao(ZcpgDao dao) {
        this.dao = dao;
    }

    @Override
    public List<Zcpg> findZcpgAll() {
        return dao.findZcpgAll();
    }

    @Override
    public Zcpg findSingleZcpg(String Zcpgid) {
        return dao.findSingleZcpg(Zcpgid);
    }

    @Override
    public void addOrUpdateZcpg(Zcpg Zcpgobj) {
        dao.addOrUpdateZcpg(Zcpgobj);
    }

    @Override
    public void deleteZcpg(String ZcpgDelId) {
        dao.deleteZcpg(ZcpgDelId);
    }

}
