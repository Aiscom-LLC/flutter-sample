import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';
import 'package:sample/app/list/bloc/poke_list_bloc.dart';
import 'package:sample/app/list/bloc/poke_list_event.dart';
import 'package:sample/app/list/bloc/poke_list_state.dart';
import 'package:sample/app/list/view/poke_list_item.dart';
import 'package:sample/app/widgets/conditional_content.dart';
import 'package:sample/shared/service_locator.dart';

class PokeListPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<PokeListBloc>()..add(LoadPokemons()),
      child: BlocBuilder<PokeListBloc, PokeListState>(
        builder: (context, state) => Scaffold(
          appBar: AppBar(
            title: Text('Pokémons'),
          ),
          body: ConditionalContent(
            conditional: state.isLoading && state.pokemons.isEmpty,
            truthyBuilder: () => Center(child: CircularProgressIndicator()),
            falsyBuilder: () => LazyLoadScrollView(
              onEndOfPage: () => context.bloc<PokeListBloc>().add(LoadPokemons()),
              child: GridView.count(
                padding: EdgeInsets.symmetric(vertical: 8),
                shrinkWrap: true,
                crossAxisCount: 2,
                children: List.generate(state.pokemons.length,
                      (index) => PokeListItem(state.pokemons[index]),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}