package com.entity;

import java.sql.Timestamp;

public class News {
    private int id;
    private String name;
    private Timestamp insertTime;
    private Timestamp showTime;
    private String editor;
    private String content;
//无插入时间
    public News(String name, Timestamp showTime, String editor, String content) {
        this.name = name;
        this.showTime = showTime;
        this.editor = editor;
        this.content = content;
    }
//所有属性都有
    public News(int id, String name, Timestamp insertTime, Timestamp showTime, String editor, String content) {
        this.id = id;
        this.name = name;
        this.insertTime = insertTime;
        this.showTime = showTime;
        this.editor = editor;
        this.content = content;
    }
//无插入时间 有id
    public News(int id, String name, Timestamp showTime, String editor, String content) {
        this.id = id;
        this.name = name;
        this.showTime = showTime;
        this.editor = editor;
        this.content = content;
    }

    //没有id属性
    public News(String name, Timestamp insertTime, Timestamp showTime, String editor, String content) {
        this.name = name;
        this.insertTime = insertTime;
        this.showTime = showTime;
        this.editor = editor;
        this.content = content;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Timestamp getInsertTime() {
        return insertTime;
    }

    public void setInsertTime(Timestamp insertTime) {
        this.insertTime = insertTime;
    }

    public Timestamp getShowTime() {
        return showTime;
    }

    public void setShowTime(Timestamp showTime) {
        this.showTime = showTime;
    }

    public String getEditor() {
        return editor;
    }

    public void setEditor(String editor) {
        this.editor = editor;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
