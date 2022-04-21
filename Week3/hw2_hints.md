# HW 2 Hints
### Friend keyword 
 
Friend Class A friend class can access private and protected members of other class in which it is declared as friend. It is sometimes useful to allow a particular 
class to access private members of other class.

Friend Function Like friend class, a friend function can be given a special grant to access private and protected members. A friend function can be: 
a) A member of another class 
b) A global function
#### Remember HW2 strictly limits the use of the function in the .hpp file to 3 times. 
Syntax examples: 
1. Friend Class
```
#include <iostream>
class A {
private:
    int a;
 
public:
    A() { a = 0; }
    friend class B; // Friend Class
};
 
class B {
private:
    int b;
 
public:
    void showA(A& x)
    {
        // Since B is friend of A, it can access
        // private members of A
        std::cout << "A::a=" << x.a;
    }
};
 
int main()
{
    A a;
    B b;
    b.showA(a);
    return 0;
}
```
2. Friend function 
```
#include <iostream>

class B;

class A {
public:
	void showB(B&);
};

class B {
private:
	int b;

public:
	B() { b = 0; }
	friend void A::showB(B& x); // Friend function
};

void A::showB(B& x)
{
	// Since showB() is friend of B, it can
	// access private members of B
	std::cout << "B::b = " << x.b;
}

int main()
{
	A a;
	B x;
	a.showB(x);
	return 0;
}
```


Following are some important points about friend functions and classes: 
1) Friends should be used only for limited purpose. too many functions or external classes are declared as friends of a class with protected or private data, it lessens the value of encapsulation of separate classes in object-oriented programming.
2) Friendship is not mutual. If class A is a friend of B, then B doesn’t become a friend of A automatically.
3) Friendhsip is different Not Inherited. (Expansion Needed) [link](https://www.geeksforgeeks.org/friend-class-function-cpp/) [link2](https://www.geeksforgeeks.org/inheritance-and-friendship-in-cpp/) [link3](https://www.geeksforgeeks.org/inheritance-in-c/)

# ostream
In C++, stream insertion operator “<<” is used for output and extraction operator “>>” is used for input. 
We must know the following things before we start overloading these operators. 
1) cout is an object of ostream class and cin is an object of istream class 
2) These operators must be overloaded as a global function. And if we want to allow them to access private data members of the class, we must make them friend. [Expansion needed] [Source](https://www.geeksforgeeks.org/overloading-stream-insertion-operators-c/) [Source2](https://docs.microsoft.com/en-us/cpp/standard-library/overloading-the-output-operator-for-your-own-classes?view=msvc-170) [Example](https://www.tutorialspoint.com/cplusplus/input_output_operators_overloading.htm)
```
#include <iostream>
using namespace std;

class Date
{
    int mo, da, yr;
public:
    Date(int m, int d, int y)
    {
        mo = m; da = d; yr = y;
    }
    friend ostream& operator<<(ostream& os, const Date& dt);
};

ostream& operator<<(ostream& os, const Date& dt)
{
    os << dt.mo << '.' << dt.da << '.' << dt.yr;
    return os;
}

int main()
{
    Date dt(5, 6, 92);
    cout << dt;
}
```

Output:
```
5.6.92
```
The last function in the homework is a little tricky and needs an understanding of user defined data conversions and how they can also be called by the compiler implicity. As you all know we are overloading operator double() to be able to do suitable tasks.
```
Rational r(1, 2);
std::cout << (1 + r) << std::endl;
```
When (1+r) is defined within cout, there are two choices infront of the compiler and that is why an error message is displayed. Identifying the two choices is critical to be able to solve the homework. 
1. Choice 1: convert r into double, then use pre-defined implicit conversions to convert int to double. once both are done the compiler invokes operator +(double,double) but this function signature will result in 1.5 as the output and that is not we want. 
2. Choice 2: Since there is no operator+(int, Rational&) defined it will try to convert int to Rational, then use the user defined operator+ defined in binary operator overaloading to try to solve this, if it follows Choice 2. The output will be 3/2. Which is desired. 

How can we eliminate Implicit type conversions?
Check Prof's notes for explicit keyword, it eliminates the compiler's tendency to do implicit data conversions.

Further Reading on User Defined type conversions:
https://docs.microsoft.com/en-us/cpp/cpp/user-defined-type-conversions-cpp?view=msvc-170#:~:text=A%20conversion%20produces%20a%20new,or%20between%20user%2Ddefined%20types.
https://en.cppreference.com/w/cpp/language/cast_operator
https://www.ibm.com/docs/en/zos/2.1.0?topic=only-user-defined-conversions
