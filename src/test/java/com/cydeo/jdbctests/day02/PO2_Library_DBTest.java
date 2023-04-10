package com.cydeo.jdbctests.day02;

import com.cydeo.jdbctests.utilities.DB_Util;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

public class PO2_Library_DBTest {

    // Create connection to MySQL Database
    String url = "jdbc:mysql://34.230.35.214:3306/library2";
    String username = "library2_client";
    String password = "6s2LQQTjBcGFfDhY";

    @Test
    public void task1() {
//create a connection
        DB_Util.createConnection(url, username, password);

//run query
DB_Util.runQuery("select count(*) from books");


//get data from DB
String expectedBookCountDB = DB_Util.getFirstRowFirstColumn();


/*
Assume we get this info from UI with automation
 */

//get data from UI
String actualBookCountUI ="3967";

/*
        Which one is expected / actual ?
        Actual -->   UI --> Since data comes from databasse with the help backend
                        There can be problem while we are binding data to UI.That is why we are
                        doing database test
        Expected --> DB --> UI needs to get data from database as it is .So we need to compare
                    actual (UI)  vs expected (DB )
         */

        /*
        CONNECTION HAS FAILED No suitable driver found for jdbc:mysql://34.230.35.214:3306/library2

        Solution *--> Add mysql driver to pom

            <!-- MySQL Driver   -->
        <dependency>
            <groupId>mysql</groupId>
            <artifactId>mysql-connector-java</artifactId>
            <version>8.0.25</version>
        </dependency>

         */
//compare
        Assertions.assertEquals(actualBookCountUI, expectedBookCountDB);


//close
        DB_Util.destroy();
    }


    /*

    homework
    do same task for borrowbook count:
       -get data from database to see how many bookBorrows we have
       - get data from UI to see how many bookBorrows we have
       - Assertions
    do same task for user count:
       -get data from database to see how many user we have
       - get data from UI to see how many user we have
       - Assertions


     */
    @Test
    public void bookReturn(){
//create a connection
        DB_Util.createConnection(url, username, password);

 // run query
     DB_Util.runQuery("select count(* ) from book_borrow where is_returned = 0");

//get data from database:
      String expectedtBookReturnedDB = DB_Util.getFirstRowFirstColumn();

//actual book returned from UI
        String actualBookReturnedUI = "306";

//compare / verify:
        Assertions.assertEquals(actualBookReturnedUI, expectedtBookReturnedDB);

 //close
 DB_Util.destroy();
    }

    @Test
    public void numberUsers(){
  //connection
        DB_Util.createConnection(url, username, password);

 //run query
 DB_Util.runQuery("select  count(full_name) from users");

 //get data from database:
String expectedUserNumber = DB_Util.getFirstRowFirstColumn();

 //actual user count from UI
String actualUserNumberUI = "1413";

 //verify result

        Assertions.assertEquals(actualUserNumberUI, expectedUserNumber);

 //close
DB_Util.destroy();

    }

}
