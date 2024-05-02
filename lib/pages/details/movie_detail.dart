import 'package:flutter/material.dart';
import 'package:http_req/models/movie.dart';
import 'package:http_req/pages/details/components/body.dart';

class MovieDetail extends StatelessWidget {
  final Movie movie;
  const MovieDetail(this.movie, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(movie: movie),
    );
  }
}
