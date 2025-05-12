import 'package:flame/flame.dart';
import 'package:flame/game.dart';
// import 'package:flappy/game/world.dart';
import 'package:flappy/game/World.dart';
import 'package:flappy/game/bird.dart';
import 'package:flappy/game/pipe.dart';
// import 'bird.dart';
// import 'pipe.dart';
// import 'world.dart';

class FlappyBirdGame extends FlameGame {
  @override
  Future<void> onLoad() async {
    await add(World());
    await add(Bird());
    await add(PipePair());
  }
}
