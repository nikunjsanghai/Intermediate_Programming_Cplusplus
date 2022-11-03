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

#### unique_ptr
unique_ptr stores one pointer only. We can assign a different object by removing the current object from the pointer. It explicitly prevents copying of its contained pointer as would happen with normal assignment i.e. it allows exactly one owner of the underlying pointer.So, when using unique_ptr there can only be at most one unique_ptr at any one resource and when that unique_ptr is destroyed, the resource is automatically claimed. Also, since there can only be one unique_ptr to any resource, so any attempt to make a copy of unique_ptr will cause a compile-time error. Notice the code below. First, the unique_pointer is pointing to P1. But, then we move P1 to P2 so the pointer P2 now points to the object. 
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
Example:
```
 unique_ptr<A> ptr1 (new A);

 // Error: can't copy unique_ptr
 unique_ptr<A> ptr2 = ptr1; 
 ```
But, unique_ptr can be moved using the new move semantics i.e. using std::move() function to transfer ownership of the contained pointer to another unique_ptr.
```
// Works, resource now stored in ptr2
unique_ptr<A> ptr2 = move(ptr1); 
```
So, it’s best to use unique_ptr when we want a single pointer to an object that will be reclaimed when that single pointer is destroyed.

#### shared_ptr
A shared_ptr is a container for raw pointers. It is a reference counting ownership model i.e. it maintains the reference count of its contained pointer in cooperation with all copies of the shared_ptr. So, the counter is incremented each time a new pointer points to the resource and decremented when the destructor of the object is called.                                    

**Reference Counting: It is a technique of storing the number of references, pointers or handles to a resource such as an object, block of memory, disk space or other resources.**                                                             

An object referenced by the contained raw pointer will not be destroyed until reference count is greater than zero i.e. until all copies of shared_ptr have been deleted.So, we should use shared_ptr when we want to assign one raw pointer to multiple owners.By using shared_ptr more than one pointer can point to this one object at a time and it’ll maintain a Reference Counter using use_count() method.                                                            
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
One more Example:
```
// C++ program to demonstrate shared_ptr
#include <iostream>
#include <memory>
using namespace std;

class A {
public:
	void show()
	{
		cout << "A::show()" << endl;
	}
};

int main()
{
	shared_ptr<A> p1(new A);
	cout << p1.get() << endl;
	p1->show();
	shared_ptr<A> p2(p1);
	p2->show();
	cout << p1.get() << endl;
	cout << p2.get() << endl;

	// Returns the number of shared_ptr objects
	// referring to the same managed object.
	cout << p1.use_count() << endl;
	cout << p2.use_count() << endl;

	// Relinquishes ownership of p1 on the object
	// and pointer becomes NULL
	p1.reset();
	cout << p1.get() << endl;
	cout << p2.use_count() << endl;
	cout << p2.get() << endl;

	return 0;
}
```
Output:
```
0x1c41c20
A::show()
A::show()
0x1c41c20
0x1c41c20
2
2
0          // NULL
1
0x1c41c20
```

#### weak_ptr
A weak_ptr is created as a copy of shared_ptr. It provides access to an object that is owned by one or more shared_ptr instances but does not participate in reference counting. The existence or destruction of weak_ptr has no effect on the shared_ptr or its other copies. It is required in some cases to break circular references between shared_ptr instances.It’s much more similar to shared_ptr except it’ll not maintain a Reference Counter. In this case, a pointer will not have a stronghold on the object. The reason is if suppose pointers are holding the object and requesting for other objects then they may form a Deadlock.  
![weak_ptr](https://user-images.githubusercontent.com/103468688/199694964-1026a2ac-e660-4fb6-afbc-8f641a6bb932.PNG)           

**Cyclic Dependency (Problems with shared_ptr)** Let’s consider a scenario where we have two classes A and B, both have pointers to other classes. So, it’s always like A is pointing to B and B is pointing to A. Hence, use_count will never reach zero and they never get deleted.                     
![weak_cyclic](https://user-images.githubusercontent.com/103468688/199698266-5d27cf20-8f3d-4667-89cd-182352fe0e5e.PNG)
This is the reason we use weak pointers(weak_ptr) as they are not reference counted. So, the class in which weak_ptr is declared doesn’t have a stronghold of it i.e. the ownership isn’t shared, but they can have access to these objects.                  
![weak](https://user-images.githubusercontent.com/103468688/199698433-d40d0c4d-5435-460d-8a22-1638a222d2d0.PNG)
So, in case of shared_ptr because of cyclic dependency use_count never reaches zero which is prevented using weak_ptr, which removes this problem by declaring A_ptr as weak_ptr, thus class A does not own it, only have access to it and we also need to check the validity of object as it may go out of scope. In general, it is a design issue.                                                  
                          







Reference Links:[stackoverflow](https://stackoverflow.com/questions/106508/what-is-a-smart-pointer-and-when-should-i-use-one) [geeksforgeeks](https://www.geeksforgeeks.org/smart-pointers-cpp/) [geeksforgeeks](https://www.geeksforgeeks.org/auto_ptr-unique_ptr-shared_ptr-weak_ptr-2/)
