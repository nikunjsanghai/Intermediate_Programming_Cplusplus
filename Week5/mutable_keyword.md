##### What is the need of mutable? 
Sometimes there is requirement to modify one or more data members of class / struct through const function even though you don’t want the function to update other members of class / struct.
This task can be easily performed by using mutable keyword.The keyword mutable is mainly used to allow a particular data member of const object to be modified. When we declare a function as const, the this pointer passed to function becomes const. Adding mutable to a variable allows a const pointer to change members. 
mutable is particularly useful if most of the members should be constant but a few need to be updatable. Data members declared as mutable can be modified even though they are the part of object declared as const. You cannot use the mutable specifier with names declared as static or const, or reference.
As an exercise predict the output of following two programs.

Exercise: 
```
// PROGRAM 1
#include <iostream>
using std::cout;

class Test {
public:
int x;
mutable int y;
Test() { x = 4; y = 10; }
};
int main()
{
	const Test t1;
	t1.y = 20;
	cout << t1.y;
	return 0;
}
```
Output:
```
20
```
```
// PROGRAM 2
#include <iostream>
using std::cout;

class Test {
public:
int x;
mutable int y;
Test() { x = 4; y = 10; }
};
int main()
{
	const Test t1;
	t1.x = 8;
	cout << t1.x;
	return 0;
}
```
Output:
```
Error
```
The mutable keyword is a way to pierce the const veil you drape over your objects. If you have a const reference or pointer to an object, you cannot modify that object in any way except when and how it is marked mutable.

With your const reference or pointer you are constrained to:

- only read access for any visible data members
- permission to call only methods that are marked as const.
  
The mutable exception makes it so you can now write or set data members that are marked mutable.
  That's the only externally visible difference.Internally those const methods that are visible to you can also write to data members that are marked mutable.
  Essentially the const veil is pierced comprehensively.
  
 References: [geeksforgeeks](https://www.geeksforgeeks.org/c-mutable-keyword/) [stackoverflow](https://stackoverflow.com/questions/105014/does-the-mutable-keyword-have-any-purpose-other-than-allowing-the-variable-to) 
  
  
