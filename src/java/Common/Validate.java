/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Common;

import Model.User;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

/**
 *
 * @author Admin
 */
public class Validate {

    public static boolean checkUsername(String user_name) {
        byte[] user_name_custom = user_name.getBytes();
        for (int i = 0; i < user_name_custom.length; i++) {
            if ((user_name_custom[i] >= 48
                    && user_name_custom[i] <= 57)
                    || (user_name_custom[i] >= 65
                    && user_name_custom[i] <= 90)
                    || (user_name_custom[i] >= 97
                    && user_name_custom[i] <= 122)) {
            } else {
                return false;
            }
        }
        return true;
    }

    public static boolean checkPassword(String password) {
        String regularExpression = "^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$";
        if (password.matches(regularExpression)) {
            return false;
        } else {
            return true;
        }
    }

    public static boolean checkName(String name) {
        byte[] name_custom = name.getBytes();
        for (int i = 0; i < name_custom.length; i++) {
            if ((name_custom[i] >= 65
                    && name_custom[i] <= 90)
                    || (name_custom[i] >= 97
                    && name_custom[i] <= 122)
                    || name_custom[i] == 32) {
            } else {
                return false;
            }
        }
        return true;
    }

    public static boolean checkNumber(String number) {
        byte[] number_custom = number.getBytes();
        for (int i = 0; i < number_custom.length; i++) {
            if ((number_custom[i] >= 48
                    && number_custom[i] <= 57)) {
            } else {
                return false;
            }
        }
        return true;
    }

    public static boolean checkAddress(String address) {
        byte[] address_custom = address.getBytes();
        for (int i = 0; i < address_custom.length; i++) {
            if ((address_custom[i] >= 33
                    && address_custom[i] <= 43)) {
//                    (address_custom[i] >= 46
//                    && address_custom[i] <= 47)||
//                    (address_custom[i] >= 58
//                    && address_custom[i] <= 64)||
//                    (address_custom[i] >= 91 && address_custom[i]<=96)
//                    ||(address_custom[i] >= 123 && address_custom[i]<=126)) {
                return false;
            }
        }
        return true;
    }

    public static boolean checkUser(User u) {
        return !(u.getAddress() == null || u.getInsurancenumber() == null || u.getName() == null || u.getPhonenumber() == null
                || u.getS().getMainsalary() == 0);
    }

    public static void main(String[] args) throws UnsupportedEncodingException {
        String text = "This is an example hà nội";
//        byte[] byteText = text.getBytes(Charset.forName("UTF-16"));
//        //To get original string from byte.
//        String originalString = new String(byteText, "UTF-16");
        System.out.println(text);
    }
}
