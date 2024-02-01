void main(){
  var player = Player(
    name: "thespeace",
    xp:1500,
    team: 'blue',
    age: 21, //맨 끝에 `,`는 코드 포맷팅용
  ); //new를 쓸순 있지만 꼭 붙일 필요는 없다.
  player.sayHello();

  var player2 = Player(
    name: "seo",
    xp: 1200,
    team: 'red',
    age: 26,
  );
  player2.sayHello();

  var redPlayer = Player.createRedPlayer(
    name: 'kim',
    age: 22,
  );
  redPlayer.sayHello();

  var bluePlayer = Player.createBluePlayer(
    'lee',
    22,
  );
  bluePlayer.sayHello();

  var apiData = [
    {
      "name": "thespeace",
      "team": "red",
      "xp": 0,
      "age": 22,
    },
    {
      "name": "seo",
      "team": "blue",
      "xp": 0,
      "age": 23,
    },
    {
      "name": "kim",
      "team": "red",
      "xp": 0,
      "age": 24,
    },
  ];
  
  apiData.forEach((playerJson) {
    var player = Player.fromJson(playerJson);
    player.sayHello();
  });
}



/// -Create First Dart Class
class Player{
  final String name;//Class를 생성할 때는 타입을 꼭 명시해주어야 한다.
  int xp, age;
  String team;

  Player({
    required this.name,
    required this.xp,
    required this.team,
    required this.age
  }); //constructor method, 동적인 class를 만들 수 있다. 하지만 positional parameters(argument)는 클래스가 커질수록 통제가 어려울 수 있다.
      //따라서 Named Constructor Parameters를 통해서 적절한 제약을 추가해주는 것이 좋다. 여기선 필수값으로 설정했지만 null값일 경우 기본값을 주어서 설정할 수 있다.



  Player.createRedPlayer({//named syntax
    required String name,
    required int age,
  }) : this.age = age,    //콜론(:)을 사용하면 특별한 생성자 함수를 만들 수 있다.
       this.name = name,  //콜론을 넣음으로써 dart에게 여기서 객체를 초기화하라고 명령할 수 있다.
       this.team = 'red',
       this.xp = 0;

  //하지만 위의 방법은 Named parameters의 일반적인 방법이고 dart는 아래의 간소화된 방법을 추천.
  Player.createRed({
    required this.name,
    required this.age,
    this.team = 'red',
    this.xp = 0,
  });



  Player.createBluePlayer(String name, int age)//positional syntax
     : this.age = age,
       this.name = name,
       this.team = 'blue',
       this.xp = 0;

  //Positional parameters 간소화된 방법
  Player.createBlue(
      this.name,
      this.age,
      [this.team = 'blue', this.xp = 0]
      );



  Player.fromJson(Map<String, dynamic> playerJson)
      : name = playerJson['name'],
        xp = playerJson['xp'],
        team = playerJson['team'],
        age = playerJson['age'];


  void sayHello(){
    print("Hi my name is $name, 'm $age years old, $team team and xp is $xp"); //this 생략되어 있고, this를 사용하지 않는 것이 권고되고 있다.(method내에서 같은 이름의 variable가 있어서 어쩔 수 없이 사용하는게 아닌 이상)
  }
}