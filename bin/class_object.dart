class Book {
  String title;
  String author;
  int numPages;

  Book(String aTitle, String aAuthor, int aNumPages) {
    this.title = aTitle;
    this.author = aAuthor;
    this.numPages = aNumPages;
  }
}

void main() {
  Book hp = Book("Harry Potter", "Eka Mahendra", 300);
  Book ft = Book("Learn Flutter for beginner", "Devi", 500);

  print(hp.numPages);
}
