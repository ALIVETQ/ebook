import 'package:flutter/material.dart';

class NavigationItem {
  IconData iconData;

  NavigationItem(this.iconData);
}

List<NavigationItem> getNavigationItemList() {
  return <NavigationItem>[
    NavigationItem(Icons.home),
    NavigationItem(Icons.book),
    NavigationItem(Icons.local_library),
    NavigationItem(Icons.person),
  ];
}

class Book {
  String title;
  String description;
  Author author;

  String image;

  Book(this.title, this.description, this.author,  this.image);
}

List<Book> getBookList() {
  return <Book>[
    Book(
      "the five point someone",
      "The newest suspense novel from the authors behind The Wife Between Us introduces us to Jessica Ferris. Jess just wants to make a little extra cash when she decides to participate in a study on ethics with the mysterious Dr. Lydia Shields. The premise seems simple: Answer a few questions, then collect. But soon the doctor’s questions turn from simple survey queries to something much more sinister—leaving Jess unsure of whom she can trust. An early contender for thriller of the year.",
      Author(
        "chetan bhagat",
        90,
        "images/authors/tan233.jpg",
      ),
      "images/books/tan3365.jpg",
    ),

    Book(
      "the five point someone",
      "The newest suspense novel from the authors behind The Wife Between Us introduces us to Jessica Ferris. Jess just wants to make a little extra cash when she decides to participate in a study on ethics with the mysterious Dr. Lydia Shields. The premise seems simple: Answer a few questions, then collect. But soon the doctor’s questions turn from simple survey queries to something much more sinister—leaving Jess unsure of whom she can trust. An early contender for thriller of the year.",
      Author(
        "chetan bhagat",
        90,
        "images/authors/tan233.jpg",
      ),
      "images/books/tan3365.jpg",
    ),

    Book(
      "the five point someone",
      "The newest suspense novel from the authors behind The Wife Between Us introduces us to Jessica Ferris. Jess just wants to make a little extra cash when she decides to participate in a study on ethics with the mysterious Dr. Lydia Shields. The premise seems simple: Answer a few questions, then collect. But soon the doctor’s questions turn from simple survey queries to something much more sinister—leaving Jess unsure of whom she can trust. An early contender for thriller of the year.",
      Author(
        "chetan bhagat",
        90,
        "images/authors/tan233.jpg",
      ),
      "images/books/tan3365.jpg",
    ),

    Book(
      "the five point someone",
      "The newest suspense novel from the authors behind The Wife Between Us introduces us to Jessica Ferris. Jess just wants to make a little extra cash when she decides to participate in a study on ethics with the mysterious Dr. Lydia Shields. The premise seems simple: Answer a few questions, then collect. But soon the doctor’s questions turn from simple survey queries to something much more sinister—leaving Jess unsure of whom she can trust. An early contender for thriller of the year.",
      Author(
        "chetan bhagat",
        90,
        "images/authors/tan233.jpg",
      ),
      "images/books/tan3365.jpg",
    ),

    Book(
      "the five point someone",
      "The newest suspense novel from the authors behind The Wife Between Us introduces us to Jessica Ferris. Jess just wants to make a little extra cash when she decides to participate in a study on ethics with the mysterious Dr. Lydia Shields. The premise seems simple: Answer a few questions, then collect. But soon the doctor’s questions turn from simple survey queries to something much more sinister—leaving Jess unsure of whom she can trust. An early contender for thriller of the year.",
      Author(
        "chetan bhagat",
        90,
        "images/authors/tan233.jpg",
      ),
      "images/books/tan3365.jpg",
    ),

    Book(
      "the five point someone",
      "The newest suspense novel from the authors behind The Wife Between Us introduces us to Jessica Ferris. Jess just wants to make a little extra cash when she decides to participate in a study on ethics with the mysterious Dr. Lydia Shields. The premise seems simple: Answer a few questions, then collect. But soon the doctor’s questions turn from simple survey queries to something much more sinister—leaving Jess unsure of whom she can trust. An early contender for thriller of the year.",
      Author(
        "chetan bhagat",
        90,
        "images/authors/tan233.jpg",
      ),
      "images/books/tan3365.jpg",
    ),


  ];
}

class Author {
  String fullname;
  int books;
  String image;

  Author(this.fullname, this.books, this.image);
}

List<Author> getAuthorList() {
  return <Author>[
    Author(
      "chetan bhaghat",
      134,
      "images/authors/tan233.jpg",
    ),
    Author(
      "chetan bhaghat",
      123,
      "images/authors/tan233.jpg",
    ),
    Author(
      "chetan bhaghat",
      112,
      "images/authors/tan233.jpg",
    ),
    Author(
      "chetan bhaghat",
      108,
      "images/authors/tan233.jpg",
    ),
    Author(
      "chetan bhaghat",
      99,
      "images/authors/tan233.jpg",
    ),
  ];
}

class Filter {
  String name;

  Filter(this.name);
}

List<Filter> getFilterList() {
  return <Filter>[
    Filter("CLASSICS"),
    Filter("NEW"),
    Filter("UPCOMING"),
  ];
}
