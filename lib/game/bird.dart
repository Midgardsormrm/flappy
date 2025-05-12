import 'package:flame/components.dart';
import 'package:flame/sprite.dart';
import 'package:flame/src/game/flame_game.dart';

class Bird extends SpriteAnimationComponent with HasGameRef {
  @override
  Future<void> onLoad() async {
    final spriteSheet = SpriteSheet(
      image: await gameRef.loadImage('assets/images/bird.png'),
      srcSize: Vector2(32, 32),
    );
    animation = spriteSheet.createAnimation(row: 0, stepTime: 0.1, to: 3);
    position = Vector2(100, gameRef.size.y / 2);
    size = Vector2(50, 50);
  }

  void fly() {}
}

extension on FlameGame<World> {
  loadImage(String s) {}
}
