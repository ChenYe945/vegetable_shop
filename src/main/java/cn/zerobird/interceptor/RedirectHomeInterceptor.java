package cn.zerobird.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RedirectHomeInterceptor implements HandlerInterceptor {

	//在Controller执行之前
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception {
		response.sendRedirect(request.getContextPath() + "/index");
		return false;
	}

	//在Controller执行之后
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object o, ModelAndView view)
			throws Exception {
	}

	//在整个视图渲染完毕之后
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object o, Exception e)
			throws Exception {
	}
}
