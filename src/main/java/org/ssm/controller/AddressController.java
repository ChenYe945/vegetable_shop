package org.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.ssm.entity.Address;
import org.ssm.entity.City;
import org.ssm.service.AddressService;
import org.ssm.service.CityService;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Kenton on 2017/4/1.
 */
@Controller
@RequestMapping(value = "/address", method = {RequestMethod.GET, RequestMethod.POST})
public class AddressController {
    @Resource
    private AddressService addressService;

    @Resource
    private CityService cityService;

    @ResponseBody
    @RequestMapping(value = "findAllCity")
    public List<City> findAllCity(){
        return cityService.findAllCity();
    }

    @ResponseBody
    @RequestMapping(value = "findAllAddress")
    public List<Address> findAllAddress(){
        return addressService.selectAllAddress();
    }

    @ResponseBody
    @RequestMapping(value = "insertAddress")
    public String insertAddress(Address address){
        int  i = 0;
        try {
            i = addressService.insertAddress(address);
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
    @RequestMapping(value = "deleteAddressByID")
    public String deleteAddressByID(int addressId){
        int  i = 0;
        try {
            i = addressService.deleteByPrimaryKey(addressId);
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
    @RequestMapping(value = "findAddressByID")
    public Address findAddressByID(int addressId){
        return addressService.selectByPrimaryKey(addressId);
    }

    @ResponseBody
    @RequestMapping(value = "findAddressByUserID")
    public List<Address> findAddressByUserID(int userId){
        return addressService.findAddressByUseId(userId);
    }

    @ResponseBody
    @RequestMapping(value = "updateAddress")
    public String updateAddress(Address record){
        int  i = 0;
        try {
            i = addressService.updateByPrimaryKey(record);
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
