package com.credit.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.credit.entity.Ck;
import com.credit.service.CkService;
import com.havenliu.document.DocumentHandler;
import com.opensymphony.xwork2.ActionContext;

public class CkAction {

    public String findCkAll() {
        try {
            List<Ck> ckList = biz.findCkAll();
            ActionContext.getContext().put("ckList", ckList);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "to_Ck_list";
    }

    public String beforeAddOrUpdateCk() {
        if (ckid != null && !ckid.equals("")) {
            Ck ck = biz.findSingleCk(ckid);
            ActionContext.getContext().put("ck", ck);
        } else {
            ckobj = new Ck();
            Ck ck = new Ck();
            ActionContext.getContext().put("ck", ck);
        }

        return "to_addOrEditCk";
    }

    public String addOrUpdateCk() {
        biz.addOrUpdateCk(ckobj);
        return "to_Ck_listAction";
    }

    public String deleteCk() {
        biz.deleteCk(ckDelId);
        return "to_Ck_listAction";
    }

    public String updateCkStatus() {
        biz.updateCkStatus(ckid);
        return "to_Ck_listAction";
    }

    public void downloadfile(){
        DocumentHandler dh=new DocumentHandler();
        Ck ck = biz.findSingleCk(ckid);
        Map<String, Object> dataMap = new HashMap<String, Object>();
        dataMap.put("id", ck.getId());
        dataMap.put("uname", ck.getUname());
        dataMap.put("rq", ck.getRq());
        dataMap.put("bj", ck.getBj());
        dataMap.put("lx", ck.getLx());
        dataMap.put("fx", ck.getFx());
        dataMap.put("sdate", ck.getSdate());
        String path = ServletActionContext.getRequest().getSession().getServletContext().getRealPath("/") + "file\\";
        dh.createDoc(dataMap,path+"123.doc");
    }
    private CkService biz;

    public CkService getBiz() {
        return biz;
    }

    public void setBiz(CkService biz) {
        this.biz = biz;
    }

    private String ckid;
    private Ck ckobj;
    private String ckDelId;

    public String getCkid() {
        return ckid;
    }

    public void setCkid(String ckid) {
        this.ckid = ckid;
    }

    public Ck getCkobj() {
        return ckobj;
    }

    public void setCkobj(Ck ckobj) {
        this.ckobj = ckobj;
    }

    public String getCkDelId() {
        return ckDelId;
    }

    public void setCkDelId(String ckDelId) {
        this.ckDelId = ckDelId;
    }

}
