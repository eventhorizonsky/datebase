//导入包
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/*
 * 数据库连接
 */
public class datebaseT1 {
    public static void main(String[] args) {


        try (
                Connection c = DriverManager.getConnection("jdbc:mysql://39.106.120.10:3306/datebase_ezsky_x?&useSSL=false&serverTimezone=UTC",
                        "datebase_ezsky_x", "yKLWibZx5rKWHRKn");
                Statement s = c.createStatement();
        )
        {
            String sql = "insert into hero values(5,'阿威',323,923)";
            s.execute(sql);

        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        }
    }

