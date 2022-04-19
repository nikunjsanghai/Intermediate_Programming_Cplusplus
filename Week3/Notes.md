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

https://docs.microsoft.com/en-us/cpp/cpp/increment-and-decrement-operator-overloading-cpp?view=msvc-170
# Lecture Annotations [Not Ready]
## 11th April
### Struct 
### two ways the computer tries to make sense of 
sum=e1+e2
operator+(e1,e2)
e1.operator+(e2)

Function Signatures 
1)Point2D operator+(Point2D,const Point2D&)
virst argument by value and second one by constant reference
2)Point2D Point2D::operator+(Point2D&) const
If you add e1 with e2 it should make something new  but not change value of e2 and e1. 

Convention 1: 
Choice 1 is better. It allows more implicit convertions. 

Professor used example 
Point2D operator+ (Point2D p1,const Point2D& p2)
{
p1.x +=p2.x;
p1.y +=p2.y;
return p1;
}
Point2D operator+ (const Point2D& p1, const Point2D& p2)
{
return Point2D(p1.x+p2.x,p1.y+p2.y);
}

e1 +=e2;
1)operator+=(e1,e2)
2)e1.operator+=(e2)

what would the signatures be?

1)POint2D& operator+=(Point2D&,const Point2D&)
2)Point2D& Point2D::operator+=(const Point2D&)

There is a convention , it is that member function method 2) is better. 
int i=1;
int j=2;
int& r= (i+=j);
 we return a reference in r. 
i=8;

Operator+ is made a free function so that conversions are allowed but there is a trade off between the tow methods. 1) allows conversions but 2) allows access to private data variables and member functions. 

### this ,, * this
### pointers
## de reference the pointer 

Point 2D& r= (e1+= e2);
e1.print();
e1.x=8;
r.print();

13 th April: 

Operator Overloading is basically enabling another way of writing or calling the associated functions 
Point2D sum =operator+(e1,e2);
same as
Point2D sum =e1+e2;

Point2D linear_combination =3* e1 +4* e2;
same as
Point2D linear_combination =operator+(operator*(3,e1),operator*(4,e2));

Cout it is an object of Ostream. Further read in the notes.  

std::ostream& g(std::ostream& out){
out<<"We can make use of the parameter 'out'"<<std::endl;
return out;
}
int main(){
g(std::cout)<<"and use the reference that is returned\n\n";
}

