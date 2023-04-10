package com.cydeo.jdbctests.day01;

import org.junit.jupiter.api.Test;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class PO4_ListOfMap {
    String dbUrl = "jdbc:oracle:thin:@174.129.150.19:1521:XE";
    String dbUsername = "hr";
    String dbPassword = "hr";


    @Test
    public void task1() {

        Map<String, Object> rowMap1 = new HashMap<>();
        System.out.println("---row map 1-----------");

        rowMap1.put("first_name", "Steven");
        rowMap1.put("last_name", "King");
        rowMap1.put("salary", 24000);

        System.out.println(rowMap1);

        Map<String, Object> rowMap2 = new HashMap<>();
        System.out.println("---row map 2-----------");

        rowMap2.put("first_name", "Neena");
        rowMap2.put("last_name", "Kochhar");
        rowMap2.put("salary", 17000);
        System.out.println(rowMap2);

        /**
         *
         * it will continue till the end of the list
         * Assume that we have 107 map
         * Create an ArrayList and put all Maps into List
         */

        System.out.println("----------ArrayList--------------");
        List<Map<String, Object>> dataList = new ArrayList<>();
        dataList.add(rowMap1);
        dataList.add(rowMap2);

        System.out.println(dataList);

        //give me lat name of Steven: index 0 is first row, and get("last_name") to get King. last_name is the key in map and value is King
        System.out.println(dataList.get(0).get("last_name"));


    }

    @Test
    public void task2() throws SQLException {

        // DriverManager Class getConnection method will help to connect database
        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

        // It helps us to execute queries
        Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);

        // ResultSet will store data after execution.It stores only data (there is no table info )
        ResultSet rs = statement.executeQuery("select first_name,LAST_NAME, SALARY  from EMPLOYEES");

        ResultSetMetaData rsmd = rs.getMetaData();

        //jump to 1st row:
        rs.next();

        Map<String, Object> rowMap1 = new HashMap<>();
        System.out.println("---row map 1-----------");

        rowMap1.put(rsmd.getColumnName(1), rs.getString(1));
        rowMap1.put(rsmd.getColumnName(2), rs.getString(2));
        rowMap1.put(rsmd.getColumnName(3), rs.getString(3));

        System.out.println(rowMap1);


        rs.next();

        Map<String, Object> rowMap2 = new HashMap<>();
        System.out.println("---row map 1-----------");

        rowMap2.put(rsmd.getColumnName(1), rs.getString(1));
        rowMap2.put(rsmd.getColumnName(2), rs.getString(2));
        rowMap2.put(rsmd.getColumnName(3), rs.getString(3));

        System.out.println(rowMap2);

        /**
         *
         * it will continue till the end of the list
         * Assume that we have 107 map
         * Create an ArrayList and put all Maps into List
         */

        List<Map<String, Object>> dataList = new ArrayList<>();
        dataList.add(rowMap1);
        dataList.add(rowMap2);

        System.out.println(dataList);

//give last name of Steven: index 0 is first row, and get(rsmd.getColumnName(2)) to get King.  rsmd.getColumnName(2) is way to enter Key in map and value is King
        System.out.println(dataList.get(0).get(rsmd.getColumnName(2)));


        // close connections
        rs.close();
        statement.close();
        conn.close();
    }

    @Test
    public void task3() throws SQLException {

        // DriverManager Class getConnection method will help to connect database
        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

        // It helps us to execute queries
        Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);

        // ResultSet will store data after execution.It stores only data (there is no table info )
        ResultSet rs = statement.executeQuery("select first_name,LAST_NAME, SALARY  from EMPLOYEES");

        ResultSetMetaData rsmd = rs.getMetaData();

List<Map<String, Object>> dataList = new ArrayList <>();

//iterate each row dynamicly
  while(rs.next()){

      Map<String, Object> rowMap = new HashMap<>();

      //iterate each column dynamicly to fill rowMap

      for (int i = 1; i <= rsmd.getColumnCount(); i++) {
          rowMap.put(rsmd.getColumnName(i), rs.getString(i));
          //i=1 rowMap.put("first_name", "Steven")
          //i=2 rowMap.put("last_name", "King")
          //i=1 rowMap.put("salary", "24000")

      }
      dataList.add(rowMap);
  }
        System.out.println("------------all data----------");
  for(Map<String, Object> eachrowMap : dataList){
      System.out.println(eachrowMap);
  }
   //     System.out.println(dataList);

        // close connections
        rs.close();
        statement.close();
        conn.close();
    }
}
