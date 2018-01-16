package org.ssm.service.impl;

import org.springframework.stereotype.Service;
import org.ssm.dao.AddressMapper;
import org.ssm.entity.Address;
import org.ssm.service.AddressService;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Kenton on 2017/4/1.
 */
@Service(value = "addressService")
public class AddressServiceImpl implements AddressService {

    @Resource
    private AddressMapper addressDAO;

    @Override
    public List<Address> findAddressByUseId(int userId) {
        return addressDAO.selectByUserId(userId);
    }

    @Override
    public int insertAddress(Address record) {
        return addressDAO.insert(record);
    }

    @Override
    public int deleteByPrimaryKey(Integer addressId) {
        return addressDAO.deleteByPrimaryKey(addressId);
    }

    @Override
    public Address selectByPrimaryKey(int addressId) {
        return addressDAO.selectByPrimaryKey(addressId);
    }

    @Override
    public int updateByPrimaryKey(Address record) {
        return addressDAO.updateByPrimaryKey(record);
    }

    @Override
    public List<Address> selectAllAddress() {
        return addressDAO.selectAllAddress();
    }
}
