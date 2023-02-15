### Sample Code
```
#include<iostream>
#include<vector>
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
	std::cout << ab << std::endl;
	std::cout << bc << std::endl;
}
class Child :public Parent
{
public:
	Child();
	Child(int c, int d,int c1,int d1);
	void display();

private:
	int c;
	int d;
};
Child::Child(int a,int b,int c1, int d1):Parent(a, b), c(c1),d(d1){};
void Child::display()
{
	std::cout << "child class function called" << std::endl;
	std::cout << get_ab() << std::endl;
	std::cout << get_bc() << std::endl;
	std::cout << c << std::endl;
	std::cout << d << std::endl;
}
int main()
{
	std::cout << "Enter you choice 1 for base and 2 for derived , 0 to end";
	int choice; int a1, b1, c1, d1;
	std::vector<Parent*> arr;
	while (std::cin >> choice)//familiar with this???
	{
		if (choice == 0)
		{
			break;
		}
		else if (choice == 1)
		{
			std::cout << "Enter a value";
			std::cin >> a1;
			std::cout << "Enter a value";
			std::cin >> b1;
			Parent* temp= new Parent(a1, b1);
			arr.push_back(temp);
		}
		else if (choice == 2)
		{
			std::cout << "Enter a value";
			std::cin >> a1;
			std::cout << "Enter a value";
			std::cin >> b1;
			std::cout << "Enter a value";
			std::cin >> c1;
			std::cout << "Enter a value";
			std::cin >> d1;
			Parent* temp=new Child(a1, b1,c1,d1);
			arr.push_back(temp);
		}
		std::cout << "Enter you choice 1 for base and 2 for derived , 0 to end";
	}
	for (size_t i = 0; i < arr.size(); i++)
	{
		if (arr[i]->get_ab() < arr[i + 1]->get_bc())
		{

		}
	}
	return 0;
}
```
