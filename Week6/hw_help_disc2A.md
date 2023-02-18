Homework help code:
```
#pragma once
#include<iostream>
template <typename T> class swapping
{
public:
	swapping(T f, T s);//this is the same as Pair parameterized constructor 
	swapping swapp();// this is the same as sum_diff
	T get_first() const;// this is the same as the accessor functions needed in HW 
	T get_second() const ;// this is the same as the accessor functions needed in HW 
private:
	T first;
	T second;
};
template<typename T> swapping<T>::swapping(T f, T s) :first(f), second(s) {};

template <typename T> swapping<T> swapping<T>::swapp()// same as the format needed for sum_diff in HW 
{

}
template<typename T> T swapping<T>::get_first() const // same format needed for HW
{

}
template<typename T> T swapping<T>::get_second() const
{

}
//class  template specialization for std::string data type
template <> 
class swapping<std::string>
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
