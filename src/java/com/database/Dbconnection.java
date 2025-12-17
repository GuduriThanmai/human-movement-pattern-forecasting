import java.sql.Connection;
import java.sql.DriverManager;

public class Dbconnection {

    private static Connection con = null;

    public static Connection getcon() {
        try {
            // Load MySQL JDBC Driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Database connection details
            String url = "jdbc:mysql://localhost:3306/human_movement_db";
            String user = "root";
            String password = "root"; // change if needed

            // Create connection
            con = DriverManager.getConnection(url, user, password);

        } catch (Exception e) {
            System.out.println("Database Connection Error: " + e);
        }
        return con;
    }
}
