package org.ssm.service;

import org.ssm.entity.Address;

import java.util.List;

/**
 * Created by Kenton on 2017/4/1.
 */
public interface AddressService {
    List<Address> findAddressByUseId(int userId);
    int insertAddress(Address record);
    int deleteByPrimaryKey(Integer addressId);
    Address selectByPrimaryKey(int addressId);
    int updateByPrimaryKey(Address record);
    List<Address> selectAllAddress();
}
