package org.ssm.service;

import org.ssm.entity.Orders;

import java.util.List;

/**
 * Created by Kenton on 2017/4/4.
 */
public interface OrderService {
    List<Orders> findAllOrders();
    List<Orders> selectByUserID(Integer userId);
}
