package com;

import javax.persistence.*;
import java.sql.Date;

/**
 * Created by Administrator on 2016/3/16.
 */
@Entity
@Table(name = "salehome", schema = "", catalog = "comforlife")
public class SalehomeEntity {
    private int homeId;
    private Integer userId;
    private Integer buildNum;
    private Integer unitNum;
    private Integer roomNum;
    private Integer room;
    private Integer hall;
    private Integer toilet;
    private Integer area;
    private String homeArea;
    private String busiArea;
    private String conName;
    private Integer fitment;
    private Integer unitPrice;
    private Integer floor;
    private Integer totalFloor;
    private Integer direction;
    private Integer support;
    private String title;
    private String desc;
    private Integer check;
    private Integer attention;
    private String latlng;
    private Integer fs;
    private Date checkInTime;

    @Id
    @Column(name = "homeID", nullable = false, insertable = true, updatable = true)
    public int getHomeId() {
        return homeId;
    }

    public void setHomeId(int homeId) {
        this.homeId = homeId;
    }

    @Basic
    @Column(name = "userID", nullable = true, insertable = true, updatable = true)
    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    @Basic
    @Column(name = "buildNum", nullable = true, insertable = true, updatable = true)
    public Integer getBuildNum() {
        return buildNum;
    }

    public void setBuildNum(Integer buildNum) {
        this.buildNum = buildNum;
    }

    @Basic
    @Column(name = "unitNum", nullable = true, insertable = true, updatable = true)
    public Integer getUnitNum() {
        return unitNum;
    }

    public void setUnitNum(Integer unitNum) {
        this.unitNum = unitNum;
    }

    @Basic
    @Column(name = "roomNum", nullable = true, insertable = true, updatable = true)
    public Integer getRoomNum() {
        return roomNum;
    }

    public void setRoomNum(Integer roomNum) {
        this.roomNum = roomNum;
    }

    @Basic
    @Column(name = "room", nullable = true, insertable = true, updatable = true)
    public Integer getRoom() {
        return room;
    }

    public void setRoom(Integer room) {
        this.room = room;
    }

    @Basic
    @Column(name = "hall", nullable = true, insertable = true, updatable = true)
    public Integer getHall() {
        return hall;
    }

    public void setHall(Integer hall) {
        this.hall = hall;
    }

    @Basic
    @Column(name = "toilet", nullable = true, insertable = true, updatable = true)
    public Integer getToilet() {
        return toilet;
    }

    public void setToilet(Integer toilet) {
        this.toilet = toilet;
    }

    @Basic
    @Column(name = "area", nullable = true, insertable = true, updatable = true)
    public Integer getArea() {
        return area;
    }

    public void setArea(Integer area) {
        this.area = area;
    }

    @Basic
    @Column(name = "homeArea", nullable = true, insertable = true, updatable = true, length = 100)
    public String getHomeArea() {
        return homeArea;
    }

    public void setHomeArea(String homeArea) {
        this.homeArea = homeArea;
    }

    @Basic
    @Column(name = "busiArea", nullable = true, insertable = true, updatable = true, length = 100)
    public String getBusiArea() {
        return busiArea;
    }

    public void setBusiArea(String busiArea) {
        this.busiArea = busiArea;
    }

    @Basic
    @Column(name = "conName", nullable = true, insertable = true, updatable = true, length = 100)
    public String getConName() {
        return conName;
    }

    public void setConName(String conName) {
        this.conName = conName;
    }

    @Basic
    @Column(name = "fitment", nullable = true, insertable = true, updatable = true)
    public Integer getFitment() {
        return fitment;
    }

    public void setFitment(Integer fitment) {
        this.fitment = fitment;
    }

    @Basic
    @Column(name = "unitPrice", nullable = true, insertable = true, updatable = true)
    public Integer getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(Integer unitPrice) {
        this.unitPrice = unitPrice;
    }

    @Basic
    @Column(name = "floor", nullable = true, insertable = true, updatable = true)
    public Integer getFloor() {
        return floor;
    }

    public void setFloor(Integer floor) {
        this.floor = floor;
    }

    @Basic
    @Column(name = "totalFloor", nullable = true, insertable = true, updatable = true)
    public Integer getTotalFloor() {
        return totalFloor;
    }

    public void setTotalFloor(Integer totalFloor) {
        this.totalFloor = totalFloor;
    }

    @Basic
    @Column(name = "direction", nullable = true, insertable = true, updatable = true)
    public Integer getDirection() {
        return direction;
    }

    public void setDirection(Integer direction) {
        this.direction = direction;
    }

    @Basic
    @Column(name = "support", nullable = true, insertable = true, updatable = true)
    public Integer getSupport() {
        return support;
    }

    public void setSupport(Integer support) {
        this.support = support;
    }

    @Basic
    @Column(name = "title", nullable = true, insertable = true, updatable = true, length = 100)
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Basic
    @Column(name = "desc", nullable = true, insertable = true, updatable = true, length = 100)
    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    @Basic
    @Column(name = "check", nullable = true, insertable = true, updatable = true)
    public Integer getCheck() {
        return check;
    }

