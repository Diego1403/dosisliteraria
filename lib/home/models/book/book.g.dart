// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Library _$LibraryFromJson(Map<String, dynamic> json) {
  return Library()
    ..books = (json['books'] as List)
        ?.map(
            (e) => e == null ? null : Book.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$LibraryToJson(Library instance) => <String, dynamic>{
      'books': instance.books,
    };

Book _$BookFromJson(Map<String, dynamic> json) {
  return Book()
    ..id = json['id'] as String
    ..num = json['num'] as String
    ..title = json['title'] as String
    ..cover = json['cover'] as String
    ..year = json['year'] as String
    ..author = (json['author'] as List)
        ?.map((e) =>
            e == null ? null : Author.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..genres = (json['genres'] as List)
        ?.map((e) =>
            e == null ? null : BookGenre.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..tags = (json['tags'] as List)
        ?.map((e) =>
            e == null ? null : BookTag.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$BookToJson(Book instance) => <String, dynamic>{
      'id': instance.id,
      'num': instance.num,
      'title': instance.title,
      'cover': instance.cover,
      'year': instance.year,
      'author': instance.author?.map((e) => e?.toJson())?.toList(),
      'genres': instance.genres?.map((e) => e?.toJson())?.toList(),
      'tags': instance.tags?.map((e) => e?.toJson())?.toList(),
    };

BookGenre _$BookGenreFromJson(Map<String, dynamic> json) {
  return BookGenre()
    ..id = json['id'] as String
    ..name = json['name'] as String;
}

Map<String, dynamic> _$BookGenreToJson(BookGenre instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

BookTag _$BookTagFromJson(Map<String, dynamic> json) {
  return BookTag()
    ..id = json['id'] as String
    ..name = json['name'] as String;
}

Map<String, dynamic> _$BookTagToJson(BookTag instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
