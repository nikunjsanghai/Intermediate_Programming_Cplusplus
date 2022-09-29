# Initializer List (Not relevant for PIC 10B-Fall 2022)
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
	demonstrating d1(1,2);
	cout << "End of execution";
	return 0;
}
```
Ouput:
```
End of execution
```
No difference right?
Wrong.   

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
	demonstrating() :x(0), y(0), d(demon(5))
	{
		cout << "Default constructor being called" << endl;
	}
	demonstrating(int x1, int y1) :x(x1), y(y1) {}
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
default and something...5
Default constructor being called
End of execution
```
Further reading: [link1](https://www.geeksforgeeks.org/when-do-we-use-initializer-list-in-c/)
Further notes links: [link](https://stackoverflow.com/questions/34079390/range-for-loops-and-stdvectorbool) [link](https://stackoverflow.com/questions/24285112/why-must-initializer-list-order-match-member-declaration-order)
[link](https://www-geeksforgeeks-org.cdn.ampproject.org/v/s/www.geeksforgeeks.org/order-of-execution-in-initializer-list-in-c/amp/?amp_gsa=1&amp_js_v=a9&usqp=mq331AQKKAFQArABIIACAw%3D%3D#amp_tf=From%20%251%24s&aoh=16638547519058&referrer=https%3A%2F%2Fwww.google.com&ampshare=https%3A%2F%2Fwww.geeksforgeeks.org%2Forder-of-execution-in-initializer-list-in-c%2F)
