// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Author _$AuthorFromJson(Map<String, dynamic> json) {
  return Author()
    ..name = json['name'] as String
    ..country = json['country'] as String
    ..relatedAuthors = (json['relatedAuthors'] as List)
        ?.map((e) =>
            e == null ? null : Author.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$AuthorToJson(Author instance) => <String, dynamic>{
      'name': instance.name,
      'country': instance.country,
      'relatedAuthors':
          instance.relatedAuthors?.map((e) => e?.toJson())?.toList(),
    };
