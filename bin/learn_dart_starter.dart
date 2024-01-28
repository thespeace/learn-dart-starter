void main(){//Entry point
  print('hello world');


  /*
  * -dart는 변수를 `var` 키워드 또는 명시적 타입을 사용해 만든다.
  *  함수나 메소드 내부에 지역변수를 선언할 때는 var를 사용하고 class에서 변수나 property를 선언할 때는 타입을 지정해준다.
  */
  var name = "thespeace";
  // name = 1; //name 타입을 추측하여 String 타입으로 지정, 정수타입은 업데이트 불가.
  int age = 20;
  print("$name, $age");


  /*
  * -Dynamic Type
  * dart는 개발자 친화적인 언어라서 모든 데이터를 담을 수 있는 타입이 존재한다.
  *   1. var 타입으로 선언 후 초기화를 해주지 않으면 dynamic 타입으로 지정된다.
  *   2. 직접 dynamic타입으로 지정 가능.
  * 이상적으로는 해당 타입 사용을 피해야하고, 정말 필요할 때만 사용해야 한다.
  */
  // var job;
  dynamic job;
  job = 'developer';
  job = 1;
  job = true;
  job = false;

  if(job is String){
    print(job);
  }
  if(job is int){
    print(job);
  }
  if(job is bool){
    print(job); //출력
  }


  /*
  * -Nullable Variables
  *  기본적으로 dart는 변수 선언시 non-nullable로 null값이 될 수 없다.
  *  null값 참조를 원한다면 타입 선언 시 타입 뒤에 `?`를 붙이면 Nullable이 가능하다.
  *  dart의 null safety라는 건 "어떤 변수, 혹은 데이터가 null이 될 수 있음을 명시하는 것"을 말한다.
  */
  String? nullableVar = 'thespeace';
  nullableVar = null;
  nullableVar = "notNull";
  // if(nullableVar != null) {
  //   print('zz : ${nullableVar.isNotEmpty}');
  // }
  //위 주석된 코드처럼 해당 변수가 null 값이 아닐 때만 isNotEmpty를 실행.
  print(nullableVar?.isNotEmpty);


  /*
  * -Final Variables
  *  변하지 않는 변수를 생성할때는 변수 앞에 `final` 명시해주면 되고, 조금 더 구체적으로 변수를 선언하고 싶다면 타입을 적고 앞에 `final`을 붙여주면 된다.
  *  dart의 컴파일러는 알아서 타입을 추론하니까 타입을 적지 않아도 된다.
  */
  final PI = 3.14;
  print(PI);


  /*
  * -Late Variables
  *  `late`는 초기 데이터 없이 변수를 선언할 수 있게 해준다.
  */
  late final String lateVar;
  // print(lateVar); //Error, 컴파일러가 값을 넣기 전에는 접근하지 않아야 한다는 걸 알려주고 초기화를 해주어야 한다.
  //do something, go to api-
  lateVar = 'apiData';
  print(lateVar);
  // lateVar = 'changeData'; //Error, 여전히 final 변수이기 때문에 딱 한 번만 할당가능.

}