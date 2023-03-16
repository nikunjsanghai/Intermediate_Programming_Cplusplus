### Code
```
#include<iostream>
#include<vector>
class P
{
public:
	P(int x1, int y1);
	void print(const P& b);
private:
	int x;
	int y;
};
P::P(int x1, int y1) :x(x1), y(y1) {};
void P::print(const P& b)
{
	std::cout << this->x << " " << b.x << std::endl;
}
class Point
{
public:
	Point();
	Point(double x1, double y1);
	//Point operator+(const Point& a);
    //Point& operator+(const Point& a);
	//const Point& operator+(const Point& a);
	friend Point operator+(const Point& a, const Point& b);
	Point operator+=(const Point& a);
	Point operator-(const Point& a);
	Point operator*(const Point& a) = delete;
	Point operator/(const Point& a) = delete;
	Point operator*(double a);
	Point operator/(double a);
	friend std::ostream& operator<<(std::ostream& out, const Point& a);
private:
	double x;
	double y;
};
class PointVector
{
public:
	PointVector operator+(const PointVector& a);
	PointVector operator-(const PointVector& a);
	PointVector operator*(double a);
	PointVector operator/(double a);
	void insert(double a, double b);
	friend std::ostream& operator<<(std::ostream& out, const PointVector& a);
private:
	std::vector<Point> vec;
};
Point::Point() :x(0), y(0) {};
Point::Point(double x1, double y1) :x(x1), y(y1) {};

//Option 1
//Point Point::operator+(const Point& a)
//{
//	Point temp(0,0);
//	temp.x = x + a.x;
//	temp.y = y + a.y;
//	return temp;
//}
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
Point operator+(const Point& a, const Point& b)
{
	return Point(a.x + b.x, a.y + b.y);
}
//Option1
Point Point::operator+=(const Point& a)
{
	x = x + a.x;
	y = y + a.y;
	return* this;
}
std::ostream& operator<<(std::ostream& out, const Point& a)
{
	out << "(" << a.x << "," << a.y << ")";
	return out;
}


void PointVector::insert(double a, double b)
{
	vec.push_back(Point(a, b));
}
PointVector PointVector::operator+(const PointVector& a)
{
	PointVector t;
	for (size_t i = 0; i < vec.size(); i++)
	{
		Point temp = vec[i] + a.vec[i];
		t.vec.push_back(temp);
	}
	return t;
}
int main()
{
	Point a(1, 2);
	Point b(2, 3);
	Point e(1, 2);
	Point c;
	Point d;
	d = c = a + b;
	std::cout << a << std::endl;
	std::cout << b << std::endl;
	std::cout << c << std::endl;
	std::cout << d << std::endl;
	 c = a + b +e ;
	 std::cout << "end of case" << std::endl;
	std::cout << a << std::endl;
	std::cout << b << std::endl;
	std::cout << c << std::endl;
	std::cout << d << std::endl;
	std::cout << e << std::endl;
	c += a;
	std::cout << "end of case" << std::endl;
	std::cout << a << std::endl;
	std::cout << c << std::endl;
	std::cout << "end of case" << std::endl;
	b+=c += a;
	std::cout << a << std::endl;
	std::cout << c << std::endl;
	std::cout << b << std::endl;
	std::cout << "end of case" << std::endl;

	PointVector g1;
	g1.insert(5, 8);
	PointVector g2;
	g2.insert(7, 8);
	return 0;
}
```
