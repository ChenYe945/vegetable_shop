package cn.zerobird.controller.front;

import cn.zerobird.common.Constants;
import cn.zerobird.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping(value = "/user")
public class UserController {

    @Resource
    private UserService userService;

    @RequestMapping(value = "/{uid}", method = RequestMethod.GET)
    public String user(@PathVariable Long uid, Model model) {
        model.addAttribute("u", userService.findByPrimaryKey(uid));
        return "/user/u";
    }

    @RequestMapping(value = "/finance", method = RequestMethod.GET)
    public String finance() {
        return "/user/finance";
    }

    @RequestMapping(value = "/exit", method = RequestMethod.GET)
    public String signOut(HttpSession session) {
        if (session.getAttribute(Constants.SESSION_USER.getMark()) != null) {
            session.removeAttribute(Constants.SESSION_USER.getMark());
        }
        return "redirect:/index";
    }
}
