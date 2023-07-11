import 'package:flutter/material.dart';

class Book {
  Book({
    required this.content,
  });
  String content;
}

class BookService extends ChangeNotifier {
  List<Book> bookList = [
    Book(content: '첫 방명록'),
    Book(content: '두번째 방명록'),
  ];

  createBook({required String content}) {
    Book book = Book(content: content);
    bookList.add(book);
    notifyListeners();
  }

  updateBook({required int index, required String content}) {
    Book book = bookList[index];
    book.content = content;
    notifyListeners();
  }

  deleteMemo({required int index}) {
    bookList.removeAt(index);
    notifyListeners();
  }
}
