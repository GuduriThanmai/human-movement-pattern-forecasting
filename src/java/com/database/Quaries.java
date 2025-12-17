import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Queries {

    /* ================= ADMIN LOGIN ================= */

    public static boolean checkAdminLogin(String username, String password) {
        boolean status = false;
        try {
            Connection con = Dbconnection.getcon();
            String query = "SELECT * FROM admin WHERE username=? AND password=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                status = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }

    /* ================= DATASET INSERT ================= */

    public static int insertDataset(
            String country, String date,
            Integer retail, Integer grocery, Integer parks,
            Integer transit, Integer workplaces, Integer residential,
            String notEnoughData) {

        int i = 0;
        try {
            Connection con = Dbconnection.getcon();
            String query = "INSERT INTO dataset "
                    + "(country,date,retail_recreation,grocery_pharmacy,parks,"
                    + "transit_stations,workplaces,residential,not_enough_data) "
                    + "VALUES (?,?,?,?,?,?,?,?,?)";

            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, country);
            ps.setString(2, date);
            ps.setInt(3, retail);
            ps.setInt(4, grocery);
            ps.setInt(5, parks);
            ps.setInt(6, transit);
            ps.setInt(7, workplaces);
            ps.setInt(8, residential);
            ps.setString(9, notEnoughData);

            i = ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }

    /* ================= FETCH DATASET ================= */

    public static ResultSet getDataset() {
        ResultSet rs = null;
        try {
            Connection con = Dbconnection.getcon();
            String query = "SELECT * FROM dataset";
            PreparedStatement ps = con.prepareStatement(query);
            rs = ps.executeQuery();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return rs;
    }

    /* ================= CLUSTER BY COUNTRY ================= */

    public static ResultSet getCountryData(String country) {
        ResultSet rs = null;
        try {
            Connection con = Dbconnection.getcon();
            String query = "SELECT * FROM dataset WHERE country=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, country);
            rs = ps.executeQuery();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return rs;
    }

    /* ================= DELETE DATASET ================= */

    public static int deleteDataset() {
        int i = 0;
        try {
            Connection con = Dbconnection.getcon();
            String query = "DELETE FROM dataset";
            PreparedStatement ps = con.prepareStatement(query);
            i = ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }
}
