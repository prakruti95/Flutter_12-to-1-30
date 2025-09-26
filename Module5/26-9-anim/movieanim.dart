import 'package:flutter/material.dart';
import 'package:simple_animations/movie_tween/movie_tween.dart';

class MovieTweenAnim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Specify your tween
    final MovieTween tween = MovieTween()
    // Scene 1: Change width from 0 to 100 over the first second
      ..scene(
          begin: const Duration(milliseconds: 0),
          end: const Duration(milliseconds: 1000))
          .tween('width', Tween(begin: 0.0, end: 100.0))
    // Scene 2: Change width from 100 to 200 over the next 800 milliseconds
      ..scene(
          begin: const Duration(milliseconds: 1000),
          end: const Duration(milliseconds: 1800))
          .tween('width', Tween(begin: 100.0, end: 200.0))
    // Scene 3: Change height from 0 to 200 over 2.5 seconds
      ..scene(
          begin: const Duration(milliseconds: 0),
          duration: const Duration(milliseconds: 2500))
          .tween('height', Tween(begin: 0.0, end: 200.0))
    // Scene 4: Change color from orange to green over 3 seconds
      ..scene(
          begin: const Duration(milliseconds: 0),
          duration: const Duration(milliseconds: 3000))
          .tween('color', ColorTween(begin: Colors.orange, end: Colors.green));

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        //child: _DelayedAnimation(tween: tween),
      ),
    );
  }
}