### Type Conversion in C
Type conversion in C is the process of converting one data type to another. The type conversion is only performed to those data types where conversion is possible. Type conversion is performed by a compiler. 
In type conversion, the destination data type can’t be smaller than the source data type. Type conversion is done at compile time and it is also called widening conversion because the destination data type can’t be smaller 
than the source data type. There are two types of Conversion:
### Implicit Type Conversion
Also known as ‘automatic type conversion’.

- Done by the compiler on its own, without any external trigger from the user.
- Generally takes place when in an expression more than one data type is present. In such conditions type conversion (type promotion) takes place to avoid loss of data.
- All the data types of the variables are upgraded to the data type of the variable with the largest data type.
```
bool -> char -> short int -> int -> 
unsigned int -> long -> unsigned -> 
long long -> float -> double -> long double
```
- It is possible for implicit conversions to lose information, signs can be lost (when signed is implicitly converted to unsigned), and overflow can occur (when long is implicitly converted to float).                      


![implicit_type_conversion](https://github.com/nikunjsanghai/Intermediate_Programming_Cplusplus/assets/103468688/8d8a78d7-5eb4-413f-98a5-e516cea24617)

Example:
```
// An example of implicit conversion
#include <stdio.h>
int main()
{
	int x = 10; // integer x
	char y = 'a'; // character c

	// y implicitly converted to int. ASCII
	// value of 'a' is 97
	x = x + y;

	// x is implicitly converted to float
	float z = x + 1.0;

	printf("x = %d, z = %f", x, z);
	return 0;
}
```
Output:
```
x = 107, z = 108.000000
```
### Explicit Type Conversion
![explicit_type_conversion](https://github.com/nikunjsanghai/Intermediate_Programming_Cplusplus/assets/103468688/0856e326-dcea-4b2c-8a91-6d9e5c9d2895)                   
This process is also called type casting and it is user-defined. Here the user can typecast the result to make it of a particular data type. The syntax in C Programming:
Example:
```
// C program to demonstrate explicit type casting
#include<stdio.h>

int main()
{
	double x = 1.2;

	// Explicit conversion from double to int
	int sum = (int)x + 1;

	printf("sum = %d", sum);

	return 0;
}
```
Output:
```
sum = 2
```
Reference Link: [geeksforgeeks](https://www.geeksforgeeks.org/type-conversion-c/#)

