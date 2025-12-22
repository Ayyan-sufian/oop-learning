class C1 {
  int a = 2;
  int _c = 9;
}

void main() {
  C1 c = C1();
  B b = B();
  Z z = Z();

  print(b.c._c);
  print(b.c.a);
  print(z.c._c);
  print(z.c.a);

}

class B{
  C1 c =new C1();
  void display(){
    print(c.a);
    print(c._c);
 c._c;
  }
}

class Z {
  C1 c =new C1();
  void show(){
    print(c.a);
    print(c._c);

  }
}