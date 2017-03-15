package cn.zerobird.dao;

import cn.zerobird.entity.Supplier;
import org.springframework.stereotype.Repository;

@Repository(value = "SupplierDAO")
public interface SupplierMapper {
    int deleteByPrimaryKey(Integer supplierId);

    int insert(Supplier record);

    int insertSelective(Supplier record);

    Supplier selectByPrimaryKey(Integer supplierId);

    int updateByPrimaryKeySelective(Supplier record);

    int updateByPrimaryKey(Supplier record);
}