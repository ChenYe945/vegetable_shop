package org.ssm.dao;

import org.springframework.stereotype.Repository;
import org.ssm.entity.Orders;

import java.util.List;

@Repository
public interface OrdersMapper {
    int deleteByPrimaryKey(Integer orderId);

    int insert(Orders record);

    int insertSelective(Orders record);

    Orders selectByPrimaryKey(Integer orderId);

    int updateByPrimaryKeySelective(Orders record);
    List<Orders> selectByUserID(Integer userId);
    int updateByPrimaryKey(Orders record);
    List<Orders> selectAllOrder();
}