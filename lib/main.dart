import 'package:flame/game.dart';
import 'package:flame/components.dart';
import 'package:flappy/Player.dart';
import 'package:flappy/game/flappy_bird_game.dart';
import 'package:flutter/widgets.dart';

class MyGame extends FlameGame {
  @override
  Future<void> onLoad() async {
    debugPrint("Game Loaded!");
  }
}

void main() {
  final game = FlappyBirdGame();
  runApp(GameWidget(game: FlappyBirdGame()));
}
