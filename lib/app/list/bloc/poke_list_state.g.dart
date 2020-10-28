// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poke_list_state.dart';

// **************************************************************************
// FunctionalDataGenerator
// **************************************************************************

// ignore_for_file: join_return_with_assignment
// ignore_for_file: avoid_classes_with_only_static_members
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: avoid_equals_and_hash_code_on_mutable_classes
abstract class $PokeListState {
  const $PokeListState();
  List<Pokemon> get pokemons;
  bool get isLoading;
  PokeListState copyWith({List<Pokemon> pokemons, bool isLoading}) =>
      PokeListState(
          pokemons: pokemons ?? this.pokemons,
          isLoading: isLoading ?? this.isLoading);
  @override
  String toString() =>
      "PokeListState(pokemons: $pokemons, isLoading: $isLoading)";
  @override
  bool operator ==(dynamic other) =>
      other.runtimeType == runtimeType &&
      pokemons == other.pokemons &&
      isLoading == other.isLoading;
  @override
  int get hashCode {
    var result = 17;
    result = 37 * result + pokemons.hashCode;
    result = 37 * result + isLoading.hashCode;
    return result;
  }
}

class PokeListState$ {
  static final pokemons = Lens<PokeListState, List<Pokemon>>(
      (s_) => s_.pokemons, (s_, pokemons) => s_.copyWith(pokemons: pokemons));
  static final isLoading = Lens<PokeListState, bool>((s_) => s_.isLoading,
      (s_, isLoading) => s_.copyWith(isLoading: isLoading));
}
