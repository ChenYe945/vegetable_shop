package org.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.ssm.entity.Vegetable;
import org.ssm.entity.VegetableType;
import org.ssm.service.VegetableService;
import org.ssm.service.VegetableTypeService;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Kenton on 2017/3/25.
 */
@Controller
@RequestMapping(value = "/vegetable", method = {RequestMethod.GET, RequestMethod.POST})
public class VegetableController {
    @Resource
    private VegetableService vegetableService;
    @Resource
    private VegetableTypeService vegetableTypeService;

    @ResponseBody
    @RequestMapping(value = "findAllVegetable", method = RequestMethod.GET)
    public List<Vegetable> findAllVegetable(){
        return vegetableService.selectAllVegetable();
    }

    @ResponseBody
    @RequestMapping(value = "findVegetableById")
    public Vegetable findVegetableById(int vegetableId){
        return vegetableService.selectByPrimaryKey(vegetableId);
    }

    @ResponseBody
    @RequestMapping(value = "findVegetableTypeById", method = RequestMethod.GET)
    public VegetableType findVegetableTypeById(int vegetableTypeId){
        return vegetableTypeService.selectByPrimaryKey(vegetableTypeId);
    }


}
