package org.ssm.entity;

import java.util.Date;

public class Trading {
    private Integer tradingId;

    private String tradingType;

    private Integer userId;

    private Date tradingTime;

    private Float tradingBalace;

    public Integer getTradingId() {
        return tradingId;
    }

    public void setTradingId(Integer tradingId) {
        this.tradingId = tradingId;
    }

    public String getTradingType() {
        return tradingType;
    }

    public void setTradingType(String tradingType) {
        this.tradingType = tradingType == null ? null : tradingType.trim();
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Date getTradingTime() {
        return tradingTime;
    }

    public void setTradingTime(Date tradingTime) {
        this.tradingTime = tradingTime;
    }

    public Float getTradingBalace() {
        return tradingBalace;
    }

    public void setTradingBalace(Float tradingBalace) {
        this.tradingBalace = tradingBalace;
    }
}