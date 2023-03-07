### Stack 
Stacks are a type of container adaptors with LIFO(Last In First Out) type of working, where a new element is added at one end (top) and an element
is removed from that end only.  Stack uses an encapsulated object of either vector or deque (by default) or list (sequential container class) as its underlying 
container, providing a specific set of member functions to access its elements. 
### Stack vs Queue 
If there is confusion in remembering the basic difference between stack and queue, then just have a real life example for this differentiation, 
for stack, stacking of books we can take the top book easily and for queue remember when you have to stand in queue front of ATM for taking out the cash, 
then first person near to ATM has the first chance to take out the money from ATM. So, queue is the FIFO (First In First Out) type working.
### Stack Syntax 
```
template <class T, class Container = deque<T> > class stack;
```
The standard container classes vector, deque and list fulfill these requirements.
By default, if no container class is specified for a particular stack class instantiation, the standard container deque is used.
### Functions in Stack
The functions associated with stack are: 
- empty() – Returns whether the stack is empty – Time Complexity : O(1) 
- size() – Returns the size of the stack – Time Complexity : O(1) 
- top() – Returns a reference to the top most element of the stack – Time Complexity : O(1) 
- push(g) – Adds the element ‘g’ at the top of the stack – Time Complexity : O(1) 
- pop() – Deletes the most recent entered element of the stack – Time Complexity : O(1) 

Sample Code:
```
#include <iostream>
#include <stack>
using namespace std;
int main() {
	stack<int> stack;
	stack.push(21);// The values pushed in the stack should be of the same data which is written during declaration of stack
	stack.push(22);
	stack.push(24);
	stack.push(25);
	int num=0;
	stack.push(num);
	stack.pop();
	stack.pop();
	stack.pop();
	
	while (!stack.empty()) {
		cout << stack.top() <<" ";
		stack.pop();
	}
}
```
Output:
```
22 21 
```
Ref Link:[geeksforgeeks](https://www.geeksforgeeks.org/stack-in-cpp-stl/) 
