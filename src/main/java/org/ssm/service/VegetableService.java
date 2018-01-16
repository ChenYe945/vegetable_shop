package org.ssm.service;

import org.ssm.entity.Vegetable;

import java.util.List;

/**
 * Created by Kenton on 2017/3/25.
 */
public interface VegetableService {
    List<Vegetable> selectAllVegetable();
    Vegetable selectByPrimaryKey(int vegetableId);
}
