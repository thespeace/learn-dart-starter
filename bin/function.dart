void main(){
  sayHello("thespeace1");
  print(returnSayHello('potato'));
  print(plus(99, 1));



  print(sayDefault(
      age: 19,
      country: "korea",
      name: 'thespeace',
  ));
  print(sayRequired(
      age: 21,
      country: "taiwan",
      name: 'seo',
  ));



  print(sayOptional('thespeace', 30));



  //QQ Operator
  print(capitalizeName('thespeace'));
  print(capitalizeName(null));
  String? name;
  name ??= 'thespeace';
  name = null;
  name ??= 'another';
  print(name);



  print(reverseListOfNumbers([1, 2, 3]));
}



/// -Defining a Function
///  Dart는 진정한 객체 지향 언어이므로 함수도 객체이며 타입이 Function입니다.
///  이는 함수를 변수에 할당하거나 다른 함수에 인수로 전달할 수 있음을 의미합니다.
///  예시 : [sayHello], [returnSayHello], [plus]
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



/// -Named Parameters
///  Named parameters는 명시적으로 required로 표시되지 않는 한 선택 사항입니다.
///  기본값을 제공하지 않거나 Named parameters를 필수로 표시하지 않으면 해당 유형은 기본값이 null이 되므로 null을 허용해야 합니다.
///  예시 : [sayDefault], [sayRequired]
String sayDefault({ //null safety를 지키기 위해 default value 지정.
  String name = 'anon',
  int age = 99,
  String country = 'wakanda',
}) {
  return "Hello $name, you are $age, and you come from $country";
}

String sayRequired({ //null safety를 지키기 위해 타입 앞에 required 입력.
  required String name,
  required int age,
  required String country,
}) {
  return "Hello $name, you are $age, and you come from $country";
}



/// -Optional Positional Parameters
///    * Parameters
///      1. Positional parameters : 함수에 정의되어있는 파라미터 순서대로 들어감.
///      2. Named Parameters : 함수에 정의되어 있는 파라미터 순서를 지키지 않아도 됨.
///      3. Optional Positional Parameters : 함수 정의 시 괄호 안에 대괄호 []를 사용하여 선언, 함수를 호출할 때 이 매개변수들을 생략하거나 포함할 수 있습니다.
String sayOptional(String name, int age, [String? country = 'korea'])
=> "Hello $name, you are $age, and you come from $country";



/// -QQ Operator(`question question` or `null aware operator`)
///  `left ?? right` : 좌항이 null이 아니면 좌항을 return, 좌항이 null이면 우항을 return.
String capitalizeName(String? name) => name?.toUpperCase() ?? 'ANON';



/// -Typedef
///  자료형에 사용자가 원하는 alias를 붙일 수 있게 해준다. (자료형 이름의 별명을 만들 때 사용)
typedef ListOfInts = List<int>;
typedef UserInfo = Map<String, String>;

ListOfInts reverseListOfNumbers(ListOfInts list){
  var reversed = list.reversed;
  return reversed.toList();
}
