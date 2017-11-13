package com.credit.action;

import java.sql.Timestamp;
import java.util.List;

import com.credit.entity.Kh;
import com.credit.service.KhService;
import com.opensymphony.xwork2.ActionContext;

public class KhAction {

    public String findKhAll() {
        try {
            List<Kh> khList = biz.findKhAll();
            ActionContext.getContext().put("khList", khList);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "to_Kh_list";
    }

    public String beforeAddOrUpdateKh() {
        if (khid != null && !khid.equals("")) {
            Kh kh = biz.findSingleKh(khid);
            ActionContext.getContext().put("kh", kh);
        } else {
            khobj = new Kh();
            Kh kh = new Kh();
            ActionContext.getContext().put("kh", kh);
        }

        return "to_addOrEditKh";
    }

    public String addOrUpdateKh() {
        khobj.setAddtime(new Timestamp(System.currentTimeMillis()));
        biz.addOrUpdateKh(khobj);
        return "to_Kh_listAction";
    }

    public String deleteKh() {
        biz.deleteKh(khDelId);
        return "to_Kh_listAction";
    }

    public String updateKhStatus() {
        biz.updateKhStatus(khid);
        return "to_Kh_listAction";
    }

    private KhService biz;

    public KhService getBiz() {
        return biz;
    }

    public void setBiz(KhService biz) {
        this.biz = biz;
    }

    private String khid;
    private Kh khobj;
    private String khDelId;

    public String getKhid() {
        return khid;
    }

    public void setKhid(String khid) {
        this.khid = khid;
    }

    public Kh getKhobj() {
        return khobj;
    }

    public void setKhobj(Kh khobj) {
        this.khobj = khobj;
    }

    public String getKhDelId() {
        return khDelId;
    }

    public void setKhDelId(String khDelId) {
        this.khDelId = khDelId;
    }

}
