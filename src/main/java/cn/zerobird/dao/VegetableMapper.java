package cn.zerobird.dao;

import cn.zerobird.entity.Vegetable;
import org.springframework.stereotype.Repository;

@Repository(value = "VegetableDAO")
public interface VegetableMapper {
    int deleteByPrimaryKey(Integer vegetableId);

    int insert(Vegetable record);

    int insertSelective(Vegetable record);

    Vegetable selectByPrimaryKey(Integer vegetableId);

    int updateByPrimaryKeySelective(Vegetable record);

    int updateByPrimaryKey(Vegetable record);
}