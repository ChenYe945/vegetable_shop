package org.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.ssm.entity.ShopCar;
import org.ssm.service.ShopCarService;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Kenton on 2017/4/9.
 */
@Controller
@RequestMapping(value = "/shopCar", method = {RequestMethod.GET, RequestMethod.POST})
public class ShopCarController {
    @Resource
    private ShopCarService shopCarService;

    @ResponseBody
    @RequestMapping(value = "insertShopCar")
    public String insertShopCar(ShopCar shopCar){
        int  i = 0;
        try {
            i = shopCarService.insert(shopCar);
        }catch (Exception e){
            e.getStackTrace();
        }
        if(i==1){
            return "success";
        }else {
            return "false";
        }
    }

    @ResponseBody
    @RequestMapping(value = "findAllShopCar")
    public List<ShopCar> findAllShopCar(){
        return shopCarService.selectAllShopCar();
    }

    @ResponseBody
    @RequestMapping(value = "findShopCarsByUserID")
    public List<ShopCar> findShopCarsByUserID(int userId){
        return shopCarService.selectByUserId(userId);
    }

    @ResponseBody
    @RequestMapping(value = "deleteShopCarById")
    public String deleteShopCarById(int shopcarId){
        int i = 0;
        try {
            i = shopCarService.deleteByPrimaryKey(shopcarId);
        }catch (Exception e){
            e.getStackTrace();
        }
        if(i==1){
            return "success";
        }else {
            return "false";
        }
    }
}
