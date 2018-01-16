package org.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.ssm.entity.User;
import org.ssm.entity.UserType;
import org.ssm.service.UserService;
import org.ssm.service.UserTypeService;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Kenton on 2017/3/16.
 */
@Controller
@RequestMapping(value = "/user", method = {RequestMethod.GET, RequestMethod.POST})
public class UserController {
    @Resource
    private UserService userService;

    @Resource
    private UserTypeService userTypeService;

    @ResponseBody
    @RequestMapping(value = "selectUserTypeByID")
    public UserType selectUserTypeByID(int userTypeID){
        UserType userType = new UserType();
        userType = userTypeService.selectByUserTypeID(userTypeID);

        return  userType;
    }

    @ResponseBody
    @RequestMapping(value = "findAllUser", method = RequestMethod.GET)
    public List<User> findUserAll(){
        return userService.findAllUser();
    }

    @ResponseBody
    @RequestMapping(value = "findUserByUserID", method = RequestMethod.GET)
    public User findUserByUserID(int userId){
        return userService.findUserByUserID(userId);
    }

    @ResponseBody
    @RequestMapping(value = "insertUser")
    public String insertUser(User user){
        try {
             userService.insertUser(user);
        }catch (Exception e){
            e.getStackTrace();
        }

        return "login";
    }

    @ResponseBody
    @RequestMapping(value = "selectByPhone")
    public User selectByPhone(String telPhone){
        User user = new User();
        try{
            user = userService.selectUserByPhone(telPhone);
        }catch (Exception e){
            e.getStackTrace();
        }
        return user;
    }

    @ResponseBody
    @RequestMapping(value = "updateUserByPhone")
    public String updateUserByPhone(User user){
        try{
            userService.updateUser(user);
        }catch (Exception e){
            e.getStackTrace();
        }
        return "index";
    }
    @ResponseBody
    @RequestMapping(value = "updateUserByUserID")
    public String updateUserByUserID(User user){
        try{
            userService.updateByPrimaryKey(user);
        }catch (Exception e){
            e.getStackTrace();
        }
        return "editSuccess";
    }
    @ResponseBody
    @RequestMapping(value = "deleteUserByID")
    public String deleteUserByID(int userId){
        try{
            userService.deleteByPrimaryKey(userId);
        }catch (Exception e){
            e.getStackTrace();
        }
        return "deleteSuccess";
    }


}
