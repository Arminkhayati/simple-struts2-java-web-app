package model.da;

import model.to.Buyer;
import model.to.Product;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

public class BuyerDA {


    private Connection connection;
    private PreparedStatement preparedStatement;
    public BuyerDA(){
        try {
            connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/ZahraDb", "postgres", "29399");
            connection.setAutoCommit(false);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public boolean selectUser(String username)throws Exception{
        preparedStatement = connection.prepareStatement("Select username from buyer where username = ?");
        preparedStatement.setString(1,username);
        ResultSet resultSet = preparedStatement.executeQuery();
        boolean found =resultSet.next();
        resultSet.close();
        return found;
    }

    public boolean selectUser(String username, String password)throws Exception{
        preparedStatement = connection.prepareStatement("Select username from buyer where username = ? and password = ?");
        preparedStatement.setString(1,username);
        preparedStatement.setString(2,password);
        ResultSet resultSet = preparedStatement.executeQuery();
        boolean found =resultSet.next();
        resultSet.close();
        return found;
    }

    public void insert(Buyer buyer)throws Exception{
        UUID uuid = UUID.randomUUID();
        preparedStatement = connection.prepareStatement("insert into buyer (id, fname, lname, username, phone, password, address, city) values (?,?,?,?,?,?,?,?)");
        preparedStatement.setObject(1,uuid);
        preparedStatement.setString(2,buyer.getFname());
        preparedStatement.setString(3,buyer.getLname());
        preparedStatement.setString(4,buyer.getUsername());
        preparedStatement.setString(5,buyer.getPhone());
        preparedStatement.setString(6,buyer.getPassword());
        preparedStatement.setString(7,buyer.getAddress());
        preparedStatement.setString(8,buyer.getCity());
        preparedStatement.execute();
    }

    public List<Product> selectProducts()throws Exception{
        List<Product> products = new ArrayList<>();
        preparedStatement = connection.prepareStatement("Select * from production where production.count > 0");
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()){
            Product product = new Product();
            product.setQuality(resultSet.getString("quality"));
            product.setCity(resultSet.getString("city"));
            product.setCount(""+resultSet.getInt("count"));
            product.setName(resultSet.getString("pname"));
            product.setType(resultSet.getString("ptype"));
            product.setId(resultSet.getString("id"));
            products.add(product);
        }
        return products;
    }

    public String selectCoutn(String id)throws Exception{
        preparedStatement = connection.prepareStatement("Select production.count from production where production.id = ?");
        preparedStatement.setObject(1, UUID.fromString(id));
        ResultSet resultSet = preparedStatement.executeQuery();
        resultSet.next();
        return resultSet.getString("count");
    }

    public void updateCount(int count, String id)throws Exception{
        preparedStatement = connection.prepareStatement("update production set count = ? where id = ? ");
        preparedStatement.setInt(1,count);
        preparedStatement.setObject(2, UUID.fromString(id));
        preparedStatement.executeUpdate();
    }

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
