
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

**Function Overloading links**[link](https://owlcation.com/stem/Function-Overloading-in-C-with-Example) [link](https://www.programiz.com/cpp-programming/function-overloading) [link](https://www.programiz.com/cpp-programming/default-argument) [link](https://www.geeksforgeeks.org/function-overloading-c/) [link](https://www.geeksforgeeks.org/function-overloading-in-c/)                       
**Promotions in C++ Links**: [link](https://learn.microsoft.com/en-us/cpp/cpp/standard-conversions?view=msvc-170) [link](https://www.learncpp.com/cpp-tutorial/floating-point-and-integral-promotion/) [link](https://stackoverflow.com/questions/42200610/integer-promotion-unsigned-in-c) [link](https://www.ibm.com/docs/en/zos/2.4.0?topic=promotions-integral-floating-point) [link](https://www.geeksforgeeks.org/integer-promotions-in-c/)
### Default Arguments: 
If a function with default arguments is called without passing arguments, then the default parameters are used.However, if arguments are passed while calling the function, the default arguments are ignored.
![default_argument](https://user-images.githubusercontent.com/103468688/191691793-153bf035-5635-4c3b-a7a4-4aefa805ed67.jpg)                     
[link](https://www.programiz.com/cpp-programming/default-argument)       
```
#include <iostream>

using namespace std;
 
// A function with default arguments,
// it can be called with
// 2 arguments or 3 arguments or 4 arguments.

int sum(int x, int y, int z = 0, int w = 0) //assigning default values to z,w as 0
{

    return (x + y + z + w);
}
 
// Driver Code

int main()
{

    // Statement 1

    cout << sum(10, 15) << endl;

   

    // Statement 2

    cout << sum(10, 15, 25) << endl;

   

    // Statement 3

    cout << sum(10, 15, 25, 30) << endl;

    return 0;
}
```
Output:
```
25
50
80
```
**If function overloading is done containing the default arguments, then we need to make sure it is not ambiguous to the compiler, otherwise it will throw an error**
```
#include <iostream>

using namespace std;
 
// A function with default arguments, it can be called with
// 2 arguments or 3 arguments or 4 arguments.

int sum(int x, int y, int z = 0, int w = 0)
{

    return (x + y + z + w);
}

int sum(int x, int y, float z = 0, float w = 0)
{

    return (x + y + z + w);
}
// Driver Code

int main()
{

    cout << sum(10, 15) << endl;

    cout << sum(10, 15, 25) << endl;

    cout << sum(10, 15, 25, 30) << endl;

    return 0;
}
```
Output:
```
Error
```


Function Overloading vs Function Overriding: [link](https://www.geeksforgeeks.org/function-overloading-vs-function-overriding-in-cpp/)                                    
Const Keyword: [link](https://www.geeksforgeeks.org/function-overloading-and-const-functions/)               
Pass by ref vs Pass by Value: [link](educative.io/answers/pass-by-value-vs-pass-by-reference)             
