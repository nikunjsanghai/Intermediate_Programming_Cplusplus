### Array

- It is a group of variables of similar data types referred to by a single element.
- Its elements are stored in a continuous memory location.
- The size of the array should be mentioned while declaring it.
- Array elements are always counted from zero (0) onward.
- Array elements can be accessed using the position of the element in the array.
- The array can have one or more dimensions.

An array in C/C++ or be it in any programming language is a collection of similar data items stored at contiguous memory locations and elements can be accessed randomly using indices of an array.  They can be used to store the collection of primitive data types such as int, float, double, char, etc of any particular type.
To add to it, an array in C/C++ can store derived data types such as structures, pointers etc. Given below is the picture representation of an array.
![array_indices](https://user-images.githubusercontent.com/103468688/199192684-4d534f33-70b9-4eaf-954f-b23fda64d228.PNG)

#### Why do we need arrays?           
We can use normal variables (v1, v2, v3, ..) when we have a small number of objects, but if we want to store a large number of instances, it becomes difficult to manage them with normal variables. The idea of an array is to represent many instances in one variable.




#### Advantages
- Code Optimization:  we can retrieve or sort the data efficiently.
- Random access: We can get any data located at an index position.
 
#### Disadvantages
- Size Limit: We can store only the fixed size of elements in the array. It doesn’t grow its size at runtime. 

### Ways in which you can initialize an array 
- Array declaration by specifying the size 
```
#include <iostream>
using namespace std;

int main()
{
	// array declaration by specifying size
	int arr1[10];
	
	// With recent C/C++ versions, we can also
	// declare an array of user specified size
	int n = 10;
	int arr2[n];
	
	return 0;
}

```
- Array declaration by initializing elements
```
// Array declaration by initializing elements
#include <iostream>
using namespace std;
int main()
{
	int arr[] = { 10, 20, 30, 40};
	return 0;
// Compiler creates an array of size 4.
// above is same as "int arr[4] = {10, 20, 30, 40}"
}
```
- Array declaration by specifying the size and initializing elements
```
#include <iostream>
using namespace std;

int main()
{
	// Array declaration by specifying size and initializing
	// elements
	int arr[6] = { 10, 20, 30, 40 };

	// Compiler creates an array of size 6, initializes first
	// 4 elements as specified by user and rest two elements as
	// 0. above is same as "int arr[] = {10, 20, 30, 40, 0, 0}"
	
	return 0;
}

```

#### Case: needing user to input the size of the array
```
#include <iostream>
using namespace std;
  
int main()
{
    // array declaration by specifying size
    int arr1[10];
    
    // With recent C/C++ versions, we can also
    // declare an array of user specified size
    int n = 10;
    int arr2[n];
      
    return 0;
}
```
#### Case: you already know the dataset/value of each element of the array
```
/ Array declaration by initializing elements
#include <iostream>
using namespace std; 
int main()
{
    int arr[] = { 10, 20, 30, 40};
    return 0; 
// Compiler creates an array of size 4.
// above is same as  "int arr[4] = {10, 20, 30, 40}"
}
```
#### Case: you know some of the elements, but accurately know the size. 
```
#include <iostream>
using namespace std;
  
int main() 
{
    // Array declaration by specifying size and initializing
    // elements
    int arr[6] = { 10, 20, 30, 40 };
  
    // Compiler creates an array of size 6, initializes first
    // 4 elements as specified by user and rest two elements as
    // 0. above is same as  "int arr[] = {10, 20, 30, 40, 0, 0}"
      
    return 0;
}
```
Reference Link : [geeksforgeeks](https://www.geeksforgeeks.org/arrays-in-c-cpp/) 
Multi-dimensional arrays in c++: [link](https://www.geeksforgeeks.org/multidimensional-arrays-c-cpp/)                 
Pointer to an array: [link](https://www.geeksforgeeks.org/pointer-array-array-pointer/) [link](https://stackoverflow.com/questions/14808908/pointer-to-2d-arrays-in-c)     
How to pass an Array to a function: [link](https://stackoverflow.com/questions/14808908/pointer-to-2d-arrays-in-c)

