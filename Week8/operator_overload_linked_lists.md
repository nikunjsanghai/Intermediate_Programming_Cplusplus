### Prefix 
```
// C++ program to demonstrate
// prefix increment operator overloading

#include <bits/stdc++.h>
using namespace std;

class Integer {
private:
	int i;

public:
	// Parameterised constructor
	Integer(int i = 0)
	{
		this->i = i;
	}

	// Overloading the prefix operator
	Integer& operator++()
	{
		++i;
		// returned value should be a reference to *this
		return *this;
	}

	// Function to display the value of i
	void display()
	{
		cout << "i = " << i << endl;
	}
};

// Driver function
int main()
{
	Integer i1(3);

	cout << "Before increment: ";
	i1.display();

	// Using the pre-increment operator
	Integer i2 = ++i1;

	cout << "After pre increment: " << endl;
	cout << "i1: ";
	i1.display();
	cout << "i2: ";
	i2.display();
}
```
### Postfix
```
// C++ program to demonstrate
// postfix increment operator
// overloading
#include <bits/stdc++.h>
using namespace std;

class Integer {
private:
	int i;

public:
	// Parameterised constructor
	Integer(int i = 0)
	{
		this->i = i;
	}

	// Overloading the postfix operator
	Integer operator++(int)
	{
		// returned value should be a copy of the object before increment
		Integer temp = *this;
		++i;
		return temp;
	}

	// Function to display the value of i
	void display()
	{
		cout << "i = " << i << endl;
	}
};

// Driver function
int main()
{
	Integer i1(3);

	cout << "Before increment: ";
	i1.display();

	// Using the post-increment operator
	Integer i2 = i1++;

	cout << "After post increment: " << endl;
	cout << "i1: ";
	i1.display();
	cout << "i2: ";
	i2.display();
}
```
### Operator Overload for Linked Lists 
```
struct node{
    int value;
    node *next;
}

class Iterator{
    public:
        Iterator();
        Iterator(node *);
        Iterator operator++(int);
    private:
        node *point;
};

Iterator::Iterator(){
    point = NULL;
}

Iterator::Iterator(node *current){
    point = current;
}

Iterator Iterator::operator++(int u){
    point = point->next;
    return *this;
}
```
