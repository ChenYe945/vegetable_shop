package org.ssm.service.impl;

import org.springframework.stereotype.Service;
import org.ssm.dao.ShopCarMapper;
import org.ssm.entity.ShopCar;
import org.ssm.service.ShopCarService;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Kenton on 2017/4/9.
 */
@Service(value = "shopCarService")
public class ShopCarServiceImpl implements ShopCarService {

    @Resource
    private ShopCarMapper shopCarMapper;
    @Override
    public int insert(ShopCar record) {
        return shopCarMapper.insert(record);
    }

    @Override
    public List<ShopCar> selectAllShopCar() {
        return shopCarMapper.selectAllShopCar();
    }

    @Override
    public List<ShopCar> selectByUserId(Integer userId) {
        return shopCarMapper.selectByUserId(userId);
    }

    @Override
    public int deleteByPrimaryKey(Integer shopcarId) {
        return shopCarMapper.deleteByPrimaryKey(shopcarId);
    }
}
