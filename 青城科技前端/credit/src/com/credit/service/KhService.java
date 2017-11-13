package com.credit.service;

import java.util.List;

import com.credit.entity.Kh;

public interface KhService {

    public List<Kh> findKhAll();

    public Kh findSingleKh(String Khid);

    public void addOrUpdateKh(Kh Khobj);

    public void deleteKh(String KhDelId);

    public void updateKhStatus(String khid);

}
