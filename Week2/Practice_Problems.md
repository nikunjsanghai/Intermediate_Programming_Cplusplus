### Passing an array as an argument
Q1. Write a program to write a function based on the function signature bool unique(int\* arr,int size) which return true if all elements in an array are unique, but returns false if duplicates exist. Write a suitable main function to ask for size of the array and then corresponding entries for the array to take in as input and call the fucntion unique. In the end display the result "The array is unique/ not unique". 

```
Enter the array size:5
Enter the array elements:
1
2
2
4
5
The array is not unique. 
```
### Dynamic Memory allocation
Based  on your understanding of memory allocation and scope/lifetime of variables.First point out all the errors in the code. Then correct the code
```
#include<iostream>
void demonstrate()
{
	int a = 10;
	int* p = &a;
	int* ptr1;
	int* ptr = new int(5);
	int* ptr_arr = new int[14];
	{
		ptr1 = ptr;
		int* ptr_new = new int(7);
		int* ptr3 = ptr1;
		delete p;
		delete ptr3;
	}
	std::cout << *p;
	std::cout << *ptr;
	std::cout << *ptr_new;
	std::cout << *ptr3;
}
int main()
{
	demonstrate();
}
```


### Operator Overloading 

### Question: Write a program to achieve complex number devision.  
- **Classname:** Point2D
- **Variables:** x and y to store real and imaginary parts of each complex number ( you are not allowed to use any more variables in the class definition)   
- **Constructors:** Point2D(double x, double y) : to intialize values to the member function with respect to the objects defined in the main function.   
- **Point2D operator/ (Point2D p1,const Point2D& p2):** overloaded operator to perform complex devision  
- **int main() :** outside the class intialized objects for 2 points and performs complex devision for them. You can ideally represent the points as  different objects and call them in your function you have designed for operator overloading to perform the task.    
- **print():** within the class definition that outputs the complext number a +bi in (a,b) format. 
Design a function to overload operator (/) so that it acheives the following result: 

![complex_numbers](https://user-images.githubusercontent.com/103468688/195021993-742896d9-3d95-45c1-932a-cec5d55a8771.jpg)


### Solution\[Updated]: 
```
#include <iostream>
#include<vector>
using namespace std;
class Point2D {

public:

    Point2D() : x(0), y(0) {}
    Point2D(double _x, double _y): x(_x), y(_y) {}
    void print() const { std::cout << '(' << x << ", " << y << ')'; }
    Point2D& operator+=(const Point2D&);
    Point2D& operator-=(const Point2D&);
    Point2D& operator*=(double);
    Point2D& operator*=(const Point2D&);
    //friend Point2D& operator +(const Point2D&,const Point2D&);
    //friend Point2D& operator +(const Point2D&,const Point2D&);

    // This is member function therefore you do not need friend keyword for access to member variables

    Point2D& operator/=(const Point2D& p1);
    friend Point2D operator/(const Point2D& p1, const Point2D& p2);
    
private:

    double x;
    double y;

};

 Point2D& Point2D::operator/=(const Point2D& p2)
 {
     double n1,n2,d;
        n1 = this->x * p2.x + this->y * p2.y;
    n2 = p2.x *this->y - this->x * p2.y;
    //  d = p1.x * p2.x + p1.y * p2.y;
    d= p2.x*p2.x+p2.y*p2.y;
    // std::cout << n1 << n2 << d;
    this->x = n1 / d;
    this->y = n2 / d;

    return *this;
 }



 Point2D operator/(const Point2D& p1, const Point2D& p2) {
     Point2D g;
     double n1,n2, d;
     n1 = p1.x * p2.x + p1.y * p2.y;
     n2 = p2.x * p1.y - p1.x * p2.y;
     //  d = p1.x * p2.x + p1.y * p2.y;
     d= p2.x*p2.x+p2.y*p2.y;
     // std::cout << n1 << n2 << d;
     g.x = n1 / d;
     g.y = n2 / d;
     return g;
 }



//Point2D operator/(Point2D p1, const Point2D& p2) {
//    // Remember p1 here is a local variable and created through pass by value and thus does not afffect the original variable being passed as an argument
//    p1/=p2;
//    return p1;
//
//}



int main() {

    double x1, y1, x2, y2;
    cout << "Enter x and y co-ordinates of P1: ";
    cin >> x1 >> y1;
    cout<< "Enter x and y co-ordinates of P2: ";
    cin >> x2 >> y2;
    Point2D e1(x1, y1);
    Point2D e2(x2, y2);
    // The following line is same as to e1.operator/=(e2)
    e1/=e2;         // Binary operator (one of the operands is implicit)

    // This is different from your groceries operator+(from your HW) which uses a friend non-member function to gain acccess to the private member variables of the class

    Point2D division = e1 / e2;
    division.print();
    e1.print();
    e2.print();
    std::cout << std::endl;
}

```

##### Sieve of Eratosthenes [link](https://www.geeksforgeeks.org/sieve-of-eratosthenes/)
