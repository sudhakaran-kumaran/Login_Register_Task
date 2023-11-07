package Dao;

import com.codewithsudhakaran.Db.DatabaseConnection;
import com.codewithsudhakaran.model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Arrays;


public class UserDao {
    private static Connection connection;

    public UserDao() {
        connection = DatabaseConnection.getConnection();

    }
    private static String selectSQL = "SELECT * FROM auth WHERE username=? and password=?";
    private static String registerSQL = "INSERT INTO auth(firstname,lastname,sports,gender,course,email,username,password) VALUES (?,?,?,?,?,?,?,?);";
    public User loginUser(String username, String password){
        User user = null;
        try {
            PreparedStatement ps = connection.prepareStatement(selectSQL);
            ps.setString(1,username);
            ps.setString(2,password);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                user = new User();
                user.setId(rs.getInt("id"));
                user.setFirstname(rs.getString("firstname"));
                user.setLastname(rs.getString("lastname"));
                user.setSports(rs.getString("sports"));
                user.setGender(rs.getString("gender"));
                user.setCourse(rs.getString("course"));
                user.setEmail(rs.getString("email"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }
public String register(String firstname, String lastname, String[] sports, String gender, String course, String email, String username, String password){
    try {
        PreparedStatement ps = connection.prepareStatement(registerSQL);
        ps.setString(1,firstname);
        ps.setString(2,lastname);
        ps.setString(3, Arrays.toString(sports));
        ps.setString(4,gender);
        ps.setString(5,course);
        ps.setString(6,email);
        ps.setString(7,username);
        ps.setString(8,password);
        ps.executeUpdate();
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return firstname;
}
}
