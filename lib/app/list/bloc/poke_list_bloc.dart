import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample/app/list/bloc/poke_list_event.dart';
import 'package:sample/app/list/bloc/poke_list_state.dart';
import 'package:sample/data/repositories/pokemons_repository.dart';
import 'package:meta/meta.dart';

class PokeListBloc extends Bloc<PokeListEvent, PokeListState> {
  PokeListBloc({
    @required PokemonsRepository pokemonsRepository,
  }) :  assert(pokemonsRepository != null),
        _pokemonsRepository = pokemonsRepository,
        super(PokeListState(isLoading: false));

  final PokemonsRepository _pokemonsRepository;

  @override
  Stream<PokeListState> mapEventToState(PokeListEvent event) async* {
    if(event is LoadPokemons) {
      yield* _mapLoadPokemonsToState(event, state);
    }
  }

  Stream<PokeListState> _mapLoadPokemonsToState(
      LoadPokemons event, PokeListState state) async* {
    yield state.copyWith(isLoading: true);
    var pokemons = await _pokemonsRepository.getPokemonsList();
    yield state.copyWith(isLoading: false, pokemons: pokemons);
  }
}