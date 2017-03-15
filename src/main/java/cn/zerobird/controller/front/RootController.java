package cn.zerobird.controller.front;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value = "/")
public class RootController {

//    @Resource
//    private UserDAO userDAO;

    @RequestMapping(value = "index", method = RequestMethod.GET)
    public String index() {
        return "/index";
    }

    @RequestMapping(value = "admin/login", method = RequestMethod.GET)
    public String adminLogin() {
        return "/admin_login";
    }

    @RequestMapping(value = "login", method = RequestMethod.GET)
    public String userLogin(String redirect, Model model) {
        if (StringUtils.isNotEmpty(redirect)) {
            model.addAttribute("redirect", redirect);
        }
        return "/login";
    }

    @RequestMapping(value = "register", method = RequestMethod.GET)
    public String userRegister() {
        return "/register";
    }

    @RequestMapping(value = "admin/login", method = RequestMethod.POST)
    public String adminLoginHandle(String member, String pass, @RequestParam(required = false) String memory) {
        return "/admin_login";
    }

}
