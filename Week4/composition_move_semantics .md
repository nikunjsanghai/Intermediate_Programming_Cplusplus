### Demo Code
```
#include<iostream>
#include<vector>
#include<iomanip>

class Point
{
public:
	Point();
	Point(double x1, double y1);
	Point operator+(const Point& a);
	//Point& operator+(const Point& a);
	//const Point& operator+(const Point& a);
	//friend Point operator+(const Point& a, const Point& b);
	Point operator+=(const Point& a);
	Point operator-(const Point& a);
	Point operator*(const Point& a) = delete;
	Point operator/(const Point& a) = delete;
	Point operator*(double a);
	Point operator/(double a);
	friend std::ostream& operator<<(std::ostream& out, const Point& a);
	double x;
	double y;
};
Point::Point() :x(0), y(0) {};
Point::Point(double x1, double y1) :x(x1), y(y1) {};

//Option 1
Point Point::operator+(const Point& a)
{
	Point temp;
	temp.x = x + a.x;
	temp.y = y + a.y;
	return temp;
}
//Option 2
//  Point& Point::operator+(const Point& a)
//{
//	x = x + a.x;
//	y = y + a.y;
//	return *this;
//}
  //Option 3
  //const Point& Point::operator+(const Point& a)
  //{
	 // x = x + a.x;
	 // y = y + a.y;
	 // return *this;
  //}
//Option 4
//Point operator+(const Point& a, const Point& b)
//{
//	return Point(a.x + b.x, a.y + b.y);
//}
Point Point::operator-(const Point& a)
{
	Point temp(0, 0);
	temp.x = x - a.x;
	temp.y = y - a.y;
	return temp;
}
//Option1
Point Point::operator+=(const Point& a)
{
	x = x + a.x;
	y = y + a.y;
	return*this;
}
std::ostream& operator<<(std::ostream& out, const Point& a)
{
	out << "(" << std::setw(2) << std::setprecision(2) << a.x << "," << std::setprecision(2) << a.y << ")";
	return out;
}
class PointVector
{
public:
	PointVector();
	PointVector(int v_n, double* v_x, double* v_y);
	~PointVector();
	PointVector(const PointVector& p1);//copy constructor 
	PointVector(PointVector&& p1) noexcept;//move constructor 
	PointVector& operator=(const PointVector& p1);//copy assignment 
	PointVector& operator=(PointVector&& p1) noexcept;//move assignment 
	void print();
	PointVector operator+(const PointVector& a);
	PointVector operator-(const PointVector& a);
	PointVector operator*(double a);
	PointVector operator/(double a);
	void insert(double a, double b);
	friend std::ostream& operator<<(std::ostream& out, const PointVector& a);
protected:
	Point* v;
	int v_n;
};
PointVector::PointVector() :v(nullptr), v_n(0) {};
PointVector::PointVector(int v_n1, double* v_x, double* v_y) :v_n(v_n1),v(new Point[v_n1])
{
	std::cout << "Parameterized constructor call" << std::endl;
	for (size_t i = 0; i < v_n1; i++)
	{
		v[i].x = v_x[i];
		v[i].y = v_y[i];
	}
}
PointVector::~PointVector()
{
	delete[] v;
}
PointVector::PointVector(const PointVector& p1)
{
	std::cout << "copy constructor called" << std::endl;
	v = new Point[p1.v_n];
	v_n = p1.v_n;
	for (size_t i = 0; i < p1.v_n; i++)
	{
		v[i].x = p1.v[i].x;
		v[i].y = p1.v[i].y;
	}
}
PointVector::PointVector(PointVector&& p1) noexcept
{
	std::cout << "move constructor called" << std::endl;
	v = p1.v;
	v_n = p1.v_n;
	/*for (size_t i = 0; i < p1.v_n; i++)
	{
		v[i].x = p1.v[i].x;
		v[i].y = p1.v[i].y;
	}*/
	p1.v = nullptr;
	p1.v_n = 0;
}
PointVector& PointVector::operator=(const PointVector& p1)
{
	std::cout << "copy assignment called" << std::endl;
	if (this != &p1)
	{
		delete[] v;
	}
	v = new Point[p1.v_n];
	v_n = p1.v_n;
	for (size_t i = 0; i < p1.v_n; i++)
	{
		v[i].x = p1.v[i].x;
		v[i].y = p1.v[i].y;
	}
	return *this;
}
PointVector& PointVector::operator=(PointVector&& p1) noexcept
{
	if (this != &p1)
	{
		v = p1.v;
		v_n = p1.v_n;
		std::cout << "move assignment called" << std::endl;
		for (size_t i = 0; i < p1.v_n; i++)
		{
			v[i].x = p1.v[i].x;
			v[i].y = p1.v[i].y;
		}
		p1.v = nullptr;
		p1.v_n = 0;
	}
	return *this;
}
void PointVector::print()
{
	for (size_t i = 0; i < v_n; i++)
	{
		std::cout << v[i].x << ", " << v[i].y << '\n';
	}
}
PointVector PointVector::operator+(const PointVector& a)
{

}
int main()
{
	double x[4] = { 0,1,1,0 };
	double y[4] = { 0,0,1,1 };
	double z[4] = { 2,2,-3,-3 };
	Point a(1, 2);
	Point b(3, 4);
	Point c=a.operator+(b);
	PointVector a1(4, x, y);
	std::cout << "a" << std::endl;
	a1.print();
	PointVector b1(a1);
	std::cout << "b" << std::endl;
	b1.print();
	PointVector c1 = a1;
	c1 = PointVector(4, x, z);
	std::cout << "c" << std::endl;
	c1.print();
	PointVector d = PointVector(4, y, z);
	std::cout << "d" << std::endl;
	d.print();
	return 0;
}
```
### Differences in return type in binary operators
All three versions of the operator+ overload differ in their return types, which can affect the behavior and usage of the operator. Here are the differences between the three versions:

