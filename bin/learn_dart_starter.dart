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
  * 모든 데이터를 담을 수 있는 타입.
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



}