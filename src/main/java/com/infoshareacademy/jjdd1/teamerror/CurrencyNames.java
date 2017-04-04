package com.infoshareacademy.jjdd1.teamerror;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by sebastianlos on 04.04.17.
 */
public class CurrencyNames {
    // symbols and full names of currencies
    public static Map<String, String> Currencies = new HashMap<>();

    public static void loadCurrencies() {

        String content = FileReader.loadContent("omeganbp.lst");

        // split content into single lines
        String[] lines = content.split("\n");
        String[] parts;
        String[] file;

        for (int i = 3; i < lines.length - 2; i++) {

            parts = lines[i].split("\\s{2,}");
            file = parts[parts.length - 2].split("\\.");

            Currencies.put(file[0], parts[parts.length - 1]);
            System.out.println("jj " + file[0]);
        }
    }
}