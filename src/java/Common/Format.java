/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Common;

import java.text.NumberFormat;
import java.util.Locale;

/**
 *
 * @author Admin
 */
public class Format {

    public static String formatMoney(int money) {
        Locale localeVN = new Locale("vi", "VN");
        NumberFormat currencyVN = NumberFormat.getCurrencyInstance(localeVN);
        String str = currencyVN.format(money);
        return str;
    }
}
