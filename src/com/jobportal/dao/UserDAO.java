package com.jobportal.dao;
import com.jobportal.util.DBConnection;import java.sql.*;
public class UserDAO { public boolean register(String name,String email,String password,String role) { String sql="INSERT INTO users(name,email,password,role) VALUES(?,?,?,?)"; try(Connection c=DBConnection.getConnection();PreparedStatement p=c.prepareStatement(sql)){p.setString(1,name);p.setString(2,email);p.setString(3,password);p.setString(4,role);return p.executeUpdate()>0;}catch(Exception e){e.printStackTrace();return false;} } }
