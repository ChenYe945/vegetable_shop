package org.ssm.service;

import org.ssm.entity.User;

import java.util.List;

/**
 * Created by Kenton on 2017/3/16.
 */
public interface UserService {
    int updateUser(User user);

    List<User> findAllUser();
    int insertUser(User record);

    User selectUserByPhone(String telPhone);
    User findUserByUserID(int userId);
    int updateByPrimaryKey(User record);
    int deleteByPrimaryKey(Integer userId);

}
