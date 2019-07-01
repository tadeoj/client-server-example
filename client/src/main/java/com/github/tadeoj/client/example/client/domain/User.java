package com.github.tadeoj.client.example.client.domain;

import org.dominokit.jacksonapt.annotation.JSONMapper;

@JSONMapper
public class User {

    private String name;
    private String firstName;
    private String email;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

}
