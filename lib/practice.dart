 class A{
  var a = 10;
  void disply_a(){
    print('A= ${a}');

  }
 }
 class B extends A{
  var b = 20;

  void disply_b(){
    print('B= ${b}');

  }


 }
 class C extends B{
  var c= 30;
  void display_c(){
    print('C= ${c}');
  }
 }
 void main(){
  A value_a = A();
  B value_b = B();
  C value_c = C();

  value_a.disply_a();
  value_b.disply_b();
  value_c.display_c();
  value_c.disply_a();

//We can get the properties of A and B from using C,



 }