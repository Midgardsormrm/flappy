import 'package:flame/game.dart';
import 'package:flame/components.dart';
import 'package:flappy/Player.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(GameWidget(game: FlameGame(world: MyWorld())));
}

class MyWorld extends World {
  @override
  Future<void> onLoad() async {
    add(Player(position: Vector2(0, 0)));
  }
}
