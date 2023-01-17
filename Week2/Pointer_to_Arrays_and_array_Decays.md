### Pointer to Array
```
#include <iostream>
using namespace std;

int main()
{
int arr[5] = { 1, 2, 3, 4, 5 };
int *ptr = arr;

cout <<"\n"<< ptr;
return 0;
}

```
In this program, we have a pointer ptr that points to the 0th element of the array. Similarly, 
we can also declare a pointer that can point to whole array instead of only one element of the array. 
This pointer is useful when talking about multidimensional arrays. 
#### Syntax
```
data_type (*var_name)[size_of_array];
```
#### Example 
```
int (*ptr)[10];
```
Here ptr is pointer that can point to an array of 10 integers.                           
Note : The pointer that points to the 0th element of array and the pointer that points to the whole array are totally different. The following program shows this: 
```
// C++ program to understand difference between 
// pointer to an integer and pointer to an
// array of integers. 
#include <iostream>
using namespace std;
int main()
{
	// Pointer to an integer
	int *p; 
	
	// Pointer to an array of 5 integers
	int (*ptr)[5]; 
	int arr[5];
	
	// Points to 0th element of the arr.
	p = arr;
	
	// Points to the whole array arr.
	ptr = &arr; 
	
	cout << "p =" << p <<", ptr = "<< ptr<< endl;
	p++; 
	ptr++;
	cout << "p =" << p <<", ptr = "<< ptr<< endl;
	
	return 0;
}
```
Output:
```
p = 0x7fff4f32fd50, ptr = 0x7fff4f32fd50
p = 0x7fff4f32fd54, ptr = 0x7fff4f32fd64
```
p: is pointer to 0th element of the array arr, while ptr is a pointer that points to the whole array arr.                                
                        
                                      
- The base type of p is int while base type of ptr is ‘an array of 5 integers’.
- We know that the pointer arithmetic is performed relative to the base size, so if we write ptr++, then the pointer ptr will be shifted forward by 20 bytes.
The following figure shows the pointer p and ptr. Darker arrow denotes pointer to an array. 
<img width="533" alt="pointer_to_array" src="https://user-images.githubusercontent.com/103468688/212976774-7110d06b-54c6-4fad-9ee8-a8df906f4e17.png">
On dereferencing a pointer expression we get a value pointed to by that pointer expression. Pointer to an array points to an array, so on dereferencing it, we should get the array, and the name of array denotes the base address.
So whenever a pointer to an array is dereferenced, we get the base address of the array to which it points.                  

```
// C++ program to illustrate sizes of
// pointer of array
#include <bits/stdc++.h>
using namespace std;

int main()
{
	int arr[] = { 3, 5, 6, 7, 9 };
	int *p = arr;
	int (*ptr)[5] = &arr;
	
	cout << "p = "<< p <<", ptr = " << ptr << endl;
	cout << "*p = "<< *p <<", *ptr = " << *ptr << endl;
	
	cout << "sizeof(p) = "<< sizeof(p) <<
			", sizeof(*p) = " << sizeof(*p) << endl;
	cout << "sizeof(ptr) = "<< sizeof(ptr) <<
		", sizeof(*ptr) = " << sizeof(*ptr) << endl;
	return 0;
}
```
Output:
```
p = 0x7ffde1ee5010, ptr = 0x7ffde1ee5010
*p = 3, *ptr = 0x7ffde1ee5010
sizeof(p) = 8, sizeof(*p) = 4
sizeof(ptr) = 8, sizeof(*ptr) = 20
```
Reference Links : [geeksforgeeks](https://www.geeksforgeeks.org/pointer-array-array-pointer/) [stackoverflow](https://stackoverflow.com/questions/10252837/pointer-to-array-c)[stackoverflow](https://stackoverflow.com/questions/11829830/c-passing-an-array-pointer-as-a-function-argument) 

### Array Decay

Reference Links: [stackoverflow](https://stackoverflow.com/questions/1461432/what-is-array-to-pointer-decay) [geeksforgeeks](https://www.geeksforgeeks.org/what-is-array-decay-in-c-how-can-it-be-prevented/) [geeksforgeeks](https://www.geeksforgeeks.org/using-sizof-operator-with-array-paratmeters-in-c/)
