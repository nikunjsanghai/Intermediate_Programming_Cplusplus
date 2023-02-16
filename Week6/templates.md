### Function Templates
We write a generic function that can be used for different data types. Examples of function templates are sort(), max(), min(), printArray().
```
#include <iostream>
using namespace std;

// One function works for all data types. This would work
// even for user defined types if operator '>' is overloaded
template <typename T> T myMax(T x, T y)
{
	return (x > y) ? x : y;
}

int main()
{
	cout << myMax<int>(3, 7) << endl; // Call myMax for int
	cout << myMax<double>(3.0, 7.0)
		<< endl; // call myMax for double
	cout << myMax<char>('g', 'e')
		<< endl; // call myMax for char

	return 0;
}
```
### Class Templates
Class Templates like function templates, class templates are useful when a class defines something that is independent of the data type. Can be useful for classes like LinkedList, BinaryTree, Stack, Queue, Array, etc. 

Following is a simple example of a template Array class. 
```
#include <iostream>
using namespace std;

template <typename T> class Array {
private:
	T* ptr;
	int size;

public:
	Array(T arr[], int s);
	void print();
};

template <typename T> Array<T>::Array(T arr[], int s)
{
	ptr = new T[s];
	size = s;
	for (int i = 0; i < size; i++)
		ptr[i] = arr[i];
}

template <typename T> void Array<T>::print()
{
	for (int i = 0; i < size; i++)
		cout << " " << *(ptr + i);
	cout << endl;
}

int main()
{
	int arr[5] = { 1, 2, 3, 4, 5 };
	Array<int> a(arr, 5);
	a.print();
	return 0;
}
```
### Function Template Specialization 
Template allows us to define generic classes and generic functions and thus provide support for generic programming. Generic programming is an approach where generic data types are used as parameters in algorithms so that they work for variety of suitable data types.
Templates are sometimes called parameterized classes or functions
```
#include <iostream>
using namespace std;

template <class T>
void fun(T a)
{
cout << "The main template fun(): "
		<< a << endl;
}

template<>
void fun(int a)
{
	cout << "Specialized Template for int type: "
		<< a << endl;
}

int main()
{
	fun<char>('a');
	fun<int>(10);
	fun<float>(10.14);
}
```
Output:
```
The main template fun(): a
Specialized Template for int type: 10
The main template fun(): 10.14
```
### Class Template Specialization 
```
#include <iostream>
using namespace std;

template <class T>
class Test
{
// Data members of test
public:
Test()
{
	// Initialization of data members
	cout << "General template object \n";
}
// Other methods of Test
};

template <>
class Test <int>
{
public:
Test()
{
	// Initialization of data members
	cout << "Specialized template object\n";
}
};

int main()
{
	Test<int> a;
	Test<char> b;
	Test<float> c;
	return 0;
}
```

Ref Links: [geeksforgeeks](https://www.geeksforgeeks.org/templates-cpp/) [geeksforgeeks](https://www.geeksforgeeks.org/template-specialization-c/)
