
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletResponse;

import javawork.Sqlconnet;

/**
 * Servlet Filter implementation class FilRegister
 */
@WebFilter("/ServRegister")
public class FilRegister implements Filter {

	/**
	 * Default constructor.
	 */
	public FilRegister() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here

		// pass the request along the filter chain
		request.setCharacterEncoding("UTF-8");
		HttpServletResponse res = (HttpServletResponse) response;
		res.setCharacterEncoding("UTF-8");
		res.setHeader("content-type","text/html; charset=UTF-8");
		PrintWriter pw = res.getWriter();

		String name=request.getParameter("nickname");
		String studentid=request.getParameter("studentid");
		String pwd1 = request.getParameter("passwd1");
		String pwd2 = request.getParameter("passwd2");

		String birth = request.getParameter("birth");

		if (!pwd1.equals(pwd2)) {
			pw.write("两次密码输入不一致，两秒后请重写");
			res.setHeader("Refresh", "2;URL=register.jsp");
			return;
		}
		String birthdate[] = birth.split("-");
		int biryear = Integer.parseInt(birthdate[0]);
		Calendar ca = Calendar.getInstance();
		int curyear = ca.get(Calendar.YEAR);
		if (curyear - biryear < 18) {
			pw.write("对不起，本站不接受18岁以下注册");
			res.setHeader("Refresh", "2;URL=register.jsp");
			return;
		}
		try {
			Sqlconnet con1=new Sqlconnet();
			
			boolean hasUser=con1.Select_UserExisted(name);
			if(hasUser) {
				pw.write("对不起，用户已存在");
				res.setHeader("Refresh", "2;URL=register.jsp");
				con1.Sqlclose();
				return;
			}
			else {
				boolean hasUserId=con1.Select_UserIdExisted(studentid);
				con1.Sqlclose();
				if(hasUserId) {
					pw.write("对不起，学号已存在");
					res.setHeader("Refresh", "2;URL=register.jsp");
					return;
				}
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

		chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
