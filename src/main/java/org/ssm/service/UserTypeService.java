package org.ssm.service;

import org.ssm.entity.UserType;

/**
 * Created by Kenton on 2017/3/19.
 */
public interface UserTypeService {
    UserType selectByUserTypeID(Integer userTypeId);
}
