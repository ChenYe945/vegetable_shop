package cn.zerobird.service;

import cn.zerobird.entity.User;

public interface UserService extends BaseService<User, Long> {

    User login(User user);
}
