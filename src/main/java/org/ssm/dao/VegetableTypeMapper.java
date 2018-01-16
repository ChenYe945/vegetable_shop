package org.ssm.dao;

import org.springframework.stereotype.Repository;
import org.ssm.entity.VegetableType;
@Repository
public interface VegetableTypeMapper {
    int deleteByPrimaryKey(Integer vegetableTypeId);

    int insert(VegetableType record);

    int insertSelective(VegetableType record);

    VegetableType selectByPrimaryKey(Integer vegetableTypeId);

    int updateByPrimaryKeySelective(VegetableType record);

    int updateByPrimaryKey(VegetableType record);
}