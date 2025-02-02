package banktransfer;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/log")
public class login extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		PrintWriter out= resp.getWriter();
		String uname = req.getParameter("uname");
		String pswd = req.getParameter("pswd");
		if(uname.equals("abcd") && pswd.equals("1234"))
		{
			RequestDispatcher rd = req.getRequestDispatcher("/form.html");
			rd.forward(req, resp);
		}
		else
		{
			out.print("<h5><center style='color:red'>invalid username or password</center></h5>");
			RequestDispatcher rd = req.getRequestDispatcher("/index.html");
			rd.include(req, resp);
		}
	}
}
