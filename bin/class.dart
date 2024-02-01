void main(){
  var player = Player("thespeace", 1500); //new를 쓸순 있지만 꼭 붙일 필요는 없다.
  player.sayHello();
  var player2 = Player("seo", 1200);
  player2.sayHello();
}



/// -Create First Dart Class
class Player{
  final String name;//Class를 생성할 때는 타입을 꼭 명시해주어야 한다.
  int xp;

  Player(this.name, this.xp); //constructor method, 동적인 class를 만들 수 있다.

  void sayHello(){
    print("Hi my name is $name"); //this 생략되어 있고, this를 사용하지 않는 것이 권고되고 있다.(method내에서 같은 이름의 variable가 있어서 어쩔 수 없이 사용하는게 아닌 이상)
  }
}