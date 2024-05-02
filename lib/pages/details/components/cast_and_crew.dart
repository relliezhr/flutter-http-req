import 'package:flutter/material.dart';
import 'package:http_req/constants.dart';
import 'cast_card.dart';
import 'package:http_req/models/movie.dart';

class CastAndCrew extends StatelessWidget {
  final List casts;

  CastAndCrew({super.key, required this.casts});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Cast & Crew",
            style: Theme.of(context).textTheme.headline5,
          ),
          SizedBox(height: 12),
          SizedBox(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: casts.length,
              itemBuilder: (context, index) => CastCard(cast: casts[index]),
            ),
          )
        ],
      ),
    );
  }
}
