class Player {
  String name;
  int xp;
  String team;

  Player({required this.name, required this.xp, required this.team});

  void sayHello() {
    print("Hi my name is $name");
  }
}



void main() {
  var player = Player(name: 'thespeace', xp: 1200, team: 'red')
  ..name = 'seo'
  ..xp = 120000
  ..team = 'blue'; // `..`이라는 매우 유용한 operator을 사용해서 클래스 값을 변경해줄수있다.

  var anotherPlayer = Player(name: 'korean zombie', xp: 10000, team: 'purple');
  var god = anotherPlayer //class 생성 직후가 아니어도 클래스를 가리키게 앞에 변수선언만 해주면 된다.
  ..name = 'king'
  ..xp = 99999
  ..team = 'AOMG';

}