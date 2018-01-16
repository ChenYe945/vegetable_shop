package org.ssm.entity;

public class Vegetable {
    private Integer vegetableId;

    private Integer vegetableTypeId;

    private Integer vegetableProducedId;

    private Integer supplierId;

    private String vegetableName;

    private Float vegetablePrice;

    private String vegetableDescribe;

    private String vegetablePicture;

    public Integer getVegetableId() {
        return vegetableId;
    }

    public void setVegetableId(Integer vegetableId) {
        this.vegetableId = vegetableId;
    }

    public Integer getVegetableTypeId() {
        return vegetableTypeId;
    }

    public void setVegetableTypeId(Integer vegetableTypeId) {
        this.vegetableTypeId = vegetableTypeId;
    }

    public Integer getVegetableProducedId() {
        return vegetableProducedId;
    }

    public void setVegetableProducedId(Integer vegetableProducedId) {
        this.vegetableProducedId = vegetableProducedId;
    }

    public Integer getSupplierId() {
        return supplierId;
    }

    public void setSupplierId(Integer supplierId) {
        this.supplierId = supplierId;
    }

    public String getVegetableName() {
        return vegetableName;
    }

    public void setVegetableName(String vegetableName) {
        this.vegetableName = vegetableName == null ? null : vegetableName.trim();
    }

    public Float getVegetablePrice() {
        return vegetablePrice;
    }

    public void setVegetablePrice(Float vegetablePrice) {
        this.vegetablePrice = vegetablePrice;
    }

    public String getVegetableDescribe() {
        return vegetableDescribe;
    }

    public void setVegetableDescribe(String vegetableDescribe) {
        this.vegetableDescribe = vegetableDescribe == null ? null : vegetableDescribe.trim();
    }

    public String getVegetablePicture() {
        return vegetablePicture;
    }

    public void setVegetablePicture(String vegetablePicture) {
        this.vegetablePicture = vegetablePicture == null ? null : vegetablePicture.trim();
    }
}