package com.credit.entity;

/**
 * Sq entity. @author MyEclipse Persistence Tools
 */

public class Sq implements java.io.Serializable {

    // Fields

    private int id;
    private int uid;
    private String dkzl;
    private String dkxz;
    private String dkdyp;
    private String dypje;
    private String dkje;
    private String sqrq;
    private String sprq;
    private String dkhtll;
    private String hkfs;
    private String mqhkje;
    private String status;
    private int fxpgdj;

    // Constructors

    /** default constructor */
    public Sq() {
    }

    /** full constructor */
    public Sq(int uid, String dkzl, String dkxz, String dkdyp, String dypje, String dkje, String sqrq, String sprq,
            String dkhtll, String hkfs, String mqhkje, String status, int fxpgdj) {
        this.uid = uid;
        this.dkzl = dkzl;
        this.dkxz = dkxz;
        this.dkdyp = dkdyp;
        this.dypje = dypje;
        this.dkje = dkje;
        this.sqrq = sqrq;
        this.sprq = sprq;
        this.dkhtll = dkhtll;
        this.hkfs = hkfs;
        this.mqhkje = mqhkje;
        this.status = status;
        this.fxpgdj = fxpgdj;
    }

    // Property accessors

    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUid() {
        return this.uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getDkzl() {
        return this.dkzl;
    }

    public void setDkzl(String dkzl) {
        this.dkzl = dkzl;
    }

    public String getDkxz() {
        return this.dkxz;
    }

    public void setDkxz(String dkxz) {
        this.dkxz = dkxz;
    }

    public String getDkdyp() {
        return this.dkdyp;
    }

    public void setDkdyp(String dkdyp) {
        this.dkdyp = dkdyp;
    }

    public String getDypje() {
        return this.dypje;
    }

    public void setDypje(String dypje) {
        this.dypje = dypje;
    }

    public String getDkje() {
        return this.dkje;
    }

    public void setDkje(String dkje) {
        this.dkje = dkje;
    }

    public String getSqrq() {
        return this.sqrq;
    }

    public void setSqrq(String sqrq) {
        this.sqrq = sqrq;
    }

    public String getSprq() {
        return this.sprq;
    }

    public void setSprq(String sprq) {
        this.sprq = sprq;
    }

    public String getDkhtll() {
        return this.dkhtll;
    }

    public void setDkhtll(String dkhtll) {
        this.dkhtll = dkhtll;
    }

    public String getHkfs() {
        return this.hkfs;
    }

    public void setHkfs(String hkfs) {
        this.hkfs = hkfs;
    }

    public String getMqhkje() {
        return this.mqhkje;
    }

    public void setMqhkje(String mqhkje) {
        this.mqhkje = mqhkje;
    }

    public String getStatus() {
        return this.status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getFxpgdj() {
        return this.fxpgdj;
    }

    public void setFxpgdj(int fxpgdj) {
        this.fxpgdj = fxpgdj;
    }

}
