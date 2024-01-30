void main(){
  sayHello("thespeace1");
  print(returnSayHello('potato'));
  print(plus(99, 1));
}

/**
 * -Defining a Function
 *  Dart는 진정한 객체 지향 언어이므로 함수도 객체이며 타입이 Function입니다. 이는 함수를 변수에 할당하거나 다른 함수에 인수로 전달할 수 있음을 의미합니다.
 */
void sayHello(String name) {// void : return X
  print("Hello $name, nice to meet you!");
}

String returnSayHello(String nickName) {
  //call api
  //bla bla~
  return "Hello $nickName, nice to meet you!";
}

//한 줄 짜리 함수는 fat arrow syntax 문법을 사용할 수 있다.
num plus(num a, num b) => a + b;