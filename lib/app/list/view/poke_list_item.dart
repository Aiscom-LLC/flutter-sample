import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sample/core/models/pokemon.dart';

class PokeListItem extends StatelessWidget {
  PokeListItem(this.pokemon);

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 10,
            ),
            child: CachedNetworkImage(
              imageUrl: pokemon.imageUrl,
              width: 96,
              height: 96,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Name'),
              Text(
                pokemon.name,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Text(
                    'link',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}