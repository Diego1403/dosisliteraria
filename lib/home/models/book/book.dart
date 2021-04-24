import 'package:json_annotation/json_annotation.dart';
import '../author/author.dart';

// Json annotation codigo autogenerado
part 'book.g.dart';

@JsonSerializable(explicitToJson: true)
class Library {
  Library();
  List<Book> books;

  // Contructor from JSON
  factory Library.fromJson(Map<String, dynamic> json) =>
      _$LibraryFromJson(json);

  // To JSON
  Map<String, dynamic> toJson() => _$LibraryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Book {
  Book();

  // El ID del Libro (UUID String)
  String id;

  // TODO
  String num;

  // El titulo del libro
  String title;

  // La url donde se encuentra la portada del libro
  String cover;

  // El año de publicacion
  String year;

  // El autor del libro
  List<Author> author;

  // Generos del libro
  List<BookGenre> genres;

  // Etiquetas del libro
  List<BookTag> tags;

  // Contructor from JSON
  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);

  // To JSON
  Map<String, dynamic> toJson() => _$BookToJson(this);
}

/// Genero de un libro
@JsonSerializable()
class BookGenre {
  BookGenre();

  // UUID del genero
  String id;

  //Nombre del genero
  String name;

  // Contructor from JSON
  factory BookGenre.fromJson(Map<String, dynamic> json) =>
      _$BookGenreFromJson(json);

  // To JSON
  Map<String, dynamic> toJson() => _$BookGenreToJson(this);
}

// Tag de un libro
@JsonSerializable()
class BookTag {
  BookTag();

  // UUID del tag
  String id;

  //Nombre del tag
  String name;

  // Contructor from JSON
  factory BookTag.fromJson(Map<String, dynamic> json) =>
      _$BookTagFromJson(json);

  // To JSON
  Map<String, dynamic> toJson() => _$BookTagToJson(this);
}
