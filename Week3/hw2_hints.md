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
