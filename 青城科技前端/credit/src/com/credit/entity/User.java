package com.credit.entity;

import java.sql.Timestamp;

/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User implements java.io.Serializable {

    // Fields

    private int id;
    private String uname;
    private String pwd;
    private String role;
    private Timestamp addtime;

    // Constructors

    /** default constructor */
    public User() {
    }

    /** full constructor */
    public User(String uname, String pwd, String role, Timestamp addtime) {
        this.uname = uname;
        this.pwd = pwd;
        this.role = role;
        this.addtime = addtime;
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

    public String getPwd() {
        return this.pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getRole() {
        return this.role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public Timestamp getAddtime() {
        return this.addtime;
    }

    public void setAddtime(Timestamp addtime) {
        this.addtime = addtime;
    }

}
