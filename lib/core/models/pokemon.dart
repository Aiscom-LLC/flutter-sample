import 'package:equatable/equatable.dart';
import 'package:functional_data/functional_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pokemon.g.dart';

@JsonSerializable()
@FunctionalData()
class Pokemon extends $Pokemon with EquatableMixin {
  final String name;
  final String url;
  @JsonKey(ignore: true)
  String imageUrl;

  Pokemon({this.name, this.url, this.imageUrl});

  @override
  List<Object> get props => [name, url, imageUrl];

  factory Pokemon.fromJson(Map<String, dynamic> json) => _$PokemonFromJson(json);
  Map<String, dynamic> toJson() => _$PokemonToJson(this);

  static List<Pokemon> fromJsonToList(dynamic data) {
    return (data as List)
        ?.map((e) => e == null ? null : Pokemon.fromJson(e as Map<String, dynamic>))
        ?.toList();
  }
}