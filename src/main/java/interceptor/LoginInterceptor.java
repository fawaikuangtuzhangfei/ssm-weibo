package interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

/**
 * 拦截器
 * @author 77515
 *
 */
public class LoginInterceptor implements HandlerInterceptor{

	//在执行控制器方法之前
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		//1.获取到session对象，并从session对象中取出user
		HttpSession session = request.getSession();
		Object obj = session.getAttribute("user");
		//2.Object obj == null；说明未登录过，那么跳转到登录页面并return false
		if(obj == null) {
			String path = request.getContextPath() + "/user/showLogin.do";
			response.sendRedirect(path);
			return false;
		}
		//3.否则放行
		return true;
	}

	//控制器方法执行之后，但是响应页面之前
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		
	}

	//响应页面之后
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

}
