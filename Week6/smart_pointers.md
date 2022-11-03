### Problem with Normal Pointers 
Pointers are used for accessing the resources which are external to the program – like heap memory. So, for accessing the heap memory (if anything is created inside heap memory), pointers are used. When accessing any external resource we just use a copy of the resource. If we make any change to it, we just change it in the copied version. But, if we use a pointer to the resource, we’ll be able to change the original resource.
```
#include <iostream>
using namespace std;

class Rectangle {
private:
	int length;
	int breadth;
};

void fun()
{
	// By taking a pointer p and
	// dynamically creating object
	// of class rectangle
	Rectangle* p = new Rectangle();
}

int main()
{
	// Infinite Loop
	while (1) {
		fun();
	}
}
```
In function fun, it creates a pointer that is pointing to the Rectangle object. The object Rectangle contains two integers, length and breadth. When the function fun ends, p will be destroyed as it is a local variable. But, the memory it consumed won’t be deallocated because we forgot to use delete p; at the end of the function. That means the memory won’t be free to be used by other resources. But, we don’t need the variable anymore, but we need the memory.                    
    

In function main, fun is called in an infinite loop. That means it’ll keep creating p. It’ll allocate more and more memory but won’t free them as we didn’t deallocate it. The memory that’s wasted can’t be used again. Which is a memory leak. The entire heap memory may become useless for this reason. C++11 comes up with a solution to this problem, Smart Pointer.                             








### Smart Pointers
A Smart Pointer is a wrapper class over a pointer with an operator like * and -> overloaded. The objects of the smart pointer class look like normal pointers. But, unlike Normal Pointers it can deallocate and free destroyed object memory.                        

The idea is to take a class with a pointer, destructor and overloaded operators like * and ->. Since the destructor is automatically called when an object goes out of scope, the dynamically allocated memory would automatically be deleted (or reference count can be decremented). Consider the following simple SmartPtr class.         
It's a type whose values can be used like pointers, but which provides the additional feature of automatic memory management:
When a smart pointer is no longer in use, the memory it points to is deallocated.                    

**When should you use one?**                                           
In code which involves tracking the ownership of a piece of memory,
allocating or de-allocating; the smart pointer often saves you the need to do these things explicitly.                                

- Use std::unique_ptr when you want your object to live just as long as a single owning reference to it lives. For example, use it for a pointer to memory which gets allocated on entering some scope and de-allocated on exiting the scope.
- Use std::shared_ptr when you do want to refer to your object from multiple places - 
and do not want your object to be de-allocated until all these references are themselves gone.
- Use std::weak_ptr when you do want to refer to your object from multiple places - 
for those references for which it's ok to ignore and deallocate (so they'll just note the object is gone when you try to dereference).                          

**"So when should I use regular pointers then?"**                                
Mostly in code that is oblivious to memory ownership. This would typically be in functions which get a pointer from someplace else and do not allocate nor de-allocate,
and do not store a copy of the pointer which outlasts their execution.   


### Types of Smart Pointers

- unique_ptr
unique_ptr stores one pointer only. We can assign a different object by removing the current object from the pointer. Notice the code below. First, the unique_pointer is pointing to P1. But, then we remove P1 and assign P2 so the pointer now points to P2.
![unique](https://user-images.githubusercontent.com/103468688/199694398-8583ff37-1092-4189-afa5-c1f6f11ebc9d.PNG)
```
#include <iostream>
using namespace std;
#include <memory>

class Rectangle {
	int length;
	int breadth;

public:
	Rectangle(int l, int b){
		length = l;
		breadth = b;
	}

	int area(){
		return length * breadth;
	}
};

int main(){

	unique_ptr<Rectangle> P1(new Rectangle(10, 5));
	cout << P1->area() << endl; // This'll print 50

	// unique_ptr<Rectangle> P2(P1);
	unique_ptr<Rectangle> P2;
	P2 = move(P1);

	// This'll print 50
	cout << P2->area() << endl;

	// cout<<P1->area()<<endl;
	return 0;
}
```
Output:
```
50
50
```
-shared_ptr:By using shared_ptr more than one pointer can point to this one object at a time and it’ll maintain a Reference Counter using use_count() method.                   
![shared](https://user-images.githubusercontent.com/103468688/199694696-9a137ee8-79af-447d-aa3e-e6c19958ef96.PNG)
```
#include <iostream>
using namespace std;
#include <memory>

class Rectangle {
	int length;
	int breadth;

public:
	Rectangle(int l, int b)
	{
		length = l;
		breadth = b;
	}

	int area()
	{
		return length * breadth;
	}
};

int main()
{

	shared_ptr<Rectangle> P1(new Rectangle(10, 5));
	// This'll print 50
	cout << P1->area() << endl;

	shared_ptr<Rectangle> P2;
	P2 = P1;

	// This'll print 50
	cout << P2->area() << endl;

	// This'll now not give an error,
	cout << P1->area() << endl;

	// This'll also print 50 now
	// This'll print 2 as Reference Counter is 2
	cout << P1.use_count() << endl;
	return 0;
}
```
Output:
```
50
50
50
2
```
- weak_ptr :It’s much more similar to shared_ptr except it’ll not maintain a Reference Counter. In this case, a pointer will not have a stronghold on the object. The reason is if suppose pointers are holding the object and requesting for other objects then they may form a Deadlock.                           
![weak_ptr](https://user-images.githubusercontent.com/103468688/199694964-1026a2ac-e660-4fb6-afbc-8f641a6bb932.PNG)



Reference Links:[stackoverflow](https://stackoverflow.com/questions/106508/what-is-a-smart-pointer-and-when-should-i-use-one) [geeksforgeeks](https://www.geeksforgeeks.org/smart-pointers-cpp/) [geeksforgeeks](https://www.geeksforgeeks.org/auto_ptr-unique_ptr-shared_ptr-weak_ptr-2/)
