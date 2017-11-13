package com.credit.service;

import java.util.List;

import com.credit.entity.Zcpg;

public interface ZcpgService {

    public List<Zcpg> findZcpgAll();

    public Zcpg findSingleZcpg(String Zcpgid);

    public void addOrUpdateZcpg(Zcpg Zcpgobj);

    public void deleteZcpg(String ZcpgDelId);

}
