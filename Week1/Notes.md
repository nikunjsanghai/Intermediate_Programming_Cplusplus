# Header Files 
There is a need for a place to store function declarations not definitions but declarations 
Function declaration:
```
void vec(int a, int y);
```
Function definition:
```
void vec(int a,int y)
{
cout<<a<<y<<endl;
}
```
Header files with a .h extension are in the C standard library while those without the .h extension within <> are in the C++ standard library. 
Header Files with a .h extension within "" normally indicate that the header file is located within the directory(storage location) which is same as the .cpp file. 

## #pragma once
Anything with a # is a pre-processor command or directive, it gets evaluated by the pre-processor before the compilation of the program begins. pragma once is essentially a header guard what is does is that it prevents multiple istances of a header file being copied and pasted into a single translation unit. 

## #ifndef 
if you have ifndef defined say ifndef symbol it will check whether or not a statement such as 
```
#define symbol
```
exists or not , if a code by the header of #define symbol is not alrady included in the translation unit( .cpp file) then it will include it in that, but if it is already defined then it will skip over the inclusion of the header file again in the same file. 
Syntax:
```
#ifndef symbol 
#define symbol
#endif
```

# Classes vs Structs
Classes have their member functions and variables declared as private and if you don't declare them public( modify the visibility of the components of a class) they by default tend to remain that way. Structs have their member functions and variable declared as public by default. Structs are declared just because to maintain backward compatibility between C and C++. 
 ### Statements:[Link](https://en.cppreference.com/w/cpp/language/statements)
 

# Initializer List (Not relevant for PIC 10B-Fall 2022)
It is not to be confused with std::initializer_list. In the definition of a constructor of a class the initlizer list specifies values of non-static data members. 

Example:
```
#include<iostream>
using namespace std;
class demonstrating
{
public:
	demonstrating() :x(0), y(0)
	{
		cout << "Default constructor being called";
	}
	demonstrating(int x1, int y1) : x(x1), y(y1) {}
private:
	int x;
	int y;
};

int main()
{
	demonstrating d1(1, 2);
	cout << "End of execution";
	return 0;
}
```
Output
```
End of execution
```
Example without initializer list
```
#include<iostream>
using namespace std;
class demonstrating
{
public:
	demonstrating() 
	{
		x = 0;
		y = 0;
		cout << "Default constructor being called";
	}
	demonstrating(int x1, int y1) 
	{
		x = x1;
		y = y1;
	}
private:
	int x;
	int y;
};

int main()
{
	demonstrating d1(1,2);
	cout << "End of execution";
	return 0;
}
```
Ouput:
```
End of execution
```
No difference right?
Wrong.   

Example2:
```
#include<iostream>
using namespace std;
class demon
{
public:
	demon()
	{
		cout << "default" << endl;
	}
	demon(int x)
	{
		cout << "default and something..." << x << endl;
	}
};
class demonstrating
{
private:
	int x;
	int y;
	demon d;
public:
	demonstrating() 
	{
		x = 0;
		y = 0;
		d = demon(8);
		cout << "Default constructor being called" << endl;
	}
	demonstrating(int x1, int y1) 
	{
		x = x1;
		y = y1;
	}
};

int main()
{
	demonstrating d1;
	cout << "End of execution";
	return 0;
}
```
Output:
```
default
default and something...8
Default constructor being called
End of execution
```
Example with initializer list:
```
#include<iostream>
using namespace std;
class demon
{
public:
	demon()
	{
		cout << "default" << endl;
	}
	demon(int x)
	{
		cout << "default and something..." << x << endl;
	}
};
class demonstrating
{
private:
	int x;
	int y;
	demon d;
public:
	demonstrating() :x(0), y(0), d(demon(5))
	{
		cout << "Default constructor being called" << endl;
	}
	demonstrating(int x1, int y1) :x(x1), y(y1) {}
};

int main()
{
	demonstrating d1;
	cout << "End of execution";
	return 0;
}
```
Output:
```
default and something...5
Default constructor being called
End of execution
```
Further reading: [link1](https://www.geeksforgeeks.org/when-do-we-use-initializer-list-in-c/)

### Difference between while(cin>>number) and while(cin)
### Funtion Overloading:         
Function overloading is a feature of object-oriented programming where two or more functions can have the same name but different parameters. When a function name is overloaded with different jobs it is called Function Overloading. In Function Overloading “Function” name should be the same and the arguments should be different.       
1)Parameters should have a different type        
```
add(int a, int b)
add(double a, double b)
```
Implementation:
```
#include <iostream>
using namespace std;


void add(int a, int b)
{
cout << "sum = " << (a + b);
}

void add(double a, double b)
{
	cout << endl << "sum = " << (a + b);
}

// Driver code
int main()
{
	add(10, 2);
	add(5.3, 6.2);

	return 0;
}
```
Output:
```
sum = 12
sum = 11.5
```
2)Parameters should have a different number 
```
add(int a, int b)
add(int a, int b, int c)
```
Implementation:
```
#include <iostream>
using namespace std;

void add(int a, int b)
{
cout << "sum = " << (a + b);
}

void add(int a, int b, int c)
{
	cout << endl << "sum = " << (a + b + c);
}

// Driver code
int main()
{
	add(10, 2);
	add(5, 6, 4);

	return 0;
}
```
Output:
```
sum = 12
sum = 15
```
3)Parameters should have a different sequence of parameters.
```
add(int a, double b)
add(double a, int b)
```
Implementation:
```
#include<iostream>
using namespace std;
 
void add(int a, double b)
{
    cout<<"sum = "<<(a+b);
} 
 
void  add(double a, int b)
{
    cout<<endl<<"sum = "<<(a+b);
} 
 
// Driver code
int main()
{
    add(10,2.5);
    add(5.5,6);
 
      return 0;
}
```
Output:
```
sum = 12.5
sum = 11.5
```
### Promotion of Variable in Function Overloading
How does Function Overloading work?
Exact match:- (Function name and Parameter)
If a not exact match is found:–                
1)Char, Unsigned char, and short are promoted to an int.                        
2)Float is promoted to double  
                                       
If no match is found:                      
3)C++ tries to find a match through the standard conversion.                                                          
4)ELSE ERROR                          

[link](https://owlcation.com/stem/Function-Overloading-in-C-with-Example) [link](https://www.programiz.com/cpp-programming/function-overloading) [link](https://www.programiz.com/cpp-programming/default-argument) [link](https://www.geeksforgeeks.org/function-overloading-c/) [link](https://www.geeksforgeeks.org/function-overloading-in-c/)                     
### Default Arguments: 
If a function with default arguments is called without passing arguments, then the default parameters are used.However, if arguments are passed while calling the function, the default arguments are ignored.
![default_argument](https://user-images.githubusercontent.com/103468688/191691793-153bf035-5635-4c3b-a7a4-4aefa805ed67.jpg)                     
[link](https://www.programiz.com/cpp-programming/default-argument)                       
Function Overloading vs Function Overriding: [link](https://www.geeksforgeeks.org/function-overloading-vs-function-overriding-in-cpp/)                                    
Const Keyword: [link](https://www.geeksforgeeks.org/function-overloading-and-const-functions/)               
Pass by ref vs Pass by Value: [link](educative.io/answers/pass-by-value-vs-pass-by-reference)             
