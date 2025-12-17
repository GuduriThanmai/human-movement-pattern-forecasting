import java.io.IOException;
import javax.servlet.*;
import javax.servlet.http.*;

public class PredictionController extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String country = request.getParameter("country");

        // Markov prediction logic handled at JSP / service level
        request.setAttribute("country", country);

        RequestDispatcher rd = request.getRequestDispatcher("predictionResult.jsp");
        rd.forward(request, response);
    }
}
