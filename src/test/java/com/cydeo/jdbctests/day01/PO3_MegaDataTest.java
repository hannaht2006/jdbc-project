package com.cydeo.jdbctests;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class PO3_MegaDataTest {
    String dbUrl="jdbc:oracle:thin:@174.129.150.19:1521:XE";
    String dbUsername="hr";
    String dbPassword="hr";



    @Test
    public void task1() throws SQLException {


        // DriverManager Class getConnection method will help to connect database
        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

        // It helps us to execute queries
        Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);

        // ResultSet will store data after execution.It stores only data (there is no table info )
        ResultSet rs = statement.executeQuery("select first_name,LAST_NAME, SALARY  from EMPLOYEES" );

//connection get metadata
        //DatabaseMetaData --> it is information about database itself
        DatabaseMetaData dbMetaData = conn.getMetaData();

        System.out.println(dbMetaData.getDatabaseProductVersion());
        System.out.println(dbMetaData.getDatabaseProductName());
        System.out.println(dbMetaData.getUserName());
        System.out.println(dbMetaData.getDriverVersion());
        System.out.println(dbMetaData.getDriverName());

//ResultSetMetaData--> it provides information about table upper side (columnName, columncount)
   ResultSetMetaData rsmd = rs.getMetaData();

   //How many column we have
      int columnCount   = rsmd.getColumnCount();
        System.out.println(columnCount);

        //get me column name from index 1
        System.out.println(rsmd.getColumnName(1));

        //get me column name from index 3
        System.out.println(rsmd.getColumnName(2));

        //it will return provided columnIndex name

        //print all column names dynamicly
        System.out.println("----------columns name----------");
        for(int i = 1; i<=columnCount; i++){
            System.out.println(rsmd.getColumnName(i));
        }

        /*
        HOW TO GET DATA DYNAMICLY FOR QUERIES ?
            ResultSet         --> it holds table data
                   rs.next() --> to iterate each row dynamicly
                   rs.getString(index)     --> to get data from specified column
                   rs.getString(ColumnName)
            ResultSetMetaData --> it holds table infor (columnNames - ColumnCount)
                   rsmd.getColumnCount() ---> will give how many column we have
                   rsmd.getColumnName()  ---> it will give spesified columnName
         */


        //Print Table content dynamicly
        //iterate each row
        while(rs.next()){

            //iterate each column
            for(int i= 1; i <= rsmd.getColumnCount(); i++){
                System.out.println(rsmd.getColumnName(i) + " - " + rs.getString(i) +" ");
            }
            System.out.println();
        }





// close connections
        rs.close();
        statement.close();
        conn.close();
    }
}
