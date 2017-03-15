package cn.zerobird.entity;

public class UserType {
    private Integer userTypeId;

    private String iserTypeName;

    public Integer getUserTypeId() {
        return userTypeId;
    }

    public void setUserTypeId(Integer userTypeId) {
        this.userTypeId = userTypeId;
    }

    public String getIserTypeName() {
        return iserTypeName;
    }

    public void setIserTypeName(String iserTypeName) {
        this.iserTypeName = iserTypeName == null ? null : iserTypeName.trim();
    }
}