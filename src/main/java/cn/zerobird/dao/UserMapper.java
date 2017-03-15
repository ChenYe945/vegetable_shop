package cn.zerobird.dao;

import cn.zerobird.entity.User;
import org.springframework.stereotype.Repository;

@Repository(value = "UserDAO")
public interface UserMapper {
    int deleteByPrimaryKey(Integer userId);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer userId);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
}