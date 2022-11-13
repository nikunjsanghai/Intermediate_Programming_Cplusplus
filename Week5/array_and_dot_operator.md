
### Arrow Operator -> in C++ 
An Arrow operator in C/C++ allows to access elements in Structures and Unions. It is used with a pointer variable pointing to a structure or union. The arrow operator is formed by using a minus sign, followed by the greater than symbol as shown below.             
**Syntax:**
```
(pointer_name)->(variable_name)
```
**Operation:** The -> operator in C or C++ gives the value held by variable_name to structure or union variable pointer_name.         
#### Difference between Dot(.) and Arrow(->) operator:
- The Dot(.) operator is used to normally access members of a structure or union.
- The Arrow(->) operator exists to access the members of the structure or the unions using pointers.

Example:
```
#include <iostream>
using namespace std;

class myclass{
    private:
        int a,b;
    public:
        void setdata(int i,int j){
            a=i;
            b=j;
        }
};

int main() {
    myclass *p;
    p = new myclass[10];
    p->setdata(5,6);
    return 0;
}
```
Explanation:
when you declare myclass \*p it's a pointer and you can access it's members with ->, because p points to memory location.

But as soon as you call p=new myclass\[10]; p starts to point to array and when you call p\[n] you get a reference, which members must be accessed using ..
But if you use p->member = smth that would be the same as if you called p\[0].member = smth, because number in \[] is an offset from p to where search for the next array member, for example (p + 5)->member = smth would be same as p\[5].member = smth


Reference Link: [geekforgeeks](https://www.geeksforgeeks.org/arrow-operator-in-c-c-with-examples/) [stackoverflow](https://stackoverflow.com/questions/17716293/arrow-operator-and-dot-operator-class-pointer)

