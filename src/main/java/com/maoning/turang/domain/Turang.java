package com.maoning.turang.domain;

import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * @author maoning
 */
@Entity
public class Turang {
    @Id
    private Long id;
    private String caiYangDian;
    private Double youJiZhi;
    private Double quanDan;
    private Double jianJieDan;
    private Double ph;
    private Double youXiaoLin;
    private Double suXiaoJia;
    private Double huanXiaoJia;

    private Double youXiaoTie;

    private Double youXiaoTong;

    private Double youXiaoXin;

    private Double youXiaoLiu;
    private Double youXiaoMeng;

    private String position;

    private String name;

    private Double longitude;

    private Double latitude;




    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCaiYangDian() {
        return caiYangDian;
    }

    public void setCaiYangDian(String caiYangDian) {
        this.caiYangDian = caiYangDian;
    }

    public Double getYouJiZhi() {
        return youJiZhi;
    }

    public void setYouJiZhi(Double youJiZhi) {
        this.youJiZhi = youJiZhi;
    }

    public Double getQuanDan() {
        return quanDan;
    }

    public void setQuanDan(Double quanDan) {
        this.quanDan = quanDan;
    }

    public Double getJianJieDan() {
        return jianJieDan;
    }

    public void setJianJieDan(Double jianJieDan) {
        this.jianJieDan = jianJieDan;
    }

    public Double getPh() {
        return ph;
    }

    public void setPh(Double ph) {
        this.ph = ph;
    }

    public Double getYouXiaoLin() {
        return youXiaoLin;
    }

    public void setYouXiaoLin(Double youXiaoLin) {
        this.youXiaoLin = youXiaoLin;
    }

    public Double getSuXiaoJia() {
        return suXiaoJia;
    }

    public void setSuXiaoJia(Double suXiaoJia) {
        this.suXiaoJia = suXiaoJia;
    }

    public Double getHuanXiaoJia() {
        return huanXiaoJia;
    }

    public void setHuanXiaoJia(Double huanXiaoJia) {
        this.huanXiaoJia = huanXiaoJia;
    }

    public Double getYouXiaoTie() {
        return youXiaoTie;
    }

    public void setYouXiaoTie(Double youXiaoTie) {
        this.youXiaoTie = youXiaoTie;
    }

    public Double getYouXiaoTong() {
        return youXiaoTong;
    }

    public void setYouXiaoTong(Double youXiaoTong) {
        this.youXiaoTong = youXiaoTong;
    }

    public Double getYouXiaoXin() {
        return youXiaoXin;
    }

    public void setYouXiaoXin(Double youXiaoXin) {
        this.youXiaoXin = youXiaoXin;
    }

    public Double getYouXiaoLiu() {
        return youXiaoLiu;
    }

    public void setYouXiaoLiu(Double youXiaoLiu) {
        this.youXiaoLiu = youXiaoLiu;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Double getLongitude() {
        return longitude;
    }

    public void setLongitude(Double longitude) {
        this.longitude = longitude;
    }

    public Double getLatitude() {
        return latitude;
    }

    public void setLatitude(Double latitude) {
        this.latitude = latitude;
    }

    public Double getYouXiaoMeng() {
        return youXiaoMeng;
    }

    public void setYouXiaoMeng(Double youXiaoMeng) {
        this.youXiaoMeng = youXiaoMeng;
    }

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("{");
        sb.append("\"id\":")
                .append(id);
        sb.append(",\"jianJieDan\":")
                .append(jianJieDan);
        sb.append(",\"ph\":")
                .append(ph);
        sb.append(",\"youXiaoLin\":")
                .append(youXiaoLin);
        sb.append(",\"suXiaoJia\":")
                .append(suXiaoJia);
        sb.append(",\"huanXiaoJia\":")
                .append(huanXiaoJia);
        sb.append(",\"youXiaoTie\":")
                .append(youXiaoTie);
        sb.append(",\"youXiaoTong\":")
                .append(youXiaoTong);
        sb.append(",\"youXiaoXin\":")
                .append(youXiaoXin);
        sb.append(",\"youXiaoLiu\":")
                .append(youXiaoLiu);
        sb.append(",\"position\":\"")
                .append(position).append('\"');
        sb.append(",\"name\":\"")
                .append(name).append('\"');
        sb.append(",\"longitude\":")
                .append(longitude);
        sb.append(",\"latitude\":")
                .append(latitude);
        sb.append('}');
        return sb.toString();
    }
}
