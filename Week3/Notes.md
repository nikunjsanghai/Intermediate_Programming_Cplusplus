# Operator Overloading 

Operator keyword: The operator keyword declares a function specifying what operator symbol means when applied to instances of a class. This gives the operator more than one meaning or "overloads it". The compiler distinguishes between the different meanings of an operator by examining the types of its operands. 
### Operators chart
![operators](https://user-images.githubusercontent.com/103468688/163109135-89c7dd49-9954-4bf9-9691-9509342e88b3.jpg)



### Unary Operator Overloading:
Unary operators on a single operand and relevant examples can be increment(++) and decrement (--) operators, then can be operated as postfix and prefix operators. 
### Binary Operator Overloading: 
Binary Operators takes two operands and relevant examples can be (+) and (-) 

What is the difference between operator functions and normal functions?
Operator functions are the same as normal functions. Operator functions must always have an operator keyword followed by symbol and operator Eg:- Box operator+(const Box&);
```
#include <iostream>
using namespace std;

class Box {
   public:
      double getVolume(void) {
         return length * breadth * height;
      }
      void setLength( double len ) {
         length = len;
      }
      void setBreadth( double bre ) {
         breadth = bre;
      }
      void setHeight( double hei ) {
         height = hei;
      }
      
      // Overload + operator to add two Box objects.
      Box operator+(const Box& b) {
         Box box;
         box.length = this->length + b.length;
         box.breadth = this->breadth + b.breadth;
         box.height = this->height + b.height;
         return box;
      }
      private:
      double length;      // Length of a box
      double breadth;     // Breadth of a box
      double height;      // Height of a box
};


int main() {
   Box Box1;                // Declare Box1 of type Box
   Box Box2;                // Declare Box2 of type Box
   Box Box3;                // Declare Box3 of type Box
   double volume = 0.0;     // Store the volume of a box here
 
   // box 1 specification
   Box1.setLength(6.0); 
   Box1.setBreadth(7.0); 
   Box1.setHeight(5.0);
 
   // box 2 specification
   Box2.setLength(12.0); 
   Box2.setBreadth(13.0); 
   Box2.setHeight(10.0);
 
   // volume of box 1
   volume = Box1.getVolume();
   cout << "Volume of Box1 : " << volume <<endl;
 
   // volume of box 2
   volume = Box2.getVolume();
   cout << "Volume of Box2 : " << volume <<endl;

   // Add two object as follows:
   Box3 = Box1 + Box2;

   // volume of box 3
   volume = Box3.getVolume();
   cout << "Volume of Box3 : " << volume <<endl;

   return 0;
}
```
