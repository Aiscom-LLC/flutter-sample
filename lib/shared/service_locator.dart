import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:sample/app/list/bloc/poke_list_bloc.dart';
import 'package:sample/data/dio_provider.dart';
import 'package:sample/data/repositories/pokemons_repository.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  //Miscellaneous
  locator.registerLazySingleton<DioProvider>(() => DioProvider(dio: Dio()));

  //Repositories
  locator.registerLazySingleton<PokemonsRepository>(
          () => PokemonsRepository(locator<DioProvider>()));

  //Blocs
  locator.registerFactory<PokeListBloc>(() =>
      PokeListBloc(pokemonsRepository: locator<PokemonsRepository>()));
}