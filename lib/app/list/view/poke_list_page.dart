import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
            conditional: state.isLoading,
            truthyBuilder: () => Center(child: CircularProgressIndicator()),
            falsyBuilder: () => ListView.builder(
              padding: EdgeInsets.symmetric(vertical: 8),
              shrinkWrap: true,
              itemCount: state.pokemons != null ? state.pokemons.length : 0,
              itemBuilder: (context, index) => PokeListItem(state.pokemons[index]),
            ),
          ),
        ),
      ),
    );
  }
}