package cn.zerobird.interceptor;

import cn.zerobird.common.Constants;
import cn.zerobird.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class GlobalInterceptor implements HandlerInterceptor {

    @Resource
    private UserService userService;

    @Value("${system_environments}")
    private String system_environments;

    private final static Logger logger = LoggerFactory.getLogger(GlobalInterceptor.class);

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception {
        if (system_environments.equals("dev")) {
            HttpSession session = request.getSession();
            if (session.getAttribute(Constants.SESSION_USER.getMark()) == null) {
                session.setAttribute(Constants.SESSION_USER.getMark(), userService.findByPrimaryKey((long) 1));
            }
        }
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o,
                           ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object
            o, Exception e) throws Exception {

    }
}
