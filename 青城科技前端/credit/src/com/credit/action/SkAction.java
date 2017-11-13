package com.credit.action;

import java.util.List;

import com.credit.entity.Sk;
import com.credit.service.SkService;
import com.opensymphony.xwork2.ActionContext;

public class SkAction {

    public String findSkAll() {
        try {
            List<Sk> skList = biz.findSkAll();
            ActionContext.getContext().put("skList", skList);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "to_sk_list";
    }

    public String beforeAddOrUpdateSk() {
        if (skid != null && !skid.equals("")) {
            Sk sk = biz.findSingleSk(skid);
            ActionContext.getContext().put("sk", sk);
        } else {
            skobj = new Sk();
            Sk sk = new Sk();
            ActionContext.getContext().put("sk", sk);
        }

        return "to_addOrEditSk";
    }

    public String addOrUpdateSk() {
        biz.addOrUpdateSk(skobj);
        return "to_sk_listAction";
    }

    public String deleteSk() {
        biz.deleteSk(skDelId);
        return "to_sk_listAction";
    }

    private SkService biz;

    public SkService getBiz() {
        return biz;
    }

    public void setBiz(SkService biz) {
        this.biz = biz;
    }

    private String skid;
    private Sk skobj;
    private String skDelId;

    public String getSkid() {
        return skid;
    }

    public void setSkid(String skid) {
        this.skid = skid;
    }

    public Sk getSkobj() {
        return skobj;
    }

    public void setSkobj(Sk skobj) {
        this.skobj = skobj;
    }

    public String getSkDelId() {
        return skDelId;
    }

    public void setSkDelId(String skDelId) {
        this.skDelId = skDelId;
    }

}
