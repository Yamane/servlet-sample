package yamane.servlet;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/sample")
public class SampleServlet extends HttpServlet {

  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      process(req, resp);
  }
  
  @Override
  protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      process(req, resp);
  }
  
  private void process(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      String message = req.getParameter("message");
      ServletContext context = getServletContext();
      if (message!= null &&  message.trim().length() != 0) {
          req.setAttribute("message", message);
          context.getRequestDispatcher("/WEB-INF/result.jsp").forward(req, resp);
      } else {
          req.setAttribute("error", "なにか入力して！");
          context.getRequestDispatcher("/index.jsp").forward(req, resp);
      }
  }

}
