package org.ssm.service.impl;

import org.springframework.stereotype.Service;
import org.ssm.dao.UserMapper;
import org.ssm.entity.User;
import org.ssm.service.UserService;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Kenton on 2017/3/16.
 */

@Service(value = "userService")
public class UserServiceImpl implements UserService {

    @Resource
    private UserMapper userDAO;

    @Override
    public int updateUser(User user) {
        return userDAO.updateByPrimaryKey(user);
    }

    @Override
    public List<User> findAllUser() {
        return userDAO.selectAllUser();
    }

    @Override
    public int insertUser(User user) {
        return userDAO.insertSelective(user);
    }

    @Override
    public User selectUserByPhone(String telPhone) {
        return userDAO.selectByPhone(telPhone);
    }

    @Override
    public User findUserByUserID(int userId) {
        return userDAO.selectByPrimaryKey(userId);
    }

    @Override
    public int updateByPrimaryKey(User record) {
        return userDAO.updateByPrimaryKey(record);
    }

    @Override
    public int deleteByPrimaryKey(Integer userId) {
        return userDAO.deleteByPrimaryKey(userId);
    }
}
