/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utils;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class Parser {

    public static int[] parseStringToIntegerArray(String target, String separator) {
        if (target == null) {
            return new int[0];
        }

        String[] strArray = target.split(separator);
        List<Integer> listInteger = new ArrayList<>();

        for (String item : strArray) {
            int number = -1;

            try {
                number = Integer.parseInt(item);
            } catch (NumberFormatException e) {
                System.err.println(e);
            }

            listInteger.add(number);
        }

        return listInteger.stream().mapToInt(Integer::intValue).toArray();
    }
}
