package cn.zerobird.dao;

import cn.zerobird.entity.VegetableProduced;
import org.springframework.stereotype.Repository;

@Repository(value = "VegetableProducedDAO")
public interface VegetableProducedMapper {
    int deleteByPrimaryKey(Integer vegetableProducedId);

    int insert(VegetableProduced record);

    int insertSelective(VegetableProduced record);

    VegetableProduced selectByPrimaryKey(Integer vegetableProducedId);

    int updateByPrimaryKeySelective(VegetableProduced record);

    int updateByPrimaryKey(VegetableProduced record);
}