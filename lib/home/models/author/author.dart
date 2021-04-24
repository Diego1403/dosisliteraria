import 'package:json_annotation/json_annotation.dart';

// Generated Json methods
part 'author.g.dart';

// Explicit json ya que referencia otros Autores
// => Author.toJson()
@JsonSerializable(explicitToJson: true)
class Author {
  Author();

  // EL nombre del autor
  String name;

  // El pais del autor
  String country;

  // Autores relacionados o parecidos //talvez sea mas eficiente guardar un string
  //un id de los authores relacionados
  List<Author> relatedAuthors;

  // Contructor from JSON
  factory Author.fromJson(Map<String, dynamic> json) => _$AuthorFromJson(json);

  // To JSON
  Map<String, dynamic> toJson() => _$AuthorToJson(this);
}
