class Human {
  final String name;
  Human({required this.name});
  void sayHello(){
    print("Hi my name is $name");
  }
}

enum Team { red, blue }

class Player extends Human {
  final Team team;

  Player({
    required this.team,
    required String name,
  }) : super(name: name); //`super` 키워드를 통해 부모 클래스와 상호작용.

  @override //override.
  void sayHello() {
    super.sayHello();
    print('and I play for ${team}');
  }
}

void main() {
  var player = Player(
      team: Team.red,
      name: 'thespeace'
  );

  player.sayHello();
}