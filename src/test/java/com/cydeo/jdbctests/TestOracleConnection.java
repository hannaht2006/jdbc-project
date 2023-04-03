package com.cydeo.jdbctests;

import java.sql.*;

public class TestOracleConnection {

    public static void main(String[] args) throws SQLException {

        String dbURL = "jdbc:oracle:thin:@34.227.149.74:1521:XE";

        String dbUserName ="hr";

        String dbPassword = "hr";
        /*
        how to init variable:
        --MAC : OPT + ENTER
        --Window: ALT + ENTER

         */


//DriverManager class getConnection method will help to connect database
            Connection conn = DriverManager.getConnection(dbURL,dbUserName,dbPassword);

// it help us to execute queries
        Statement statement = conn.createStatement();

//ResultSet will store data after execution. it stores only data (there is no table info)
        ResultSet rs = statement.executeQuery("select * from REGIONS");

        /*
        run query from java file:
        -click over the query(don't choose anywhere)
        MAc: CMD + ENTER
        Window: Ctrl + ENTER

         */

//Getting data
// next() --> moves the cursor forward one row from its current position

rs.next();

        System.out.println("----first row-----");
//pointer show the first row

        // how to get data

     //   rs.getInt(Index) --> it returns integer. Index start from 1 into SQL. it refers column position
        System.out.println(rs.getInt(1)); //return integer :1
        System.out.println(rs.getString(1)); //returns String : 1

 //rs.getInt(columnlable)
        System.out.println(rs.getInt("region_ID"));
        System.out.println(rs.getString("region_ID"));
//get me Europe
        System.out.println(rs.getString(2));// Europe
        System.out.println(rs.getString("region_Name"));//Europe

        rs.next();
        //2nd row
        System.out.println(rs.getInt(1));
        System.out.println(rs.getString(1)+"| "+ rs.getString(2));
        System.out.println(rs.getString("region_ID")+" |"+ rs.getString("region_Name"));

     //  3rd row
        rs.next();
        System.out.println(rs.getInt(1));

        System.out.println(rs.getString(1)+"| "+ rs.getString(2));

        System.out.println(rs.getString("region_ID")+" |"+ rs.getString("region_Name"));

        //4th row
        rs.next();
        System.out.println(rs.getInt(1));

        System.out.println(rs.getString(1)+"| "+ rs.getString(2));

        System.out.println(rs.getString("region_ID")+" |"+ rs.getString("region_Name"));

        //what if we have 1000 lines?? --> loop
  rs.beforeFirst();

        while(rs.next()){
            System.out.println("______________");

            System.out.println(rs.getString(1) + " " + rs.getString(2));
        }





 //close connections
 rs.close();
 statement.close();
 conn.close();


    }
}
