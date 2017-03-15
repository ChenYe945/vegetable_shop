package cn.zerobird.dao;

import cn.zerobird.entity.UserType;
import org.springframework.stereotype.Repository;

@Repository(value = "UserTypeDAO")
public interface UserTypeMapper {
    int deleteByPrimaryKey(Integer userTypeId);

    int insert(UserType record);

    int insertSelective(UserType record);

    UserType selectByPrimaryKey(Integer userTypeId);

    int updateByPrimaryKeySelective(UserType record);

    int updateByPrimaryKey(UserType record);
}