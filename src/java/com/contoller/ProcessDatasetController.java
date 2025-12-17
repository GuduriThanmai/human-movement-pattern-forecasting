import java.io.IOException;
import javax.servlet.*;
import javax.servlet.http.*;

public class ProcessDatasetController extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Dataset preprocessing logic is handled via Queries
        // (Null handling, cleanup)

        response.sendRedirect("cluster.jsp?msg=processed");
    }
}

