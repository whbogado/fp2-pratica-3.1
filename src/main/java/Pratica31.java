import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

/**
 * IF62C Fundamentos de Programação 2
 * Exercício de programação em Java
 * @author Wilson Horstmeyer Bogado <wilson@utfpr.edu.br>
 */
public class Pratica31 {

    public static void main(String[] args) {
        Date inicio = new Date();

        String meuNome = "Fulano Beltrano Ciclano";
        System.out.println(meuNome.toUpperCase());
        
        String ultimoNome = Character.toUpperCase(meuNome.charAt(16)) + meuNome.substring(17).toLowerCase();
        System.out.println(ultimoNome + ", " + Character.toUpperCase(meuNome.charAt(0)) + ". "
                + Character.toUpperCase(meuNome.charAt(7)) + ".");
        
        GregorianCalendar nasc = new GregorianCalendar(1983, Calendar.AUGUST, 17);
        long dias = (System.currentTimeMillis() - nasc.getTime().getTime()) / (24 * 3600 * 1000);
        System.out.println("Dias até hoje: " + dias);
        Date fim = new Date();

        System.out.println("Tempo de processamento: " + (fim.getTime() - inicio.getTime()) + "ms");

    }
}
