package com.credit.entity;

/**
 * Ck entity. @author MyEclipse Persistence Tools
 */

public class Ck implements java.io.Serializable {

    // Fields

    private int id;
    private String uname;
    private String rq;
    private String bj;
    private String lx;
    private String fx;
    private String sdate;

    // Constructors

    /** default constructor */
    public Ck() {
    }

    /** minimal constructor */
    public Ck(int id) {
        this.id = id;
    }

    /** full constructor */
    public Ck(int id, String uname, String rq, String bj, String lx, String fx, String sdate) {
        this.id = id;
        this.uname = uname;
        this.rq = rq;
        this.bj = bj;
        this.lx = lx;
        this.fx = fx;
        this.sdate = sdate;
    }

    // Property accessors

    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUname() {
        return this.uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getRq() {
        return this.rq;
    }

    public void setRq(String rq) {
        this.rq = rq;
    }

    public String getBj() {
        return this.bj;
    }

    public void setBj(String bj) {
        this.bj = bj;
    }

    public String getLx() {
        return this.lx;
    }

    public void setLx(String lx) {
        this.lx = lx;
    }

    public String getFx() {
        return this.fx;
    }

    public void setFx(String fx) {
        this.fx = fx;
    }

    public String getSdate() {
        return this.sdate;
    }

    public void setSdate(String sdate) {
        this.sdate = sdate;
    }

}
