package org.ssm.service.impl;

import org.springframework.stereotype.Service;
import org.ssm.dao.SupplierMapper;
import org.ssm.dao.UserMapper;
import org.ssm.entity.Supplier;
import org.ssm.service.SupplierService;

import javax.annotation.Resource;

/**
 * Created by Kenton on 2017/4/4.
 */
@Service(value = "supplierService")
public class SupplierServiceImpl implements SupplierService {
    @Resource
    private SupplierMapper supplierDAO;

    @Override
    public Supplier selectByPrimaryKey(Integer supplierId) {
        return supplierDAO.selectByPrimaryKey(supplierId);
    }
}
