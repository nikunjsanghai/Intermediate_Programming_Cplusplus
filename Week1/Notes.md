# Initializer List 
It is not to be confused with std::initializer_list. In the definition of a constructor of a class the initlizer list specifies values of non-static data members. 

Example:
```
#include<iostream>
using namespace std;
class demonstrating
{
public:
	demonstrating() :x(0), y(0)
	{
		cout << "Default constructor being called";
	}
	demonstrating(int x1, int y1) : x(x1), y(y1) {}
private:
	int x;
	int y;
};

int main()
{
	demonstrating d1(1, 2);
	cout << "End of execution";
	return 0;
}
```
Output
```
End of execution
```
Example without initializer list
```
#include<iostream>
using namespace std;
class demonstrating
{
public:
	demonstrating() 
	{
		x = 0;
		y = 0;
		cout << "Default constructor being called";
	}
	demonstrating(int x1, int y1) 
	{
		x = x1;
		y = y1;
	}
private:
	int x;
	int y;
};

int main()
{
	demonstrating d1;
	cout << "End of execution";
	return 0;
}
```
Ouput:
```
End of execution
```
No difference right?
Wrong 
Example2:
```
#include<iostream>
using namespace std;
class demon
{
public:
	demon()
	{
		cout << "default" << endl;
	}
	demon(int x)
	{
		cout << "default and something..." << x << endl;
	}
};
class demonstrating
{
private:
	int x;
	int y;
	demon d;
public:
	demonstrating() 
	{
		x = 0;
		y = 0;
		d = demon(8);
		cout << "Default constructor being called" << endl;
	}
	demonstrating(int x1, int y1) 
	{
		x = x1;
		y = y1;
	}
};

int main()
{
	demonstrating d1;
	cout << "End of execution";
	return 0;
}
```
Output:
```
default
default and something...8
Default constructor being called
End of execution
```
Example with initializer list:
```
default and something...5
Default constructor being called
End of execution
```
