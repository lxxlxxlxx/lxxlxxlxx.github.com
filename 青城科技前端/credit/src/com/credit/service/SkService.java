package com.credit.service;

import java.util.List;

import com.credit.entity.Sk;

public interface SkService {

    public List<Sk> findSkAll();

    public Sk findSingleSk(String Skid);

    public void addOrUpdateSk(Sk Skobj);

    public void deleteSk(String SkDelId);

}
