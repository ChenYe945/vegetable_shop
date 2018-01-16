package org.ssm.dao;

import org.springframework.stereotype.Repository;
import org.ssm.entity.ShopCar;

import java.util.List;

@Repository
public interface ShopCarMapper {
    int deleteByPrimaryKey(Integer shopcarId);

    int insert(ShopCar record);

    int insertSelective(ShopCar record);

    List<ShopCar> selectAllShopCar();
    List<ShopCar> selectByUserId(Integer userId);

    ShopCar selectByPrimaryKey(Integer shopcarId);

    int updateByPrimaryKeySelective(ShopCar record);

    int updateByPrimaryKey(ShopCar record);
}