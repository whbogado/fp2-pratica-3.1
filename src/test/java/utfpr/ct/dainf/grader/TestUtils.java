package utfpr.ct.dainf.grader;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Wilson
 */
public class TestUtils {
    public static String formatName(String name) {
        String[] tokens = name.trim().split("\\s+");
        StringBuilder sb = new StringBuilder();
        String lastName = tokens[tokens.length-1].toLowerCase();
        sb.append(Character.toUpperCase(lastName.charAt(0)));
        sb.append(lastName.substring(1)).append(",");
        for (int i = 0; i < tokens.length-1; i++) {
            sb.append(' ').append(Character.toUpperCase(tokens[i].charAt(0))).append('.');
        }
        return sb.toString();
    }
}
