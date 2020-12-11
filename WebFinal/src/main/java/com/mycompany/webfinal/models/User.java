/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.webfinal.models;

/**
 *
 * @author aldom
 */
public class User {
    private int adm;
    private int edit;
    private int amon;
    private int mode;
    private String UserName;
    private String password;
    private String email;
    private String red1;
    private String red2;
    private String img;

    public User() {
    }

    public User(String email, String password) {
        this.password = password;
        this.email = email;
    }

    public User(int adm, int edit, int amon, int mode, String UserName) {
        this.adm = adm;
        this.edit = edit;
        this.amon = amon;
        this.mode = mode;
        this.UserName = UserName;
    }

    public User(int adm, int edit, int amon, int mode, String UserName, String password, String email, String red1, String red2, String img) {
        this.adm = adm;
        this.edit = edit;
        this.amon = amon;
        this.mode = mode;
        this.UserName = UserName;
        this.password = password;
        this.email = email;
        this.red1 = red1;
        this.red2 = red2;
        this.img = img;
    }

    public int getAdm() {
        return adm;
    }

    public void setAdm(int adm) {
        this.adm = adm;
    }

    public int getEdit() {
        return edit;
    }

    public void setEdit(int edit) {
        this.edit = edit;
    }

    public int getAmon() {
        return amon;
    }

    public void setAmon(int amon) {
        this.amon = amon;
    }

    public int getMode() {
        return mode;
    }

    public void setMode(int mode) {
        this.mode = mode;
    }

    public User(String UserName, String password, String email, String red1, String red2, String img) {
        this.UserName = UserName;
        this.password = password;
        this.email = email;
        this.red1 = red1;
        this.red2 = red2;
        this.img = img;
    }


    public String getUserName() {
        return UserName;
    }

    public void setUserName(String userName) {
        this.UserName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getRed1() {
        return red1;
    }

    public void setRed1(String red1) {
        this.red1 = red1;
    }

    public String getRed2() {
        return red2;
    }

    public void setRed2(String red2) {
        this.red2 = red2;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    
    
    
    
}
