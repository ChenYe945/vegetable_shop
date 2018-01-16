package org.ssm.service.impl;

import org.springframework.stereotype.Service;
import org.ssm.dao.VegetableMapper;
import org.ssm.entity.Vegetable;
import org.ssm.service.VegetableService;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Kenton on 2017/3/25.
 */
@Service(value = "vegetableService")
public class VegatableServiceImpl implements VegetableService{
    @Resource
    private VegetableMapper vegetableDAO;

    @Override
    public List<Vegetable> selectAllVegetable() {
        return vegetableDAO.selectAllVegetable();
    }

    @Override
    public Vegetable selectByPrimaryKey(int vegetableId) {
        return vegetableDAO.selectByPrimaryKey(vegetableId);
    }
}
