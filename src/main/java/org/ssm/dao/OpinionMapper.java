package org.ssm.dao;

import org.springframework.stereotype.Repository;
import org.ssm.entity.Opinion;

import java.util.List;
@Repository
public interface OpinionMapper {
    int deleteByPrimaryKey(Integer opinionId);

    int insert(Opinion record);

    int insertSelective(Opinion record);
    List<Opinion> selectOpinionByVegetableID(Integer vegetableId);
    Opinion selectByPrimaryKey(Integer opinionId);

    int updateByPrimaryKeySelective(Opinion record);

    int updateByPrimaryKey(Opinion record);

    List<Opinion> selectAllOpinion();
}