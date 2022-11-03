package models;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class BeanTest {

    public static void main(String[] args) {
        Album album = new Album(1,"the doors", "doors", LocalDate.of(1969,12,2), 20, "rock");

        Album album2 = new Album(2,"2 pac", "all eyes on me", LocalDate.of(1995,12,1),15, "rap");

        Author author = new Author(1,"john", "smith");
        Author author2 = new Author(2, "jane", "doe");

        Quote quote = new Quote(1, "Keep calm", author);
        Quote quote2 = new Quote(2, "dont lie",author2);

        ArrayList<Quote> quotes = new ArrayList<>();
        quotes.add(quote);
        quotes.add(quote2);

        for (Quote quoteItem : quotes) {
            System.out.println(quoteItem.getContent());
            System.out.println("- " + quoteItem.getAuthor().getFirstName() + " " + quoteItem.getAuthor().getLastName());
        }

        System.out.println(album.getRelease_date());
    }
}
