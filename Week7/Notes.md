
### Question: Predict the output
```
// C++ program without declaring the
// move constructor
#include <iostream>
#include <vector>
using namespace std;

// Move Class
class Move {
private:
	// Declaring the raw pointer as
	// the data member of the class
	int* data;

public:
	// Constructor
	Move(int d)
	{
		// Declare object in the heap
		data = new int;
		*data = d;

		cout << "Constructor is called for "
			<< d << endl;
	};

	// Copy Constructor to delegated
	// Copy constructor
	Move(const Move& source)
		: Move{ *source.data }
	{

		// Copying constructor copying
		// the data by making deep copy
		cout << "Copy Constructor is called - "
			<< "Deep copy for "
			<< *source.data
			<< endl;
	}

	// Destructor
	~Move()
	{
		if (data != nullptr)

			// If the pointer is not
			// pointing to nullptr
			cout << "Destructor is called for "
			<< *data << endl;
		else

			// If the pointer is
			// pointing to nullptr
			cout << "Destructor is called"
			<< " for nullptr"
			<< endl;

		// Free the memory assigned to
		// data member of the object
		delete data;
	}
};

// Driver Code
int main()
{
	// Create vector of Move Class
	vector<Move> vec;

	// Inserting object of Move class
	vec.push_back(Move{ 10 });
	vec.push_back(Move{ 20 });
	vec.push_back(Move{ 30 });
	vec.push_back(Move{ 40 });
	vec.push_back(Move{ 50 });
	return 0;
}
```
Example: Predict the output.
```
// C++ program with declaring the
// move constructor
#include <iostream>
#include <vector>
using namespace std;

// Move Class
class Move {
private:
	// Declare the raw pointer as
	// the data member of class
	int* data;

public:

	// Constructor
	Move(int d)
	{
		// Declare object in the heap
		data = new int;
		*data = d;
		cout << "Constructor is called for "
			<< d << endl;
	};

	// Copy Constructor
	Move(const Move& source)
		: Move{ *source.data }
	{

		// Copying the data by making
		// deep copy
		cout << "Copy Constructor is called -"
			<< "Deep copy for "
			<< *source.data
			<< endl;
	}

	// Move Constructor
	Move(Move&& source)
		: data{ source.data }
	{

		cout << "Move Constructor for "
			<< *source.data << endl;
		source.data = nullptr;
	}

	// Destructor
	~Move()
	{
		if (data != nullptr)

			// If pointer is not pointing
			// to nullptr
			cout << "Destructor is called for "
			<< *data << endl;
		else

			// If pointer is pointing
			// to nullptr
			cout << "Destructor is called"
			<< " for nullptr "
			<< endl;

		// Free up the memory assigned to
		// The data member of the object
		delete data;
	}
};

// Driver Code
int main()
{
	// Vector of Move Class
	vector<Move> vec;

	// Inserting Object of Move Class
	vec.push_back(Move{ 10 });
	vec.push_back(Move{ 20 });
	vec.push_back(Move{ 30 });
	vec.push_back(Move{ 40 });
	vec.push_back(Move{ 50 });
	return 0;
}
```


###Iterators
An iterator is an object (like a pointer) that points to an element inside the container. We can use iterators to move through the contents of the container. They can be visualized as something similar to a pointer pointing to some location and we can access the content at that particular location using them. Iterators play a critical role in connecting algorithm with containers along with the manipulation of data stored inside the containers. The most obvious form of an iterator is a pointer. A pointer can point to elements in an array and can iterate through them using the increment operator (++). But, all iterators do not have similar functionality as that of pointers. Depending upon the functionality of iterators they can be classified into five categories, as shown in the diagram below with the outer one being the most powerful one and consequently the inner one is the least powerful in terms of functionality.  

![image](https://user-images.githubusercontent.com/103468688/168027966-1ff35463-bcd5-4eb7-ac54-59787ee34916.png).   

For now let just look at one type of iterator, random access iterator in vector and reflect on the difference using iterators make in programming




Now each one of these iterators are not supported by all the containers in STL, different containers support different iterators, like vectors support Random-access iterators, while lists support bidirectional iterators. The whole list is as given below:  

![image](https://user-images.githubusercontent.com/103468688/168028238-0adfd2a9-3605-469a-9269-95e8e7f4413a.png)





Reference Links [Link1](https://www.cplusplus.com/reference/iterator/#:~:text=An%20iterator%20is%20any%20object,dereference%20(%20*%20)%20operators) [Link2](https://www.geeksforgeeks.org/iterators-c-stl/) [Link3](https://www.geeksforgeeks.org/introduction-iterators-c/) [Link4](https://www.geeksforgeeks.org/random-access-iterators-in-cpp/)[Link5](https://www.geeksforgeeks.org/bidirectional-iterators-in-cpp/) [Link6](https://www.geeksforgeeks.org/input-iterators-in-cpp/) [Link7](https://www.geeksforgeeks.org/output-iterators-cpp/) [Link7](https://www.geeksforgeeks.org/forward-iterators-in-cpp/) [Link8](https://www.geeksforgeeks.org/bidirectional-iterators-in-cpp/) [link9](https://docs.microsoft.com/en-us/cpp/standard-library/iterators?view=msvc-170) [link10](https://users.cs.northwestern.edu/~riesbeck/programming/c++/stl-iterators.html) [link11](https://en.cppreference.com/w/cpp/iterator/iterator) [link12](https://www.javatpoint.com/cpp-iterators)

There are more than 10 articles on Linked Lists all are linked in this article: [Link1](https://www.geeksforgeeks.org/data-structures/linked-list/#singlyLinkedList)

More reference articles:[link1](https://www.geeksforgeeks.org/implementing-iterator-pattern-of-a-single-linked-list/) [link2](https://www.geeksforgeeks.org/linked-list-vs-array/) [link3](https://www.geeksforgeeks.org/the-c-standard-template-library-stl/) [link4](https://www.geeksforgeeks.org/templates-cpp/) 
 
