package org.ssm.service.impl;

import org.springframework.stereotype.Service;
import org.ssm.dao.OrdersMapper;
import org.ssm.dao.UserMapper;
import org.ssm.entity.Orders;
import org.ssm.service.OrderService;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Kenton on 2017/4/4.
 */
@Service(value = "orderService")
public class OrderServiceImpl implements OrderService {
    @Resource
    private OrdersMapper ordersDAO;

    @Override
    public List<Orders> findAllOrders() {
        return ordersDAO.selectAllOrder();
    }

    @Override
    public List<Orders> selectByUserID(Integer userId) {
        return ordersDAO.selectByUserID(userId);
    }
}
