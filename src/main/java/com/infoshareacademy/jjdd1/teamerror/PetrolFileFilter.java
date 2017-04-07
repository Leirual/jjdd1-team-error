package com.infoshareacademy.jjdd1.teamerror;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by sebastianlos on 06.04.17.
 */
public class PetrolFileFilter {

    // divide content of Currency File and put this information as objects
    public static List<PetrolPrices> putPetrolFileContentToClass(List<String> lines) {

        // single elements of given line
        List<PetrolPrices> PetrolPrices = new ArrayList<>();
        String[] parts;

        for (int i = 1; i < lines.size(); i++) {
            parts = lines.get(i).split(";");
            PetrolPrices value = new PetrolPrices();
            value.setCountryName(parts[0]);
            value.setDate(DateParser.DateFromString(parts[1], parts[2]));
            value.setCurrencyCode(parts[3]);
            value.setGasolinePrice(Double.parseDouble(changeComaToPoint(parts[4])));
            value.setDieselPrice(Double.parseDouble(changeComaToPoint(parts[5])));

            PetrolPrices.add(value);
        }
        return PetrolPrices;
    }

    public static String changeComaToPoint(String price) {
        return price.replace(',','.');
    }

}