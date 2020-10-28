import 'package:equatable/equatable.dart';
import 'package:functional_data/functional_data.dart';
import 'package:sample/core/models/pokemon.dart';

part 'poke_list_state.g.dart';

@FunctionalData()
class PokeListState extends $PokeListState with EquatableMixin {
  const PokeListState({
    this.pokemons,
    this.isLoading,
  });

  final List<Pokemon> pokemons;
  final bool isLoading;

  @override
  List<Object> get props => [pokemons, isLoading];
}