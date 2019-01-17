

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javawork.Sqlconnet;

/**
 * Servlet implementation class ServNewuser
 */
@WebServlet("/ServNewuser")
public class ServNewuser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServNewuser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setHeader("content-type","text/html; charset=UTF-8");
		String nickname=request.getParameter("nickname");
		String name=request.getParameter("realname");
		String nickpasswd=request.getParameter("passwd1");
		String studentid=request.getParameter("studentid");
		String department=request.getParameter("department");
		String profession=request.getParameter("profession");
		String hobby=request.getParameter("hobby");
		String birth=request.getParameter("birth");
		String grade=request.getParameter("grade");
		PrintWriter pw=response.getWriter();
		try {
			Sqlconnet con1=new Sqlconnet();
			int result=con1.Insert_Reader(nickname, name, nickpasswd, studentid, department, profession, hobby, birth, grade);
			con1.Sqlclose();
			if(result>0) {
				pw.println("增加新用户成功，2秒后跳转主页面");
				response.setHeader("Refresh", "2;URL=rootinfo.jsp");
			}
			else {
				pw.println("增加新用户失败，2秒后，请重新注册");
				response.setHeader("Refresh", "2;URL=inputnewuser.jsp");
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			pw.println("增加新用户失败，2秒后，请重新注册");
			response.setHeader("Refresh", "2;URL=inputnewuser.jsp");
		} finally {
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
