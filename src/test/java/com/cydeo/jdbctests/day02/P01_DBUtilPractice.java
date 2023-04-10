package com.cydeo.jdbctests.day02;

import com.cydeo.jdbctests.utilities.DB_Util;
import org.junit.jupiter.api.Test;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class P01_DBUtilPractice {

    @Test
    public void task1(){

        //create connection
        DB_Util.createConnection();

        //run query
        DB_Util.runQuery("select first_name, last_name, salary from employees");


        //get results
        System.out.println("--Get me first row fist column--");
        System.out.println(DB_Util.getFirstRowFirstColumn());

        System.out.println("--Get me all column name--");
        System.out.println(DB_Util.getAllColumnNamesAsList());

        System.out.println("--Get me all first name--");
        System.out.println(DB_Util.getColumnDataAsList(1));

        System.out.println("--Get me how many row--");
        System.out.println(DB_Util.getRowCount());

        System.out.println("--Get me certain row--");

        System.out.println("--Get me as map--");
        System.out.println(DB_Util.getRowMap(5));

        System.out.println("--Get me row as list--");
        System.out.println(DB_Util.getRowDataAsList(3));

        System.out.println("--Get me all data as a List of Map--");
        List<Map<String,String>> allRowLstOfMap = new ArrayList<>();
        for(Map<String, String>  eachRowMap : allRowLstOfMap){
            System.out.println(eachRowMap);
        }



        //close connection
    DB_Util.destroy();
    }
}
