package org.ssm.dao;

import org.springframework.stereotype.Repository;
import org.ssm.entity.UserType;
@Repository
public interface UserTypeMapper {
    int deleteByPrimaryKey(Integer userTypeId);

    int insert(UserType record);

    int insertSelective(UserType record);

    UserType selectByPrimaryKey(Integer userTypeId);

    int updateByPrimaryKeySelective(UserType record);

    int updateByPrimaryKey(UserType record);
}