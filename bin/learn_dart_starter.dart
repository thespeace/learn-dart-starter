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
}