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
    
    private String UserName;
    private String password;
    private String email;
    private String red1;
    private String red2;
    private String img;

    public User() {
    }

    public User(String UserName, String password, String email, String red1, String red2, String img) {
        this.UserName = UserName;
        this.password = password;
        this.email = email;
        this.red1 = red1;
        this.red2 = red2;
        this.img = img;
    }

    public User(String UserName, String Password) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
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
