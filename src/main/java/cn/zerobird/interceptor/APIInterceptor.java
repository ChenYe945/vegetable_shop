package cn.zerobird.interceptor;

import cn.zerobird.common.Constants;
import cn.zerobird.dto.JsonModel;
import cn.zerobird.entity.User;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;

public class APIInterceptor implements HandlerInterceptor {

    private final static Logger logger = LoggerFactory.getLogger(APIInterceptor.class);

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception {
        boolean flag = true;
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute(Constants.SESSION_USER.getMark());
        if (user == null) {
            flag = false;
            JsonModel JM = new JsonModel();
            ObjectMapper mapper = new ObjectMapper();
            JM.setMessage(JsonModel.OP_FAIL);
            JM.setData("未登录");
            response.setContentType("application/json;charset=utf-8");
            String jsonData = mapper.writeValueAsString(JM);
            PrintWriter out = response.getWriter();
            out.print(jsonData);
            out.flush();
            out.close();
        }
        return flag;
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
