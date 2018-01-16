package org.ssm.entity;

import java.util.Date;

public class Opinion {
    private Integer opinionId;

    private Integer userId;

    private Integer vegetableId;

    private String opinionText;

    private Date opinionTime;

    public Integer getOpinionId() {
        return opinionId;
    }

    public void setOpinionId(Integer opinionId) {
        this.opinionId = opinionId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getVegetableId() {
        return vegetableId;
    }

    public void setVegetableId(Integer vegetableId) {
        this.vegetableId = vegetableId;
    }

    public String getOpinionText() {
        return opinionText;
    }

    public void setOpinionText(String opinionText) {
        this.opinionText = opinionText == null ? null : opinionText.trim();
    }

    public Date getOpinionTime() {
        return opinionTime;
    }

    public void setOpinionTime(Date opinionTime) {
        this.opinionTime = opinionTime;
    }
}