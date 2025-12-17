import java.io.IOException;
import javax.servlet.*;
import javax.servlet.http.*;

public class LoginController extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        boolean status = Queries.checkAdminLogin(username, password);

        if (status) {
            HttpSession session = request.getSession();
            session.setAttribute("admin", username);
            response.sendRedirect("dashboard.jsp");
        } else {
            response.sendRedirect("login.jsp?msg=invalid");
        }
    }
}
