package com.credit.entity;

import java.sql.Timestamp;

/**
 * Kh entity. @author MyEclipse Persistence Tools
 */

public class Kh implements java.io.Serializable {

    // Fields

    private int id;
    private String name;
    private String sex;
    private int age;
    private String birthDate;
    private String idCardNumber;
    private String idCardAddress;
    private String maritalStatus;
    private String issuingAuthority;
    private String education;
    private String tel;
    private String email;
    private String immediateFamily;
    private String accountChange;
    private String company;
    private String companyAddress;
    private String workingHours;
    private String status;
    private String type;
    private Timestamp addtime;

    // Constructors

    /** default constructor */
    public Kh() {
    }

    /** full constructor */
    public Kh(String name, String sex, int age, String birthDate, String idCardNumber, String idCardAddress,
            String maritalStatus, String issuingAuthority, String education, String tel, String email,
            String immediateFamily, String accountChange, String company, String companyAddress, String workingHours,
            String status, String type, Timestamp addtime) {
        this.name = name;
        this.sex = sex;
        this.age = age;
        this.birthDate = birthDate;
        this.idCardNumber = idCardNumber;
        this.idCardAddress = idCardAddress;
        this.maritalStatus = maritalStatus;
        this.issuingAuthority = issuingAuthority;
        this.education = education;
        this.tel = tel;
        this.email = email;
        this.immediateFamily = immediateFamily;
        this.accountChange = accountChange;
        this.company = company;
        this.companyAddress = companyAddress;
        this.workingHours = workingHours;
        this.status = status;
        this.type = type;
        this.addtime = addtime;
    }

    // Property accessors

    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSex() {
        return this.sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public int getAge() {
        return this.age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getBirthDate() {
        return this.birthDate;
    }

    public void setBirthDate(String birthDate) {
        this.birthDate = birthDate;
    }

    public String getIdCardNumber() {
        return this.idCardNumber;
    }

    public void setIdCardNumber(String idCardNumber) {
        this.idCardNumber = idCardNumber;
    }

    public String getIdCardAddress() {
        return this.idCardAddress;
    }

    public void setIdCardAddress(String idCardAddress) {
        this.idCardAddress = idCardAddress;
    }

    public String getMaritalStatus() {
        return this.maritalStatus;
    }

    public void setMaritalStatus(String maritalStatus) {
        this.maritalStatus = maritalStatus;
    }

    public String getIssuingAuthority() {
        return this.issuingAuthority;
    }

    public void setIssuingAuthority(String issuingAuthority) {
        this.issuingAuthority = issuingAuthority;
    }

    public String getEducation() {
        return this.education;
    }

    public void setEducation(String education) {
        this.education = education;
    }

    public String getTel() {
        return this.tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getImmediateFamily() {
        return this.immediateFamily;
    }

    public void setImmediateFamily(String immediateFamily) {
        this.immediateFamily = immediateFamily;
    }

    public String getAccountChange() {
        return this.accountChange;
    }

    public void setAccountChange(String accountChange) {
        this.accountChange = accountChange;
    }

    public String getCompany() {
        return this.company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getCompanyAddress() {
        return this.companyAddress;
    }

    public void setCompanyAddress(String companyAddress) {
        this.companyAddress = companyAddress;
    }

    public String getWorkingHours() {
        return this.workingHours;
    }

    public void setWorkingHours(String workingHours) {
        this.workingHours = workingHours;
    }

    public String getStatus() {
        return this.status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getType() {
        return this.type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Timestamp getAddtime() {
        return this.addtime;
    }

    public void setAddtime(Timestamp addtime) {
        this.addtime = addtime;
    }

}
