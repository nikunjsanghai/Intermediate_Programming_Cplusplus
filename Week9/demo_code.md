### Demo Code
```
#include<iostream>
#include<vector>
#include<string>
class Employee
{
public:
	Employee(std::string payrole, std::string employee_id);
	virtual void print() const;
	std::string get_payrole() const;
	std::string get_employee_id() const;
private:
	std::string payrole;
	std::string employee_id;
};
Employee::Employee(std::string p, std::string e) :payrole(p), employee_id(e) {};
void Employee::print() const
{
	std::cout << "General Employee" << std::endl;
	std::cout << "Payrole ID:" << payrole << std::endl;
	std::cout << "Employee ID:" << employee_id << std::endl;
	std::cout << std::endl;
}
std::string Employee::get_payrole() const
{
	return payrole;
}
std::string Employee::get_employee_id() const
{
	return employee_id;
}
class Professor:public Employee
{
public:
	Professor(std::string s,std::string e,bool t,std::string department);
	void print() const;
private:
	bool tenure;
	std::string department;
};
void Professor::print() const
{
	std::cout << "Professor Employee" << std::endl;
	std::cout << "Tenure:" << tenure << std::endl;
	std::cout << "Department:" << department << std::endl;
	std::cout << "Payrole ID:" << get_payrole() << std::endl;
	std::cout << "Employee ID:" << get_employee_id() << std::endl;
	std::cout << std::endl;
}
Professor::Professor(std::string s, std::string e, bool t, std::string d) :Employee(s, e),tenure(t), department(d) {};
class Staff:public Employee
{
public:
	Staff(std::string s, std::string e,std::string d);
	void print() const;
private:
	std::string department;
};
Staff::Staff(std::string s, std::string e, std::string d) :Employee(s, e), department(d) {};
void Staff::print() const
{
	std::cout << "Staff Employee" << std::endl;
	std::cout << "Department:" << department << std::endl;
	std::cout << "Payrole ID:" << get_payrole() << std::endl;
	std::cout << "Employee ID:" << get_employee_id() << std::endl;
	std::cout << std::endl;
}
int main()
{
	std::vector<Employee*> emp;
	Employee* E = new Employee("P15", "E19");
	Professor* P = new Professor("P14", "E18", 1, "Math");
	Staff* S = new Staff("P13", "E17", "Math");
	emp.push_back(E);
	emp.push_back(P);
	emp.push_back(S);
	for (size_t i = 0; i < emp.size(); i++)
	{
		emp[i]->print();
	}
	return 0;
}
```
