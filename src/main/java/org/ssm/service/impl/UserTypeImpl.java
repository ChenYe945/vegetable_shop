package org.ssm.service.impl;

import org.springframework.stereotype.Service;
import org.ssm.dao.UserTypeMapper;
import org.ssm.entity.UserType;
import org.ssm.service.UserTypeService;

import javax.annotation.Resource;

/**
 * Created by Kenton on 2017/3/19.
 */
@Service(value = "userTypeService")
public class UserTypeImpl implements UserTypeService {
    @Resource
    private UserTypeMapper userTypeDAO;
    @Override
    public UserType selectByUserTypeID(Integer userTypeId) {
        return userTypeDAO.selectByPrimaryKey(userTypeId);
    }
}
