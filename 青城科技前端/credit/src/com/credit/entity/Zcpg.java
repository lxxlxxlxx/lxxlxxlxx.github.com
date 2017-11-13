package com.credit.entity;

/**
 * Zcpg entity. @author MyEclipse Persistence Tools
 */

public class Zcpg implements java.io.Serializable {

    // Fields

    private int id;
    private String pgrq;
    private int sqid;
    private String pgje;
    private String pggs;
    private String cfdd;

    // Constructors

    /** default constructor */
    public Zcpg() {
    }

    /** full constructor */
    public Zcpg(String pgrq, int sqid, String pgje, String pggs, String cfdd) {
        this.pgrq = pgrq;
        this.sqid = sqid;
        this.pgje = pgje;
        this.pggs = pggs;
        this.cfdd = cfdd;
    }

    // Property accessors

    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPgrq() {
        return this.pgrq;
    }

    public void setPgrq(String pgrq) {
        this.pgrq = pgrq;
    }

    public int getSqid() {
        return this.sqid;
    }

    public void setSqid(int sqid) {
        this.sqid = sqid;
    }

    public String getPgje() {
        return this.pgje;
    }

    public void setPgje(String pgje) {
        this.pgje = pgje;
    }

    public String getPggs() {
        return this.pggs;
    }

    public void setPggs(String pggs) {
        this.pggs = pggs;
    }

    public String getCfdd() {
        return this.cfdd;
    }

    public void setCfdd(String cfdd) {
        this.cfdd = cfdd;
    }

}
