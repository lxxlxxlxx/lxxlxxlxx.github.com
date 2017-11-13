package com.credit.action;

import java.util.List;

import com.credit.entity.Kh;
import com.credit.entity.Sq;
import com.credit.service.KhService;
import com.credit.service.SqService;
import com.opensymphony.xwork2.ActionContext;

public class SqAction {

    public String findSqAll() {
        try {
            List<Sq> sqList = biz.findSqAll();
            ActionContext.getContext().put("sqList", sqList);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "to_Sq_list";
    }

    public String beforeAddOrUpdateSq() {
        
        if (sqid != null && !sqid.equals("")) {
            Sq sq = biz.findSingleSq(sqid);
            ActionContext.getContext().put("sq", sq);
        } else {
            sqobj = new Sq();
            Sq sq = new Sq();
            ActionContext.getContext().put("sq", sq);
        }
        List<Kh> khs = khbiz.findKhAll();
        ActionContext.getContext().put("khs", khs);
        return "to_addOrEditSq";
    }

    public String addOrUpdateSq() {
        biz.addOrUpdateSq(sqobj);
        return "to_Sq_listAction";
    }

    public String deleteSq() {
        biz.deleteSq(sqDelId);
        return "to_Sq_listAction";
    }
    
    public String updateSqStatus(){
        biz.updateSqStatus(sqid);
        return "to_Sq_listAction";
    }
    public String updateSqFxpgdj(){
        biz.updateSqFxpgdj(sqid);
        return "to_Sq_listAction";
    }

    private SqService biz;
    private KhService khbiz;

    public SqService getBiz() {
        return biz;
    }

    public void setBiz(SqService biz) {
        this.biz = biz;
    }

    public KhService getKhbiz() {
        return khbiz;
    }

    public void setKhbiz(KhService khbiz) {
        this.khbiz = khbiz;
    }

    private String sqid;
    private Sq sqobj;
    private String sqDelId;

    public String getSqid() {
        return sqid;
    }

    public void setSqid(String sqid) {
        this.sqid = sqid;
    }

    public Sq getSqobj() {
        return sqobj;
    }

    public void setSqobj(Sq sqobj) {
        this.sqobj = sqobj;
    }

    public String getSqDelId() {
        return sqDelId;
    }

    public void setSqDelId(String sqDelId) {
        this.sqDelId = sqDelId;
    }

}
