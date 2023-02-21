### Tail recursion
Tail recursion is defined as a recursive function in which the recursive call is the last statement that is executed by the function.
So basically nothing is left to execute after the recursion call.
```
// An example of tail recursive function

void print(int n)
{
	if (n < 0)
		return;
	printf("%d ", n);

	// The last executed statement is recursive call
	print(n - 1);
}
```
### Converting non-tailed recursion into tailed recursion
It is a non-tail-recursive function. Although it looks like a tail recursive at first look. 
If we take a closer look, we can see that the value returned by fact(n-1) is used in fact(n). So the call to fact(n-1) is not the last thing done by fact(n)
```
#include <iostream>
using namespace std;

// A NON-tail-recursive function. The function is not tail
// recursive because the value returned by fact(n-1) is used
// in fact(n) and call to fact(n-1) is not the last thing
// done by fact(n)
unsigned int fact(unsigned int n)
{
	if (n <= 0)
		return 1;

	return n * fact(n - 1);
} 

// Driver program to test above function
int main()
{
	cout << fact(5);
	return 0;
}
```
The above function can be written as a tail-recursive function. The idea is to use one more argument and accumulate the factorial value in the second argument. When n reaches 0, return the accumulated value.

Below is the implementation using a tail-recursive function
```
#include <iostream>
using namespace std;

// A tail recursive function to calculate factorial
unsigned factTR(unsigned int n, unsigned int a)
{
	if (n <= 1)
		return a;

	return factTR(n - 1, n * a);
}

// A wrapper over factTR
unsigned int fact(unsigned int n) { return factTR(n, 1); }

// Driver program to test above function
int main()
{
	cout << fact(5);
	return 0;
}
```
Ref Links:[geeksforgeeks](https://www.geeksforgeeks.org/tail-recursion/)
