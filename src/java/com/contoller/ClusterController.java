import java.io.IOException;
import javax.servlet.*;
import javax.servlet.http.*;

public class ClusterController extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String country = request.getParameter("country");

        // Clustering logic handled in JSP using fetched dataset
        request.setAttribute("country", country);

        RequestDispatcher rd = request.getRequestDispatcher("clusterResult.jsp");
        rd.forward(request, response);
    }
}
