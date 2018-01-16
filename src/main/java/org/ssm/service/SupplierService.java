package org.ssm.service;

import org.ssm.entity.Supplier;

/**
 * Created by Kenton on 2017/4/4.
 */
public interface SupplierService {
    Supplier selectByPrimaryKey(Integer supplierId);
}
