Homework help code:
```
#pragma once
#include<iostream>
template <typename T> class swapping
{
public:
	swapping(T f, T s);//this is the same as Pair parameterized constructor 
	swapping swapp();// this is the same as sum_diff, we need to return an object since in HW too we are expected to return an object 
	T get_first() const;// this is the same as the accessor functions needed in HW 
	T get_second() const ;// this is the same as the accessor functions needed in HW 
private:
	T first;// we have the data type as T because the data type needs to be that of the type given by the user
	T second;
};
template<typename T> swapping<T>::swapping(T f, T s) :first(f), second(s) {};//Parameterized constructor definition

template <typename T> swapping<T> swapping<T>::swapp()//order is: return_type class_name::function_name()
{

}
template<typename T> T swapping<T>::get_first() const // order is same here: return_type class_name::function_name()

}
template<typename T> T swapping<T>::get_second() const // order is same here: return_type class_name::function_name()
{

}
//class  template specialization for std::string data type
template <> 
class swapping<std::string> //specialized class for std::string data type
{
public:
	swapping(std::string f, std::string s);
	swapping swapp();
	std::string get_first() const;
	std::string get_second() const;
private:
	std::string first;
	std::string second;
};
swapping<std::string>::swapping(std::string f,std::string s):first(f),second(s){};
swapping<std::string> swapping<std::string>::swapp()
{

}
std::string swapping<std::string>::get_first() const
{

}
std::string swapping<std::string>::get_second() const
{
}
```
