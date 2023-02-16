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
//function template specialization
template<>
swapping<std::string> swapping<std::string>::swapp()
{

}
template<>
std::string swapping<std::string>::get_first() const
{

}
```
