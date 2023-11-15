### Demo Code
```
#include<vector>
#include<iostream>
class Point
{
public:	
	Point(); // default constructor for Point class
	Point(double x, double y); //parameterized constructor for Point class
	Point operator-(const Point& a); // operator overloads as member function 
	Point operator+(const Point& a);
	double get_x() const ;
	double get_y() const ;
	friend std::ostream& operator<<(std::ostream& os, const Point& p); // keep this function as a friend function 
private:
	double x;
	double y;
};


class PointVector :public Point
{
public:
	PointVector();
	void modify(double x, double y); // this is just for my implementation of PointVector class
	PointVector operator+(const PointVector& p); // this function will call upon operator overload of Point class
	PointVector operator-(const PointVector& p);
	std::vector<Point> get_vec() const;
	friend std::ostream& operator<<(std::ostream& os, const PointVector& vector);

private:
	std::vector<Point> vec;
};
std::vector<Point> PointVector::get_vec() const
{
	return vec;
}

std::ostream& operator<<(std::ostream& os, const Point& p)
{
	os << "(" << p.x << "," << p.y << ")";
	return os;
}
double Point::get_x() const
{
	return x;
}
double Point::get_y() const
{
	return y;
}
void PointVector::modify(double x, double y)
{
	vec.push_back(Point(x, y));
}
Point::Point()
{
	x = 0;
	y = 0;
}
Point::Point(double x1, double y1) :x(x1), y(y1) {};

PointVector::PointVector()
{

}
std::ostream& operator<<(std::ostream& os, const PointVector& el) {
	for (const Point&  e: el.vec) {
		os << e << " ";
	}
	return os;
}

Point Point::operator+(const Point& b)
{
	Point c(this->x, this->y);
	c.x = this->x + b.x;
	c.y = this->y + b.y;
	return c;
}
Point Point::operator-(const Point& b)
{
	Point c(this->x, this->y);
	c.x = this->x - b.x;
	c.y = this->y - b.y;
	return c;
}

PointVector PointVector::operator-(const PointVector& p)
{
	PointVector a;
	for (size_t i = 0; i < p.vec.size(); i++)
	{
		Point b(this->vec[i].get_x()-p.vec[i].get_x()  , this->vec[i].get_y()-p.vec[i].get_y() );
		a.vec.push_back(b);
	}
	return a;
}

PointVector PointVector::operator+(const PointVector& p)
{
	PointVector a;
	for (size_t i = 0; i < p.vec.size(); i++)
	{
		Point b(p.vec[i].get_x()+this->vec[i].get_x(), p.vec[i].get_y()+this->vec[i].get_y());
		a.vec.push_back(b);
	}
	return a;
}
int main()
{
	int m;
	std::cout << "Enter the size of the PointVector elements: ";
	std::cin >> m;
	std::cout << "Enter elements of the first PointVector in x y format seperated by blank spaces: " << std::endl;
	PointVector P;
	for (size_t i = 0; i < m; i++)
	{
		double x, y;
		std::cin >> x >> y;
		P.modify(x,y);
	}
	std::cout << "Enter elements of the second PointVector in x y format seperated by blank spaces: " << std::endl;
	PointVector P1;
	for (size_t i = 0; i < m; i++)
	{
		double x, y;
		std::cin >> x >> y;
		P1.modify(x,y);
	}
	std::cout << P1 + P << std::endl;
	std::cout << P1 - P << std::endl;
	return 0;
}
```
