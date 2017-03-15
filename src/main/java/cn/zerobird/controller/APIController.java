package cn.zerobird.controller;

import cn.zerobird.dto.JsonModel;
import cn.zerobird.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

@Controller
@RequestMapping(value = "/api")
public class APIController {

    @Resource
    private UserService userService;

    @ResponseBody
    @RequestMapping(value = "/user/{uid}", method = RequestMethod.GET)
    public JsonModel user(@PathVariable("uid") Long uid) {
        return new JsonModel(userService.findByPrimaryKey(uid));
    }

    @ResponseBody
    @RequestMapping(value = "/user", method = RequestMethod.GET)
    public JsonModel users() {
        return new JsonModel(userService.findAll());
    }
}
