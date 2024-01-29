void main(){

  /*
  * -Basic Data Types
  *  아래 타입을 포함한 거의 대부분의 타입들이 객체(Object)로 이루어져 있다. (함수도 객체)
  *  이것이 Dart가 진정한 객체 지향 언어로 불리는 이유이다.
  */
  String stringVar = "문자열";
  bool booleanVar = true;
  int integerVar = 21;
  double doubleVar = 3.14;

  //num : Integer, Double Class의 부모 Class.
  num numVar = 12;
  numVar = 1.1;


  /*
  * -Lists
  *  `List`나 `var`로 List를 선언할 수 있다.
  *  dart list의 유용한 점은 `collection if`와 `collection for`을 지원하는 것이다.
  *  우선 `collection if`는 `존재할 수도 안할 수도 있는 요소를 가지고 올 수 있다.`
  *  아래 코드를 통해 살펴보자.
  */
  //collection if
  var giveMeFive = true;
  // List numbers = [1,2,3,4,5];
  var numbers = [
    1,
    2,
    3,
    4,
    if(giveMeFive) 5
  ];
  /*if(giveMeFive) {
    numbers.add(6);
  }*/
  print(numbers.isNotEmpty);
  print(numbers.first);
  print(numbers.last);
  print(numbers);

  //collection for
  var oldFriends = ['thespeace', 'john'];
  var newFriends = [
    'kim',
    'seo',
    'lee',
    for(var friend in oldFriends) "*$friend*"
  ];
  print(newFriends);


  /*
  * -String Interpolation
  *  $달러 기호를 붙이고 사용할 변수를 적어주면 된다.
  *  만약 무언가를 계산하고 싶다면 ${ } 형태로 적어주면 된다.
  *  아래의 코드를 참고하자.
  */
  var name = 'thespeace';
  var age = 21;
  var greeting = 'Hello everyone, my name is'
      '$name and I\'m ${age + 2}, nice to meet you!';
  print(greeting);


}