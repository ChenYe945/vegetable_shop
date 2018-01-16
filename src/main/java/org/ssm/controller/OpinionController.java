package org.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.ssm.entity.Opinion;
import org.ssm.service.OpinionService;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Kenton on 2017/4/9.
 */
@Controller
@RequestMapping(value = "/opinion", method = {RequestMethod.GET, RequestMethod.POST})
public class OpinionController {
    @Resource
    private OpinionService opinionService;

    @ResponseBody
    @RequestMapping(value = "findByVegetableID")
    public List<Opinion> findByVegetableID(int vegetableId){
        return opinionService.selectOpinionByVegetableID(vegetableId);
    }

    @ResponseBody
    @RequestMapping(value = "findAllOpinion")
    public List<Opinion> findAllOpinion(){
        return opinionService.selectAllOpinion();
    }


}
