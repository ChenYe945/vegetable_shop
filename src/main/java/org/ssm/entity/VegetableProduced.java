package org.ssm.entity;

public class VegetableProduced {
    private Integer vegetableProducedId;

    private String vegetableProducedName;

    public Integer getVegetableProducedId() {
        return vegetableProducedId;
    }

    public void setVegetableProducedId(Integer vegetableProducedId) {
        this.vegetableProducedId = vegetableProducedId;
    }

    public String getVegetableProducedName() {
        return vegetableProducedName;
    }

    public void setVegetableProducedName(String vegetableProducedName) {
        this.vegetableProducedName = vegetableProducedName == null ? null : vegetableProducedName.trim();
    }
}