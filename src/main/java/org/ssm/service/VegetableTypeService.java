package org.ssm.service;

import org.ssm.entity.VegetableType;

/**
 * Created by Kenton on 2017/4/24.
 */
public interface VegetableTypeService {
    VegetableType selectByPrimaryKey(Integer vegetableTypeId);
}
