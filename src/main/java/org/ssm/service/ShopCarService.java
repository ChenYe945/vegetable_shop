package org.ssm.service;

import org.ssm.entity.ShopCar;

import java.util.List;

/**
 * Created by Kenton on 2017/4/9.
 */
public interface ShopCarService {
    int insert(ShopCar record);

    List<ShopCar> selectAllShopCar();
    List<ShopCar> selectByUserId(Integer userId);
    int deleteByPrimaryKey(Integer shopcarId);
}