    public void setCheck(Integer check) {
        this.check = check;
    }

    @Basic
    @Column(name = "attention", nullable = true, insertable = true, updatable = true)
    public Integer getAttention() {
        return attention;
    }

    public void setAttention(Integer attention) {
        this.attention = attention;
    }

    @Basic
    @Column(name = "latlng", nullable = true, insertable = true, updatable = true, length = 100)
    public String getLatlng() {
        return latlng;
    }

    public void setLatlng(String latlng) {
        this.latlng = latlng;
    }

    @Basic
    @Column(name = "FS", nullable = true, insertable = true, updatable = true)
    public Integer getFs() {
        return fs;
    }

    public void setFs(Integer fs) {
        this.fs = fs;
    }

    @Basic
    @Column(name = "checkInTime", nullable = true, insertable = true, updatable = true)
    public Date getCheckInTime() {
        return checkInTime;
    }

    public void setCheckInTime(Date checkInTime) {
        this.checkInTime = checkInTime;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        SalehomeEntity that = (SalehomeEntity) o;

        if (homeId != that.homeId) return false;
        if (area != null ? !area.equals(that.area) : that.area != null) return false;
        if (attention != null ? !attention.equals(that.attention) : that.attention != null) return false;
        if (buildNum != null ? !buildNum.equals(that.buildNum) : that.buildNum != null) return false;
        if (busiArea != null ? !busiArea.equals(that.busiArea) : that.busiArea != null) return false;
        if (check != null ? !check.equals(that.check) : that.check != null) return false;
        if (checkInTime != null ? !checkInTime.equals(that.checkInTime) : that.checkInTime != null) return false;
        if (conName != null ? !conName.equals(that.conName) : that.conName != null) return false;
        if (desc != null ? !desc.equals(that.desc) : that.desc != null) return false;
        if (direction != null ? !direction.equals(that.direction) : that.direction != null) return false;
        if (fitment != null ? !fitment.equals(that.fitment) : that.fitment != null) return false;
        if (floor != null ? !floor.equals(that.floor) : that.floor != null) return false;
        if (fs != null ? !fs.equals(that.fs) : that.fs != null) return false;
        if (hall != null ? !hall.equals(that.hall) : that.hall != null) return false;
        if (homeArea != null ? !homeArea.equals(that.homeArea) : that.homeArea != null) return false;
        if (latlng != null ? !latlng.equals(that.latlng) : that.latlng != null) return false;
        if (room != null ? !room.equals(that.room) : that.room != null) return false;
        if (roomNum != null ? !roomNum.equals(that.roomNum) : that.roomNum != null) return false;
        if (support != null ? !support.equals(that.support) : that.support != null) return false;
        if (title != null ? !title.equals(that.title) : that.title != null) return false;
        if (toilet != null ? !toilet.equals(that.toilet) : that.toilet != null) return false;
        if (totalFloor != null ? !totalFloor.equals(that.totalFloor) : that.totalFloor != null) return false;
        if (unitNum != null ? !unitNum.equals(that.unitNum) : that.unitNum != null) return false;
        if (unitPrice != null ? !unitPrice.equals(that.unitPrice) : that.unitPrice != null) return false;
        if (userId != null ? !userId.equals(that.userId) : that.userId != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = homeId;
        result = 31 * result + (userId != null ? userId.hashCode() : 0);
        result = 31 * result + (buildNum != null ? buildNum.hashCode() : 0);
        result = 31 * result + (unitNum != null ? unitNum.hashCode() : 0);
        result = 31 * result + (roomNum != null ? roomNum.hashCode() : 0);
        result = 31 * result + (room != null ? room.hashCode() : 0);
        result = 31 * result + (hall != null ? hall.hashCode() : 0);
        result = 31 * result + (toilet != null ? toilet.hashCode() : 0);
        result = 31 * result + (area != null ? area.hashCode() : 0);
        result = 31 * result + (homeArea != null ? homeArea.hashCode() : 0);
        result = 31 * result + (busiArea != null ? busiArea.hashCode() : 0);
        result = 31 * result + (conName != null ? conName.hashCode() : 0);
        result = 31 * result + (fitment != null ? fitment.hashCode() : 0);
        result = 31 * result + (unitPrice != null ? unitPrice.hashCode() : 0);
        result = 31 * result + (floor != null ? floor.hashCode() : 0);
        result = 31 * result + (totalFloor != null ? totalFloor.hashCode() : 0);
        result = 31 * result + (direction != null ? direction.hashCode() : 0);
        result = 31 * result + (support != null ? support.hashCode() : 0);
        result = 31 * result + (title != null ? title.hashCode() : 0);
        result = 31 * result + (desc != null ? desc.hashCode() : 0);
        result = 31 * result + (check != null ? check.hashCode() : 0);
        result = 31 * result + (attention != null ? attention.hashCode() : 0);
        result = 31 * result + (latlng != null ? latlng.hashCode() : 0);
        result = 31 * result + (fs != null ? fs.hashCode() : 0);
        result = 31 * result + (checkInTime != null ? checkInTime.hashCode() : 0);
        return result;
    }
}
