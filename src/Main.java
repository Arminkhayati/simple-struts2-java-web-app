import model.da.FarmerDA;
import model.to.Farmer;
import model.to.Validator;

import java.sql.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.UUID;

public class Main {

    public static void main(String[] args) throws Exception {
        Date date = new Date(2012,2,2);
        System.out.println(date.toString());
        java.util.Date date1 = new java.util.Date(2012,2,2);
        System.out.println(date1.toString());
        DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
        System.out.println(df.format(date1));

    }
}
