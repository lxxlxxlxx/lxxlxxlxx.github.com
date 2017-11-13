package com.credit.service;

import java.util.List;

import com.credit.entity.Ck;

public interface CkService {

    public List<Ck> findCkAll();

    public Ck findSingleCk(String Ckid);

    public void addOrUpdateCk(Ck Ckobj);

    public void deleteCk(String CkDelId);

    public void updateCkStatus(String Ckid);

}
