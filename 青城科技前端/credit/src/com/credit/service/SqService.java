package com.credit.service;

import java.util.List;

import com.credit.entity.Sq;

public interface SqService {

    public List<Sq> findSqAll();

    public Sq findSingleSq(String Sqid);

    public void addOrUpdateSq(Sq Sqobj);

    public void deleteSq(String SqDelId);

    public void updateSqStatus(String sqid);

    public void updateSqFxpgdj(String sqid);

}
