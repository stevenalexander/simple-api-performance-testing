package com.example.helloworld.core;

public class Saying {
    private final String datetime;

    public Saying() {
        this.datetime = (new java.util.Date()).toString();
    }

    public String getDatetime() {
        return datetime;
    }
}