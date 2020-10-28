import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sample/core/models/pokemon.dart';
import 'package:url_launcher/url_launcher.dart';

class PokeListItem extends StatelessWidget {
  PokeListItem(this.pokemon);

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async => await launch(
          'https://www.pokemon.com/us/pokedex/${pokemon.name}'),
      child: Card(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              child: CachedNetworkImage(
                imageUrl: pokemon.imageUrl,
                width: 116,
                height: 116,
              ),
            ),
            Text(
              pokemon.name,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}