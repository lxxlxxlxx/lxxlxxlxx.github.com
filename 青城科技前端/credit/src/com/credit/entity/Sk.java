package com.credit.entity;

/**
 * Sk entity. @author MyEclipse Persistence Tools
 */

public class Sk implements java.io.Serializable {

    // Fields

    private int id;
    private String zh;
    private String zhm;
    private String rq;
    private String je;
    private String syje;
    private String czy;

    // Constructors

    /** default constructor */
    public Sk() {
    }

    /** full constructor */
    public Sk(String zh, String zhm, String rq, String je, String syje, String czy) {
        this.zh = zh;
        this.zhm = zhm;
        this.rq = rq;
        this.je = je;
        this.syje = syje;
        this.czy = czy;
    }

    // Property accessors

    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getZh() {
        return this.zh;
    }

    public void setZh(String zh) {
        this.zh = zh;
    }

    public String getZhm() {
        return this.zhm;
    }

    public void setZhm(String zhm) {
        this.zhm = zhm;
    }

    public String getRq() {
        return this.rq;
    }

    public void setRq(String rq) {
        this.rq = rq;
    }

    public String getJe() {
        return this.je;
    }

    public void setJe(String je) {
        this.je = je;
    }

    public String getSyje() {
        return this.syje;
    }

    public void setSyje(String syje) {
        this.syje = syje;
    }

    public String getCzy() {
        return this.czy;
    }

    public void setCzy(String czy) {
        this.czy = czy;
    }

}
