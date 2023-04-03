package com.cydeo.jdbctests;

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
    public void task1()  {

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

        //give me lat name of Steven
        System.out.println(dataList.get(0).get("last_name"));






    }
}
