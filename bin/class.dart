void main(){
  var player = Player(); //new를 쓸순 있지만 꼭 붙일 필요는 없다.
  print(player.name);
  // player.name = 'seo'; //final 변수는 변경 불가.
  print(player.name);
  player.sayHello();
}



/// -Create First Dart Class
class Player{
  final String name = 'thespeace';//Class를 생성할 때는 타입을 꼭 명시해주어야 한다.
  int xp = 1500;

  void sayHello(){
    print("Hi my name is $name"); //this 생략되어 있고, this를 사용하지 않는 것이 권고되고 있다.(method내에서 같은 이름의 variable가 있어서 어쩔 수 없이 사용하는게 아닌 이상)
  }
}