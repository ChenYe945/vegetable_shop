package org.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.ssm.entity.Orders;
import org.ssm.entity.Supplier;
import org.ssm.service.OrderService;
import org.ssm.service.SupplierService;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Kenton on 2017/4/4.
 */
@Controller
@RequestMapping(value = "/supplier", method = {RequestMethod.GET, RequestMethod.POST})
public class SupplierController {
    @Resource
    private SupplierService supplierService;
    @ResponseBody
    @RequestMapping(value = "findSupplierByID")
    public Supplier findSupplierByID(int supplierId){
        return supplierService.selectByPrimaryKey(supplierId);
    }
}
