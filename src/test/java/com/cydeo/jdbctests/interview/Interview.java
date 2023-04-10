package com.cydeo.jdbctests.interview;

public class Interview {
    public static void main(String[] args) {
        String s = "ha12mko57";
        int count =0;
        int countvo =0;
        String vo ="";
        String co ="";
        for (int i = 0; i<s.length(); i++){
            char temp =s.charAt(i);
            if(Character.isDigit(temp)){
                count++;
            }
            if(temp=='a'|| temp=='e' || temp=='i' || temp=='o'|| temp=='u'){
                vo+= ""+temp;
                countvo++;
            }

            if(temp!='a'&& temp!='e' && temp!='i' && temp!='o'&& temp!='u'&& !Character.isDigit(temp)){
                co += ""+temp;
            }

        }
        System.out.println("number of digits= " +count);
        System.out.println(vo + " = " +countvo);
        System.out.println(co);

    }
}
