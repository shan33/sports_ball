package interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class LoginIntercepter implements HandlerInterceptor {

    /** 
     * Handlerִ�����֮������������ 
     */ 
	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}
	
	/** 
     * Handlerִ��֮��ModelAndView����֮ǰ����������� 
     */ 
	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}
	/** 
     * Handlerִ��֮ǰ����������� 
     */ 
	@Override
	public boolean preHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2) throws Exception {
		String url = arg0.getRequestURI();
		System.out.println("-------------------"+url);
		if(url.indexOf("login.do")>=0){  
            return true;  
        } 
        //��ȡSession  
        HttpSession session = arg0.getSession();  
        String username = (String)session.getAttribute("USER");  
          
        if(username != null){  
            return true;  
        }  
        //�����������ģ���ת����¼����  
        arg0.getRequestDispatcher("login.jsp").forward(arg0, arg1);  
          
		return false;
	}

}
