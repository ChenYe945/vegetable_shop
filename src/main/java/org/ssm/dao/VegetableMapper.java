package org.ssm.dao;

import org.springframework.stereotype.Repository;
import org.ssm.entity.Vegetable;

import java.util.List;

@Repository
public interface VegetableMapper {
    int deleteByPrimaryKey(Integer vegetableId);

    int insert(Vegetable record);

    int insertSelective(Vegetable record);

    Vegetable selectByPrimaryKey(Integer vegetableId);

    int updateByPrimaryKeySelective(Vegetable record);

    int updateByPrimaryKey(Vegetable record);
    List<Vegetable> selectAllVegetable();
}