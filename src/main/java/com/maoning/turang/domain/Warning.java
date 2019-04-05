package com.maoning.turang.domain;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.util.Date;

@Entity
public class Warning {
    @Id
    @GeneratedValue
    private Long id;

    /**
     * 超标项目
     */
    private String project;

    /**
     * 超标时间
     */
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date time;

    /**
     * 等级
     */
    private String degree;

    /**
     * 地址
     */
    private String position;

    /**
     * 是否解决
     */
    private Boolean deal;

    public Boolean getDeal() {
        return deal;
    }

    public void setDeal(Boolean deal) {
        this.deal = deal;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getProject() {
        return project;
    }

    public void setProject(String project) {
        this.project = project;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getDegree() {
        return degree;
    }

    public void setDegree(String degree) {
        this.degree = degree;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("{");
        sb.append("\"id\":")
                .append(id);
        sb.append(",\"project\":\"")
                .append(project).append('\"');
        sb.append(",\"time\":\"")
                .append(time).append('\"');
        sb.append(",\"degree\":\"")
                .append(degree).append('\"');
        sb.append(",\"position\":\"")
                .append(position).append('\"');
        sb.append('}');
        return sb.toString();
    }
}