- Point operator+(const Point& a);
This version of the operator+ overload returns a new Point object by value. This means that a copy of the result is returned, and any modifications made to the returned object will not affect the original object. This version is useful when you want to create a new object that represents the sum of two existing objects, but you don't want to modify either of the original objects.

- Point& operator+(const Point& a);
This version of the operator+ overload returns a reference to a Point object. This means that the actual object that is modified is the object that the function is called on. This version is useful when you want to modify the left-hand operand in place and return a reference to it.

- const Point& operator+(const Point& a);
This version of the operator+ overload also returns a reference to a Point object, but it is a const reference. This means that the returned object cannot be modified. This version is useful when you want to return a reference to the left-hand operand, but you want to prevent any modifications to the returned object.

It is important to choose the appropriate return type for your operator+ overload depending on your use case. If you want to modify the left-hand operand and return a reference to it, use the second version. If you want to create a new object that represents the sum of two existing objects, use the first version. If you want to return a reference to the left-hand operand, but prevent any modifications to the returned object, use the third version.

### Difference in return type assignment operators 
The difference between the two operator= overloads is the return type.

- PointVector& operator=(const PointVector& p1);
This overload returns a reference to the left-hand operand, which allows chaining of assignment operators, such as a = b = c, where the result of the right-hand side is assigned to the left-hand side, and the left-hand side is returned for further assignment.
In the context of the expression a = b + c = d + e, this overload would allow chaining of assignments to b + c and d + e before the final result is assigned to a.

- PointVector operator=(const PointVector& p1);
This overload returns a copy of the left-hand operand, which does not allow chaining of assignment operators. In the context of the expression a = b + c = d + e, this overload would not allow chaining of assignments, so the expression would be equivalent to (a = (b + c)) = (d + e), which is not the desired behavior.
Therefore, the first overload (PointVector& operator=(const PointVector& p1)) is the appropriate overload for the purpose of chaining assignments.

