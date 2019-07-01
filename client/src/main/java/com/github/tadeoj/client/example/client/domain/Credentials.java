package com.github.tadeoj.client.example.client.domain;

import org.dominokit.jacksonapt.annotation.JSONMapper;

@JSONMapper
public class Credentials {

    private String userName;
    private String password;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

}
