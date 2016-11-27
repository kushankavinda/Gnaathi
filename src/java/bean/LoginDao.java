package bean;

import java.sql.*;
import javax.servlet.http.HttpSession;

public class LoginDao {

    ///checks if the user exsists in the database
    public static boolean validate(User bean,HttpSession session) {
        boolean status = false;
        try {
            Connection con = ConnectionProvider.getCon();
            
            PreparedStatement ps=con.prepareStatement("SELECT * FROM user WHERE email=? AND password=?");  	
            
            
            ps.setString(1, bean.getEmail());
            ps.setString(2, bean.getPassword());

            ResultSet rs = ps.executeQuery();
            
            status = rs.next();
            
            ///sets session variables to identify the user
            if(status){
                session.setAttribute("user_type",rs.getInt("user_type"));
                session.setAttribute("user_id",rs.getInt("user_id"));
                session.setAttribute("user_name",rs.getString("user_name"));
                session.setAttribute("session", "TRUE");
            }
            
            //calling initialize function to initialize chats of this user
            
            chats.initialize(rs.getInt("user_id"));
        } catch (Exception e) {
        }
        return status;
    }
}
