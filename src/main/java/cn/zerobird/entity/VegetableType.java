package cn.zerobird.entity;

public class VegetableType {
    private Integer vegetableTypeId;

    private String vegetableTypeName;

    public Integer getVegetableTypeId() {
        return vegetableTypeId;
    }

    public void setVegetableTypeId(Integer vegetableTypeId) {
        this.vegetableTypeId = vegetableTypeId;
    }

    public String getVegetableTypeName() {
        return vegetableTypeName;
    }

    public void setVegetableTypeName(String vegetableTypeName) {
        this.vegetableTypeName = vegetableTypeName == null ? null : vegetableTypeName.trim();
    }
}