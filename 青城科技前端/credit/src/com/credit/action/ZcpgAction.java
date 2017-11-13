package com.credit.action;

import java.util.List;

import com.credit.entity.Sq;
import com.credit.entity.Zcpg;
import com.credit.service.SqService;
import com.credit.service.ZcpgService;
import com.opensymphony.xwork2.ActionContext;

public class ZcpgAction {

    public String findZcpgAll() {
        try {
            List<Zcpg> zcpgList = biz.findZcpgAll();
            ActionContext.getContext().put("zcpgList", zcpgList);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "to_Zcpg_list";
    }

    public String beforeAddOrUpdateZcpg() {
        if (zcpgid != null && !zcpgid.equals("")) {
            Zcpg zcpg = biz.findSingleZcpg(zcpgid);
            ActionContext.getContext().put("zcpg", zcpg);
        } else {
            zcpgobj = new Zcpg();
            Zcpg zcpg = new Zcpg();
            ActionContext.getContext().put("zcpg", zcpg);
        }
        List<Sq> sqs = sqbiz.findSqAll();
        ActionContext.getContext().put("sqs", sqs);
        return "to_addOrEditZcpg";
    }

    public String addOrUpdateZcpg() {
        biz.addOrUpdateZcpg(zcpgobj);
        return "to_Zcpg_listAction";
    }

    public String deleteZcpg() {
        biz.deleteZcpg(zcpgDelId);
        return "to_Zcpg_listAction";
    }

    private ZcpgService biz;
    private SqService sqbiz;

    public ZcpgService getBiz() {
        return biz;
    }

    public void setBiz(ZcpgService biz) {
        this.biz = biz;
    }

    public SqService getSqbiz() {
        return sqbiz;
    }

    public void setSqbiz(SqService sqbiz) {
        this.sqbiz = sqbiz;
    }

    private String zcpgid;
    private Zcpg zcpgobj;
    private String zcpgDelId;

    public String getZcpgid() {
        return zcpgid;
    }

    public void setZcpgid(String zcpgid) {
        this.zcpgid = zcpgid;
    }

    public Zcpg getZcpgobj() {
        return zcpgobj;
    }

    public void setZcpgobj(Zcpg zcpgobj) {
        this.zcpgobj = zcpgobj;
    }

    public String getZcpgDelId() {
        return zcpgDelId;
    }

    public void setZcpgDelId(String zcpgDelId) {
        this.zcpgDelId = zcpgDelId;
    }

}
