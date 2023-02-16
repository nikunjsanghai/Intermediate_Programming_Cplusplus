### Question 1
```
#include<iostream>
int fun(int n)
{
	if (n == 4)
		return n;
	else
		return 2 * fun(n + 1);
}
int main()
{
	std::cout << " " << fun(2);
	return 0;
}
```
Predict the Output:
### Question 2
```
How to create a dynamic array of pointers (to integers) of size 10 using new in C++? Hint: We can create a non-dynamic array using int *arr[10]
```
### Question 3
```
#include <iostream>
using namespace std;
 
class Test 
{
  int x;
  Test() { x = 5;}
};
 
int main()
{
   Test *t = new Test;
   cout << t->x;
}
```
Predict the output:
### Question 4
```
int *ptr = NULL;
delete ptr; 
```
Does deleting a pointer pointing to NULL have any issues? 
### Question 5
```
#include<iostream>
using namespace std;
 
int main()
{
    int *ptr = new int;
    delete ptr;
    delete ptr;
    return 0;
}
```
What happens if you delete a pointer twice? 
### Question 6
```
int fun(int x, int y)
{
    if (y == 0)   return 0;
    return (x + fun(x, y-1));
}
```
Predict the output:
### Question 7
```
deleted, move to next question 
```
Predict the output:
### Question 8
```
#include <iostream>
int f(int n)
{
    if(n <= 1)
        return 1;
    if(n%2 == 0)
        return f(n/2);
    return f(n/2) + f(n/2+1);
}
 
 
int main()
{
    std::cout<< f(11);
    return 0;
}
```
### Question 9
```
class GFG
{
   int f(int a[],int i, int n)
  {
    if(n <= 0)
    {
    return 0;
    }
    else if(a[i] % 2 == 0)
    {
    return a[i] + f(a, i+1, n-1);
    }
    else 
    {
    return a[i] - f(a, i+1, n-1);
    }
  }
   void main()
    {
      int a[] = {12, 7, 13, 4, 11, 6};
      std::cout<<f(a,0,6);
    }
```
Predict the Output:
### Question 10
```
#include<iostream>
void print(int n)
{
    if (n > 4000)
        return;
    std::cout<< n<<" ";
    std::cout<< print(2*n)<<" ";
    std::cout<< n<<" ";
}
 
int main()
{
    print(1000);
    getchar();
    return 0;
}
```
Predict the Output:
### Question 11
```
#include <stdio.h>
int fun(int n, int *f_p)
{
    int t, f;
    if (n <= 1)
    {
        *f_p = 1;
        return 1;
    }
    t = fun(n- 1,f_p);
    f = t+ * f_p;
    *f_p = t;
    return f;
}
 
int main()
{
    int x = 15;
    printf (" %d n", fun(5, &x));
    return 0;
}
```

Solutions
```
1.16
2.int** arr=new int* \[10];
7.X*y
8.5
9.15
10.1000 2000 4000 4000 2000 1000
11.8
```
Ref Link:[geeksforgeeks](https://www.geeksforgeeks.org/algorithms-gq/recursion-gq/)
