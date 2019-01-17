
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import javawork.Sqlconnet;

/**
 * Servlet implementation class ServLogin
 */
@WebServlet("/ServLogin")
public class ServLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ServLogin() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setHeader("content-type", "text/html; charset=UTF-8");
		String username = request.getParameter("username");
		String userpasswd = request.getParameter("userpasswd");
		int logintype = Integer.parseInt(request.getParameter("logintype"));
		PrintWriter pw = response.getWriter();
		try {
			Sqlconnet con1 = new Sqlconnet();
			boolean jude1 = con1.Select_Userlogin(username, userpasswd);
			boolean jude2 = con1.Select_Rootlogin(username, userpasswd);
			con1.Sqlclose();
			if (jude1 && logintype == 1) {
				pw.println("读者登录成功，2秒后跳转主页面");
				HttpSession session=request.getSession();
				session.setAttribute("username", username);
				session.setAttribute("logintype", logintype);
				response.setHeader("Refresh", "2;URL=userframe.jsp");
			} else if (jude2 && logintype == 2) {
				pw.println("管理员登录成功，2秒后跳转主页面");
				HttpSession session=request.getSession();
				session.setAttribute("username", username);
				session.setAttribute("logintype", logintype);
				response.setHeader("Refresh", "2;URL=rootframe.jsp");
			} else {
				pw.println("用户名或密码错误，2秒后，请重新登录");
				response.setHeader("Refresh", "2;URL=login.jsp");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			pw.println("登录失败，2秒后，请重新登录");
			response.setHeader("Refresh", "2;URL=login.jsp");
		} finally {
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
