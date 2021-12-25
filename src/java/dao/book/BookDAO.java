/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.book;

import java.util.ArrayList;
import javafx.util.Pair;
import model.book.Author;
import model.book.Book;
import model.book.BookItem;
import model.book.Publisher;

/**
 *
 * @author DELL
 */
public interface BookDAO {

    int deleteBook(int id);

    int updateBook(Book Book);

    int UpdateAuthor(Author Author);

    int UpdatePublisher(Publisher publisher);

    Book getBook(int id);

    Publisher getBookPUB(int id);

    ArrayList<Author> getBookAU(int id);

    BookItem getBookIT(int id);

    Book getBookWithBookitemID(int bookItemId);

    Pair<BookItem, Book> getBookAllSttWithBookID(int bookid);

    Pair<BookItem, Book> getBooAllSTTWithBookItemID(int bookItemID);
}
