package org.ssm.service.impl;

import org.springframework.stereotype.Service;
import org.ssm.dao.VegetableTypeMapper;
import org.ssm.entity.VegetableType;
import org.ssm.service.VegetableTypeService;

import javax.annotation.Resource;

/**
 * Created by Kenton on 2017/4/24.
 */
@Service(value = "vegetableTypeService")
public class VegetableTypeServiceImpl implements VegetableTypeService {

    @Resource
    private VegetableTypeMapper vegetableTypeDAO;
    @Override
    public VegetableType selectByPrimaryKey(Integer vegetableTypeId) {
        return vegetableTypeDAO.selectByPrimaryKey(vegetableTypeId);
    }
}
