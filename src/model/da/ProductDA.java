package model.da;

import model.to.Product;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

public class ProductDA {

    private Connection connection;
    private PreparedStatement preparedStatement;
    public ProductDA(){
        try {
            connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/ZahraDb", "postgres", "1234");
            connection.setAutoCommit(false);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Product> selectFarmerProducts(String username)throws Exception{
        List<Product> products = new ArrayList<>();
        preparedStatement = connection.prepareStatement("Select id from farmer where username = ?");
        preparedStatement.setString(1, username);
        ResultSet resultSet = preparedStatement.executeQuery();
        String id = "";
        if(resultSet.next()){
            id = resultSet.getString("id");
        }else return products;

        preparedStatement = connection.prepareStatement("Select * from production where farmer_id = ?");
        preparedStatement.setObject(1, UUID.fromString(id));
        resultSet = preparedStatement.executeQuery();
        while (resultSet.next()){
            Product product = new Product();
            product.setQuality(resultSet.getString("quality"));
            product.setCity(resultSet.getString("city"));
            product.setCount(""+resultSet.getInt("count"));
            product.setName(resultSet.getString("pname"));
            product.setType(resultSet.getString("ptype"));
            products.add(product);
        }
        return products;
    }

    public void insert(Product product, String username)throws Exception{
        preparedStatement = connection.prepareStatement("Select id from farmer where username = ?");
        preparedStatement.setString(1, username);
        ResultSet resultSet = preparedStatement.executeQuery();
        String id = "";
        if(resultSet.next()){
            id = resultSet.getString("id");
        }else return;
        UUID uuid = UUID.randomUUID();
        preparedStatement = connection.prepareStatement("insert into production " +
                "(id, quality, city, ptype, pname, farmer_id, count) values (?,?,?,?,?,?,?)");
        preparedStatement.setObject(1, uuid);
        preparedStatement.setString(2, product.getQuality());
        preparedStatement.setString(3, product.getCity());
        preparedStatement.setString(4, product.getType());
        preparedStatement.setString(5, product.getName());
        preparedStatement.setObject(6, UUID.fromString(id));
        preparedStatement.setInt(7, Integer.parseInt(product.getCount()));
        preparedStatement.execute();
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
