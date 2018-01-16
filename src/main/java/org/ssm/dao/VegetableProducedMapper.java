package org.ssm.dao;

import org.springframework.stereotype.Repository;
import org.ssm.entity.VegetableProduced;
@Repository
public interface VegetableProducedMapper {
    int deleteByPrimaryKey(Integer vegetableProducedId);

    int insert(VegetableProduced record);

    int insertSelective(VegetableProduced record);

    VegetableProduced selectByPrimaryKey(Integer vegetableProducedId);

    int updateByPrimaryKeySelective(VegetableProduced record);

    int updateByPrimaryKey(VegetableProduced record);
}