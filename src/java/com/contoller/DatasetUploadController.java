import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class DatasetUploadController extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // This controller assumes dataset is already parsed in JSP
        // or uploaded via multipart form

        response.sendRedirect("processDataset.jsp?msg=uploaded");
    }
}

