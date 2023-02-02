Predict the output: 
```
int fun1(int x, int y)
{
    if (x == 0)
        return y;
    else
        return fun1(x - 1, x + y);
}
```
Q2. 
```
/* Assume that n is greater than or equal to 0 */
void fun2(int n)
{
if(n == 0)
    return;
 
fun2(n/2);
cout << n%2 << endl;
}
```
Q3.
```

#include <iostream>
using namespace std;
 
void fun(int x)
{
    if(x > 0)
    {
        fun(--x);
        cout << x <<" ";
        fun(--x);
    }
}
 
int main()
{
    int a = 4;
    fun(a);
    return 0;
}
```
[link](https://www.geeksforgeeks.org/practice-questions-for-recursion-set-4/)
Q4.
```
#include <iostream>
using namespace std;
  
int fun(int a[],int n)
{
  int x;
  if(n == 1)
    return a[0];
  else
    x = fun(a, n - 1);
  if(x > a[n - 1])
    return x;
  else
    return a[n - 1];
}
 
int main()
{
  int arr[] = {12, 10, 30, 50, 100};
  cout << " " << fun(arr, 5) <<" ";
  getchar();
  return 0;
}
```
Q5.
```
#include <iostream>
using namespace std;
 
int fun(int n, int* fp)
{
    int t, f;
 
    if (n <= 2) {
        *fp = 1;
        return 1;
    }
    t = fun(n - 1, fp);
    f = t + *fp;
    *fp = t;
    return f;
}
 
int main()
{
    int x = 15;
    cout << fun(5, &x) << endl;
    return 0;
}
```
Link: [geeksforgeeks](https://www.geeksforgeeks.org/practice-questions-for-recursion-set-7/)
     
