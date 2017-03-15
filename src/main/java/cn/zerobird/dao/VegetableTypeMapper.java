package cn.zerobird.dao;

import cn.zerobird.entity.VegetableType;
import org.springframework.stereotype.Repository;

@Repository(value = "VegetableTypeDAO")
public interface VegetableTypeMapper {
    int deleteByPrimaryKey(Integer vegetableTypeId);

    int insert(VegetableType record);

    int insertSelective(VegetableType record);

    VegetableType selectByPrimaryKey(Integer vegetableTypeId);

    int updateByPrimaryKeySelective(VegetableType record);

    int updateByPrimaryKey(VegetableType record);
}