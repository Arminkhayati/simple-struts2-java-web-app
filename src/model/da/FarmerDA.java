package model.da;

import model.to.Farmer;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

public class FarmerDA {

    private Connection connection;
    private PreparedStatement preparedStatement;
    public FarmerDA(){
//        try {
//            Class.forName("org.postgresql.jdbc.Driver");
//        } catch (ClassNotFoundException e) {
//            e.printStackTrace();
//        }
        try {
            connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/ZahraDb", "postgres", "29399");
            connection.setAutoCommit(false);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Farmer> selectAll(String username){
        List<Farmer> farmers = new ArrayList<>();
        try{
            preparedStatement = connection.prepareStatement("Select * from farmer where username = ?");
            preparedStatement.setString(1, username);
            ResultSet resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                Farmer farmer = new Farmer();
                farmer.setFname(resultSet.getString("fname"));
                farmer.setLname(resultSet.getString("lname"));
                farmer.setAddress(resultSet.getString("address"));
                farmer.setNationalId(resultSet.getString("national_id"));
                farmer.setCity(resultSet.getString("city"));
                farmer.setUsername(resultSet.getString("username"));
                farmer.setPhone(resultSet.getString("phone"));
                farmer.setZip(resultSet.getString("zip"));
                farmer.setSex(resultSet.getString("sex"));
                farmers.add(farmer);

            }
            return farmers;

        }catch(Exception e){
            ArrayList exception = new ArrayList();
            exception.add("Class:FarmerDA Method:selectAll Exception");
            return exception;
        }
    }

    public boolean selectUser(String username)throws Exception{
        preparedStatement = connection.prepareStatement("Select username from farmer where username = ?");
        preparedStatement.setString(1,username);
        ResultSet resultSet = preparedStatement.executeQuery();
        boolean found =resultSet.next();
        resultSet.close();
        return found;
    }

    public boolean selectUser(String username, String password)throws Exception{
        preparedStatement = connection.prepareStatement("Select username from farmer where username = ? and password = ?");
        preparedStatement.setString(1,username);
        preparedStatement.setString(2,password);
        ResultSet resultSet = preparedStatement.executeQuery();
        boolean found =resultSet.next();
        resultSet.close();
        return found;
    }

    public void insert(Farmer farmer) throws Exception{
        UUID uuid = UUID.randomUUID();
        preparedStatement = connection.prepareStatement("insert into farmer values (?,?,?,?,?,?,?,?,?,?,?)");
        preparedStatement.setObject(1,uuid);
        preparedStatement.setString(2,farmer.getFname());
        preparedStatement.setString(3,farmer.getLname());
        preparedStatement.setString(4,farmer.getUsername());
        preparedStatement.setString(5,farmer.getPhone());
        preparedStatement.setString(6,farmer.getSex());
        preparedStatement.setString(7,farmer.getAddress());
        preparedStatement.setString(8,farmer.getCity());
        preparedStatement.setString(9,farmer.getNationalId());
        preparedStatement.setString(10,farmer.getZip());
        preparedStatement.setString(11,farmer.getPassword());
        preparedStatement.execute();
    }
//


    public String commit(){
        try {
            connection.commit();
            preparedStatement.close();
            connection.close();
            return "done";
        }catch (Exception e) {
            return "Class:FarmerDA Method:commit Exception";
        }
    }

}
