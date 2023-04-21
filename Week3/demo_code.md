### Class car included in Header.H
```
#pragma once
#include<iostream>
#include<string>
class Car
{
public:
	Car();// Car a will call this constructor 
	Car(std::string name, int year);
	Car(std::string name, int year, double mileage, double cost);
	void set_name(std::string n);
	void set_mileage(double m);
	void set_cost(double c);
	std::string get_name() const;
	double get_cost() const;
	int get_year() const;
	double get_mileage() const;
	void print() const;
private:
	std::string name;
	const int year;
	double mileage;
	double cost;
};
Car::Car() :name(""), year(2000), mileage(25), cost(30000) {};
Car::Car(std::string name_, int year_) :name(name_), year(year_), mileage(25), cost(30000) {};
Car::Car(std::string name_, int year_, double mileage_, double cost_):name(name_), year(year_), mileage(mileage_), cost(cost_) {};
void Car::set_name(std::string n)
{
	name = n;
}
void Car::set_mileage(double m)
{
	mileage = m;
}
void Car::set_cost(double c)
{
	cost = c;
}
std::string Car::get_name() const
{
	return name;
}
double Car::get_cost() const
{
	return cost;
}
int Car::get_year() const
{
	return year;
}
double Car::get_mileage() const
{
	return mileage;
}
void Car::print() const
{
	std::cout << "car name is=" << name << std::endl;
}
```
### Class Sports_Car 
```
#include"Header.h"
class Sports_Car
{
public:
	Sports_Car();
	Sports_Car(std::string n, int y, double m, double c, double t_a);
	double payment();
private:
	Car car;
	double total_amount;
};
Sports_Car::Sports_Car() :car(), total_amount(0.0) {};
Sports_Car::Sports_Car(std::string n, int y, double m, double c, double t_a) :car(n, y, m, c), total_amount(t_a) {};
double Sports_Car::payment()
{
	int years;
	std::cout << "Please enter the time you want to pay off the vehicle in at 6% interest rate:" << std::endl;
	std::cin >> years;
	total_amount = car.get_cost();
	while (years != 0)
	{
		total_amount = total_amount * 1.06;
		years--;
	}
	return total_amount;
}
int main()
{
	Sports_Car S("Mustang", 2021, 29.6, 100000, 0);
	std::cout << "The total payment will be:" << S.payment();
	return 0;
}
```
