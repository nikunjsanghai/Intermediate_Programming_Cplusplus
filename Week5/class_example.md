Example:
```
#include<iostream>
class Parent
{
public:
	Parent(int a, int b);
	virtual void display();
	int get_ab() const ;
	int get_bc() const ;
private:
	int ab;
	int bc;
};
Parent::Parent(int a, int b) : ab(a), bc(b) {};
int Parent::get_ab() const 
{
	return ab;
}
int Parent:: get_bc() const 
{
	return bc;
}
void Parent::display()
{
	std::cout << "Parent class function called" << std::endl;
}
class Child :public Parent
{
public:
	Child(int c, int d,int c1,int d1);
	void display();

private:
	int c;
	int d;
};
Child::Child(int a,int b,int c1, int d1): Parent(a,b),c(c1),d(d1) {};
void Child::display()
{
	std::cout << "child class function called" << std::endl;
}
int main()
{
	Child obj(10, 5,20,30);
	Child C(10, 4, 5, 6);
	Parent obj1 = obj;//can allocate a derived class object to a parent class object 
	//Child obj2 = obj1;//cannot allocate a base class object to a derived class object	
	obj.display();
	obj1.display();
	Parent* ptr = &obj;
	ptr->display();
	return 0;
}
```
