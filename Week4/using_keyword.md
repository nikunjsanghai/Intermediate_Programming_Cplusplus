### using keyword
The using keyword is used to:                                          

- Bring a specific member from the namespace into the current scope.
- Bring all members from the namespace into the current scope.
- Bring a base class method or variable into the current class’s scope.

Example:
```
#include <iostream>
using namespace std;
class Base {
   public:
      void greet() {
         cout << "Hello from Base" << endl;;
      }
};
class Derived : Base {
   public:
      using Base::greet; 
      void greet(string s) {
         cout << "Hello from " << s << endl;
         // Instead of recursing, the greet() method
         // of the base class is called.
         greet();
      }
};
int main() {
   Derived D;
   D.greet("Derived");
   return 0;
}
```
Base class constructor in derived class:
```
struct B2 {
    B2(int = 13, int = 42);
};
struct D2 : B2 {
    using B2::B2;
// The set of inherited constructors is
// 1. B2(const B2&)
// 2. B2(B2&&)
// 3. B2(int = 13, int = 42)
// 4. B2(int = 13)
// 5. B2()

// D2 has the following constructors:
// 1. D2()
// 2. D2(const D2&)
// 3. D2(D2&&)
// 4. D2(int, int) <- inherited
// 5. D2(int) <- inherited
};
```
Reference Links: [stackoverflow](https://stackoverflow.com/questions/8093882/using-c-base-class-constructors)  [educative](https://www.educative.io/answers/what-is-the-using-keyword-in-cpp)
[stackoverflow](https://stackoverflow.com/questions/20790932/what-is-the-logic-behind-the-using-keyword-in-c)
