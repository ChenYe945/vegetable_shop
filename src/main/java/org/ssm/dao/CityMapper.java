package org.ssm.dao;

import org.springframework.stereotype.Repository;
import org.ssm.entity.City;

import java.util.List;
@Repository
public interface CityMapper {
    int deleteByPrimaryKey(Integer cityId);

    int insert(City record);

    int insertSelective(City record);

    City selectByPrimaryKey(Integer cityId);

    int updateByPrimaryKeySelective(City record);

    int updateByPrimaryKey(City record);

    List<City> selectAllCity();
}