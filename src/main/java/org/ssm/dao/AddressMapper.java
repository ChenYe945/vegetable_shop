package org.ssm.dao;

import org.springframework.stereotype.Repository;
import org.ssm.entity.Address;

import java.util.List;

@Repository
public interface AddressMapper {
    int deleteByPrimaryKey(Integer addressId);

    int insert(Address record);

    int insertSelective(Address record);

    Address selectByPrimaryKey(Integer addressId);

    int updateByPrimaryKeySelective(Address record);

    int updateByPrimaryKey(Address record);
    List<Address> selectByUserId(Integer userId);
    List<Address> selectAllAddress();
}