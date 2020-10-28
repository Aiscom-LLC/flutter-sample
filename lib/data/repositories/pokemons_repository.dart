import 'package:dio/dio.dart';
import 'package:sample/core/models/pokemon.dart';
import 'package:sample/data/dio_provider.dart';

class PokemonsRepository {
  final DioProvider dioProvider;
  final String _firstPageOfPokemonsUrl = 'https://pokeapi.co/api/v2/pokemon?limit=20&offset=0';
  String _nextPageOfPokemonsUrl;

  PokemonsRepository(this.dioProvider);

  Future<List<Pokemon>> getPokemonsList() async {
    try {
      Response response = await dioProvider.dio
          .get(_nextPageOfPokemonsUrl ?? _firstPageOfPokemonsUrl);
      if (response.statusCode == 200) {
        _nextPageOfPokemonsUrl = response.data['next'];
        return Pokemon.fromJsonToList(response.data['results']).map((pokemon) {
          var res = pokemon.url.split('/')..removeLast();
          pokemon.imageUrl = 'https://pokeres.bastionbot.org/images/pokemon/${res.last}.png';
          return pokemon;
        }).toList();
      } else {
        print('Failed Pokemons fetching: ${response.statusCode}');
      }
      return null;
    } catch (e) {
      return null;
    }
  }
}