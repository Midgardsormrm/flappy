import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flappy/game/assets.dart';
import 'package:flappy/game/flappy_game.dart';

// ignore: deprecated_member_use
class Background extends SpriteComponent with HasGameRef<FlappyBirdGame> {
  Background();

  @override
  Future<void> onLoad() async {
    final background = await Flame.images.load(Assets.background);
    size = gameRef.size;
    sprite = Sprite(background);
  }
}
