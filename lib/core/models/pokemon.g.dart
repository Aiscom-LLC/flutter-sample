// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon.dart';

// **************************************************************************
// FunctionalDataGenerator
// **************************************************************************

// ignore_for_file: join_return_with_assignment
// ignore_for_file: avoid_classes_with_only_static_members
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: avoid_equals_and_hash_code_on_mutable_classes
abstract class $Pokemon {
  const $Pokemon();
  String get name;
  String get url;
  String get imageUrl;
  Pokemon copyWith({String name, String url, String imageUrl}) => Pokemon(
      name: name ?? this.name,
      url: url ?? this.url,
      imageUrl: imageUrl ?? this.imageUrl);
  @override
  String toString() => "Pokemon(name: $name, url: $url, imageUrl: $imageUrl)";
  @override
  bool operator ==(dynamic other) =>
      other.runtimeType == runtimeType &&
      name == other.name &&
      url == other.url &&
      imageUrl == other.imageUrl;
  @override
  int get hashCode {
    var result = 17;
    result = 37 * result + name.hashCode;
    result = 37 * result + url.hashCode;
    result = 37 * result + imageUrl.hashCode;
    return result;
  }
}

class Pokemon$ {
  static final name = Lens<Pokemon, String>(
      (s_) => s_.name, (s_, name) => s_.copyWith(name: name));
  static final url =
      Lens<Pokemon, String>((s_) => s_.url, (s_, url) => s_.copyWith(url: url));
  static final imageUrl = Lens<Pokemon, String>(
      (s_) => s_.imageUrl, (s_, imageUrl) => s_.copyWith(imageUrl: imageUrl));
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pokemon _$PokemonFromJson(Map<String, dynamic> json) {
  return Pokemon(
    name: json['name'] as String,
    url: json['url'] as String,
  );
}

Map<String, dynamic> _$PokemonToJson(Pokemon instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
