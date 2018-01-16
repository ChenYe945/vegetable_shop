package org.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.ssm.entity.Orders;
import org.ssm.service.OrderService;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Kenton on 2017/4/4.
 */
@Controller
@RequestMapping(value = "/order", method = {RequestMethod.GET, RequestMethod.POST})
public class OrderController {
    @Resource
    private OrderService orderService;

    @ResponseBody
    @RequestMapping(value = "findAllOrder", method = RequestMethod.GET)
    public List<Orders> findAllOrder(){
        return orderService.findAllOrders();
    }

    @ResponseBody
    @RequestMapping(value = "findOrderByUserID")
    public List<Orders> findOrderByUserID(int userId){
        return orderService.selectByUserID(userId);
    }
}
