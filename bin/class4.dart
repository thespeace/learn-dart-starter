mixin Strong { // `mixin` 생성자가 없는 클래스.
  final double strengthLevel = 1500.99;
}

mixin QuickRunner {
  void runQuick(){
    print("ruuuuuuun!");
  }
}

mixin class Tall {
  final double height = 1.99;
}

enum Team { red, blue }

class Player with Strong, QuickRunner, Tall { //`with`를 통해 mixin 클래스의 프로퍼티와 메서드들을 가져 온다.
  final Team team;

  Player({
    required this.team
  });
}

void main(){
  var player = Player(
      team: Team.red,
  );
  player.runQuick();
}
