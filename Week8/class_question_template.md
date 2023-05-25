### Code
```
#include<iostream>
#include<vector>
std::vector<int> merge(std::vector<int>& nums1, std::vector<int>& nums2)
{

}
int main()
{
	std::vector<int> t1 = { 1,2,3 };
	std::vector<int> t2 = { 4,5,6 };
	std::vector<int> t3 = merge(t1, t2);
	for (int i = 0, N = t3.size(); i < N; i++)
	{
		std::cout << t3[i] << " ";
	}
	return 0;
}
```
