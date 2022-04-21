# Pointers
Pointers are basically variables that store the memory location of the varaibles we are using in a code. For the computer to be able to access the exact location of the variable being used in a code,it can utilize pointers.

The different types of pointers being talked about just give us a way to partition or from the user end define what kind of variable it would be pointing to. 
For example an integer pointer, a double pointer, etc. 
It needs to be highlighted that the pointer does not need a type, for user end convinience sake we are doing so. If we declare a data type to a pointer we are presuming that the pointer is pointing to a memory location that has a value of that data type.

Let us familiarize ourselves with the syntax first!

Basic Code:
``` 
#include<iostream>
using namespace std;
int main()
{
int* pointer;
int val=8;
pointer =val;
cout<<pointer;
}
```
The above code does not make any sense because, the pointer has been assigned a value of 8 instead of being assigned the integer that actually defines in memory the storrage location of 8.

Let us clarify,
Val is a variable.
Val has value 8
Val is not the location where the computer has stored 8. 
Computer knows the location of 8 by an integer value(stored in hexadecimal format)

In order to denote the location we have used something in the past? What was used in the past that helped us refer to the memory location of the variable?
Reference

Basic Code 2:
```
#include<iostream>
using namespace std;
int main()
{
int* pointer;
int val=8;
pointer =&val;
cout<<pointer;
}
```
This code makes sense. Why? pointer has been assigned a value, that value is actually that value by which the computer knows what memory should be referred to to find the value of variable val.

If you run this code, this just prints the memory location, after all a pointer is a integer that stores the memory location of the variables.

```
#include<iostream>
using namespace std;
int main()
{
int* pointer;
int val=8;
pointer =&val;
cout<<*pointer;
}
```
This code here prints 8, in order for the user to use the actual value tp which the pointer is pointing at we need to deference it. We deference the pointers using symbol *

## Difference Between Pointers and References

References are alias to variables, basically as soon as the references are created they need to point at something, otherwise they cannot be declared.
```
#include<iostream>
using namespace std;
int main()
{
int val=8;
int& point;
}
```
This cannot be done and the computer will show you an error, whereas in the case of pointers it is completely fine to do so.
```
#include<iostream>
using namespace std;
int main()
{
int* pointer;
int val=2;
}
```
right now it is presumed that the pointer is declared and it will be pointing to an integer value if used in the future. 

One more key difference is that once a reference is declared and it is referencing to a variable in the program execution, it will only point to the memory location of that variable. 
Meaning once the reference is declared it is essentially fixed. 

This is not the case with pointers , if the pointer was pointing to val as shown in code below, it is completely fine for it to point to variable val_1. 
```
#include<iostream>
using namespace std;
int main()
{
int* pointer;
int val=2;
pointer=&val;
cout<<*pointer<<endl;
int val_1=8;
pointer=&val_1;
cout<<*pointer;
}
```
Output:
```
2
8
```
Simple function call using pointers 
```
#include<iostream>
using namespace std;
int devide_by(int* value)
{
	int val_local;
	*value = (*value) / 5;
	return *value;
}
	int main()
	{
		int* pointer;
		int val = 10;
		pointer = &val;
		cout << *pointer << endl;
		cout << devide_by(pointer);
	}
  
 ```
 Output:
 ```
 10
 2
 ```
 Getting familiar with the syntax 
 ```
 #include<iostream>
using namespace std;
int devide_by(int* val)
{
	int val_local;
	*val = (*val) / 5;
	*val++;// what will this line do?
	cout << *val << endl;
	//(*val)++; correct way to do it. Why is this way correct?
	return *val;
}
	int main()
	{
		int* pointer;
		int val = 10;
		pointer = &val;
		cout << *pointer << endl;
		cout << devide_by(pointer);
	}
  ```
  Output:
  ```
  10
-858993460
-858993460
```
What happened?
Because of the way the program was written the integer which is essentially the pointer , get incremented instead of the the value it was referencing to,
That is not what we would want to do, we would want to de-reference the pointer then increment the value, that is what second statement in the comment does.


