### sizeof
The sizeof operator is a unary compile-time operator used to determine the size of variables, 
data types, and constants in bytes at compile time. It can also determine the size of classes, structures, and unions.

Syntax:
```
sizeof (data type)
or
sizeof (expression)
```
Example 1: Number of bytes taken by different data types.                       
Below is the C++ program to implement sizeof operator to determine the number of bytes taken by different data types:       
```
// C++ program to implement sizeof
// to determine the number of bytes
// taken by different data types
#include <bits/stdc++.h>
using namespace std;
  
// Driver code
int main() 
{  
  cout << "No of Bytes taken up by char is " <<
           sizeof(char) << endl;
  cout << "No of Bytes taken up by int is " << 
           sizeof(int) << endl;
  cout << "No of Bytes taken up by float is " <<
           sizeof(float) << endl;
  cout << "No of Bytes taken up by double is " <<
           sizeof(double) << endl;
  cout << "No of Bytes taken up by long is " << 
           sizeof(long) << endl;
}
```
Output
```
No of Bytes taken up by char is 1
No of Bytes taken up by int is 4
No of Bytes taken up by float is 4
No of Bytes taken up by double is 8
No of Bytes taken up by long is 8
```
Example 2: Number of bytes taken by variables of different data types.                            
Below is the C++ program to implement sizeof to determine the number of bytes taken by variables of different data types:  
```
// C++ program to implement sizeof
// to determine the number of bytes 
// taken by variables of different
// data types
#include <bits/stdc++.h>
using namespace std;
  
// Driver code
int main() 
{
  int a;
  float b;
  char g;
  cout << "No of Bytes taken up by a is " <<
           sizeof(a) << endl;
  cout << "No of Bytes taken up by b is " << 
           sizeof(b) << endl;
  cout << "No of Bytes taken up by g is " << 
           sizeof(g) << endl;
  return 0;
}
```
Output
```
No of Bytes taken up by a is 4
No of Bytes taken up by b is 4
No of Bytes taken up by g is 1
```
Example 3: Number of bytes taken by an expression.                      
Below is the C++ program to implement sizeof to determine the number of bytes taken by an expression:       
```
// C++ program to implement sizeof 
// to determine the number of bytes 
// taken by an expression:
#include <bits/stdc++.h>
using namespace std;
  
// Driver code
int main() 
{
  int a = 5;
  long x = 9;
  double p = 10.2;
  float g = 2.5;
        
  cout << "No of Bytes taken up by (a+g) is " <<
           sizeof(a + g) << endl;
  cout << "No of Bytes taken up by (a+x) is " << 
           sizeof(a + x) << endl;
  cout << "No of Bytes taken up by (a+p) is " << 
           sizeof(a + p) << endl;
  cout << "No of Bytes taken up by (x+p) is " << 
           sizeof(x + p) << endl;
  return 0;
}
```
Output
```
No of Bytes taken up by (a+g) is 4
No of Bytes taken up by (a+x) is 8
No of Bytes taken up by (a+p) is 8
No of Bytes taken up by (x+p) is 8
```
Example 4: Find the size of an array using sizeof().                       
Below is the C++ program to implement sizeof to determine the size of an array:                  
```
// C++ program to implement sizeof 
// to determine the size of an array
#include <bits/stdc++.h>
using namespace std;
  
// Driver code
int main() 
{
  int x[] = {1, 2, 3, 5, 6, 7, 8, 9};
  int length = sizeof(x) / sizeof(x[0]);
  cout << "Length of the array is " <<
           length << endl;
  return 0;
}
```
Output
```
Length of the array is 8
```
Example 5: Find the size of class.                  
Below is the C++ program to implement sizeof to find the size of the class:
```
// C++ program to implement sizeof 
// to find the size of the class
#include <bits/stdc++.h>
using namespace std;
  
class GFG
{  
  int x;  
};
  
// Driver code
int main()  
{  
  GFG g;  
  cout << "Size of class gfg is in bytes  : " <<
           sizeof(g) << endl;  
  return 0;  
}
```
Output
```
Size of class gfg is in bytes  : 4
```
Example 6: Find the size of pointers.            
Below is the C++ program to implement sizeof to find the size of pointers:
```
// C++ program to implement sizeof 
// to find the size of pointers
#include <bits/stdc++.h>
using namespace std;
    
// Driver code
int main()  
{  
  int *a = new int(10);
  char *g = new char('g');
  double *d = new double(7.5);
  cout << "size of pointer a is " << 
           sizeof(a) << endl;
  cout << "size of pointer *a is " <<
           sizeof(*a) << endl;
  cout << "size of pointer g is " << 
           sizeof(g) << endl;
  cout << "size of pointer *g is " << 
           sizeof(*g) << endl;
  cout << "size of pointer d is " << 
           sizeof(d) << endl;
  cout << "size of pointer *d is " << 
           sizeof(*d) << endl;
  return 0;  
}
```
Output
```
size of pointer a is 8
size of pointer *a is 4
size of pointer g is 8
size of pointer *g is 1
size of pointer d is 8
size of pointer *d is 8
```
Example 7: Nesting of sizeof() operator.                
Below is the C++ program to show the nesting of sizeof operator:
```
// C++ program to show the 
// nesting of sizeof operator
#include <bits/stdc++.h>
using namespace std;
  
// Driver code
int main() 
{
  int x;
  double y;
  cout << "Nesting of sizeof operator is implemented " << 
          "as sizeof(x*sizeof(y)) :" << 
           sizeof(x * sizeof(y)) << endl;
  return 0;
}
```
Output
```
Nesting of sizeof operator is implemented as sizeof(x*sizeof(y)) :8
```
Example 8: Find the size of the structure.             
Below is the C++ program to implement the sizeof operator to find the size of the structure:
```
// C++ program to implement the 
// sizeof operator to find the 
// size of structure
#include <bits/stdc++.h>
using namespace std;
  
struct gfg
{
  int z;
  float d;
  char s[20];
}g;
  
// Driver code
int main() 
{
  cout << "size of structure is " << 
           sizeof(g) << endl;
  return 0;
}
```
Output
```
size of structure is 28
```
Example 9: Find the size of the union.                 
Below is the C++ program to implement the sizeof operator to find the size of the union: 
```
// C++ program to implement the 
// sizeof operator to find the 
// size of the union
#include <bits/stdc++.h>
using namespace std;
  
union gfg
{
  int z;
  double d;
}g;
  
// Driver code
int main() 
{
  cout << "size of union is " <<
           sizeof(g) << endl;
  return 0;
}
```
Output
```
size of union is 8
```
Reference Link:[sizeof](https://www.geeksforgeeks.org/cpp-sizeof-operator/)
