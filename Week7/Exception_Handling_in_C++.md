### Exception Handling 
One of the advantages of C++ over C is Exception Handling. Exceptions are runtime anomalies or abnormal conditions that a program encounters during its execution. There are two types of exceptions: 
a)Synchronous,
b)Asynchronous (i.e., exceptions which are beyond the program’s control, such as disc failure, keyboard interrupts etc.). C++ provides the following specialized keywords for this purpose:
```
try: Represents a block of code that can throw an exception.
catch: Represents a block of code that is executed when a particular exception is thrown.
throw: Used to throw an exception. Also used to list the exceptions that a function throws but doesn’t handle itself.
```
### Why Exception Handling
The following are the main advantages of exception handling over traditional error handling:
- Separation of Error Handling code from Normal Code: In traditional error handling codes, there are always if-else conditions to handle errors. 
These conditions and the code to handle errors get mixed up with the normal flow. This makes the code less readable and maintainable. With try/catch blocks, the code for error handling becomes separate from the normal flow.
- Functions/Methods can handle only the exceptions they choose: A function can throw many exceptions, but may choose to handle some of them. The other exceptions, which are thrown but not caught, can be handled by the caller. 
If the caller chooses not to catch them, then the exceptions are handled by the caller of the caller. 

In C++, a function can specify the exceptions that it throws using the throw keyword. The caller of this function must handle the exception in some way (either by specifying it again or catching it).
- Grouping of Error Types: In C++, both basic types and objects can be thrown as exceptions. We can create a hierarchy of exception objects, group exceptions in namespaces or classes and categorize them according to their types.
 

### C++ Exceptions:

When executing C++ code, different errors can occur: coding errors made by the programmer, errors due to wrong input, or other unforeseeable things.

When an error occurs, C++ will normally stop and generate an error message. The technical term for this is: C++ will throw an exception (error).

### C++ try and catch:

Exception handling in C++ consists of three keywords: try, throw and catch:

The try statement allows you to define a block of code to be tested for errors while it is being executed.
The throw keyword throws an exception when a problem is detected, which lets us create a custom error.
The catch statement allows you to define a block of code to be executed if an error occurs in the try block.
The try and catch keywords come in pairs:
We use the try block to test some code: If the value of a variable “age” is less than 18, we will throw an exception, and handle it in our catch block.
In the catch block, we catch the error if it occurs and do something about it. The catch statement takes a single parameter. 
So, if the value of age is 15 and that’s why we are throwing an exception of type int in the try block (age), we can pass “int myNum” as the parameter to the catch statement, where the variable “myNum” is used to output the value of age.
If no error occurs (e.g. if age is 20 instead of 15, meaning it will be greater than 18), the catch block is skipped.

### Exception Handling in C++
1) The following is a simple example to show exception handling in C++. The output of the program explains the flow of execution of try/catch blocks. 

Example:
```
#include <iostream>
using namespace std;

int main()
{
int x = -1;

// Some code
cout << "Before try \n";
try {
	cout << "Inside try \n";
	if (x < 0)
	{
		throw x;
		cout << "After throw (Never executed) \n";
	}
}
catch (int x ) {
	cout << "Exception Caught \n";
}

cout << "After catch (Will be executed) \n";
return 0;
}
```
Output:
```
Before try
Inside try
Exception Caught
After catch (Will be executed)
```
2) There is a special catch block called the ‘catch all’ block, written as catch(…),
 that can be used to catch all types of exceptions. For example, in the following program, an int is thrown as an exception, but there is no catch block for int, so the catch(…) block will be executed.
 ```
 #include <iostream>
using namespace std;

int main()
{
	try {
	throw 10;
	}
	catch (char *excp) {
		cout << "Caught " << excp;
	}
	catch (...) {
		cout << "Default Exception\n";
	}
	return 0;
}
```
Output:
```
Default Exception
```
Reference Link:[geeksforgeeks](https://www.geeksforgeeks.org/exception-handling-c/#)
 
