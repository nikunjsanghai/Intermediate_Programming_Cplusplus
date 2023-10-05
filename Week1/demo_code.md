### Demo Code
```
#include<iostream>
void func_demon(int a, int b);
void func_demon(double a);

void func_demon(double a)
{
	std::cout << a;
	return;
}
void function_demon(int* ptr,const int& size, int& sum) 
{
	for (size_t i = 0; i < 7; i++)
	{
		sum = sum + *(ptr + i);
	}
}
int main()
{
	int a1[] = { -5, 0, 1, 2, -3, 20, 15 };
	int sum = 0;
	function_demon(a1, 7, sum);
	int b = 10;
	int& c = b;
	int* d1;
	func_demon(b);
	return 0;
}
```
