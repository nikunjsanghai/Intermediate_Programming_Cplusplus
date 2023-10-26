Please note you need to write a main function to get these classes working, you can write a main function and use the same input as the sample input
### Question 1

![question_1_backtracking](https://github.com/nikunjsanghai/Intermediate_Programming_Cplusplus/assets/103468688/61aedf20-a428-4a2b-ac99-520192794a0d)
```
class Solution {
public:
void helper(std::vector<std::string>& temp,std::vector<std::string>& key, std::string& digits, std::string str,int start)
	{
		if (str.size() == digits.size())
		{
			temp.push_back(str);
			return;
		}
		for (size_t i = start, N = digits.size(); i < N; i++)
		{
			for(size_t j=0,N1= key[(digits[i] - '0') - 2].size();j<N1;j++)
			helper(temp, key, digits, str + key[(digits[i] - '0') - 2][j], i+1);
		}
	}
    vector<string> letterCombinations(string digits) {
    std::vector<std::string> temp;
		if(digits.size()==0)
		return temp;
		std::string str = "";
		std::vector<std::string> key = { "abc","def","ghi","jkl","mno","pqrs","tuv","wxyz" };
		helper(temp,key, digits, str,0);
		return temp;
    }
};
```
### Question 2





```
class Solution {
public:
        bool not_present(int& index, std::vector<int>& used)
	{
		for (size_t i = 0, N = used.size(); i < N; i++)
		{
			if (index == used[i])
				return false;
		}
		return true;
	}
	void permute_helper(std::set<std::vector<int>>& temp, std::vector<int>& nums, std::vector<int>& ans, std::vector<int>& used, int& sz)
	{
		if (ans.size() == sz)
		{
			temp.insert(ans);
		}
		else
		{
			for (int i = 0; i < sz; i++)
			{
				if (not_present(i, used))
				{
					ans.push_back(nums[i]);
					used.push_back(i);
					permute_helper(temp, nums, ans, used, sz);
					ans.pop_back();
					used.pop_back();
				}
			}
		}
	}
	std::vector<std::vector<int>> permuteUnique(std::vector<int>& nums)
	{
		std::set<std::vector<int>> temp;
		std::vector<std::vector<int>> temp1;
		std::vector<int>t;
		std::vector<int> t1;
		int r = nums.size();
		permute_helper(temp, nums, t, t1, r);
		for (auto it = temp.begin(); it != temp.end(); ++it)
		{
			temp1.push_back(*it);
		}
		return temp1;
    }
};
```


### Question 3





```
class Solution {
public:
    void permute_helper(std::vector<std::vector<int>>& temp, std::vector<int>& nums, int index) {
        if (index == nums.size()) {
            temp.push_back(nums);
            return;
        }
        for (int i = index; i < nums.size(); i++) {
            std::swap(nums[index], nums[i]);
            permute_helper(temp, nums, index + 1);
            std::swap(nums[index], nums[i]); // Backtrack to explore other possibilities
        }
    }

    std::vector<std::vector<int>> permute(std::vector<int>& nums) {
        std::vector<std::vector<int>> temp;
        permute_helper(temp, nums, 0);
        return temp;
    }
};
```
