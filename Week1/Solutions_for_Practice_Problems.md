Q1.
```
#include <iostream>
using namespace std;

int main()
{
    int rows;

    cout << "Enter number of rows: ";
    cin >> rows;

    for(int i = 1; i <= rows; ++i)
    {
        for(int j = 1; j <= i; ++j)
        {
            cout << "* ";
        }
        cout << "\n";
    }
    return 0;
}
```
Q2.
```
#include <iostream>
using namespace std;

int main()
{
    char input, alphabet = 'A';

    cout << "Enter the uppercase character you want to print in the last row: ";
    cin >> input;

    for(int i = 1; i <= (input-'A'+1); ++i)
    {
        for(int j = 1; j <= i; ++j)
        {
            cout << alphabet << " ";
        }
        ++alphabet;

        cout << endl;
    }
    return 0;
}
```
Further Questions
Q1.
```
#include <iostream>
using namespace std;

int main()
{
    int space, rows;

    cout <<"Enter number of rows: ";
    cin >> rows;

    for(int i = 1, k = 0; i <= rows; ++i, k = 0)
    {
        for(space = 1; space <= rows-i; ++space)
        {
            cout <<"  ";
        }

        while(k != 2*i-1)
        {
            cout << "* ";
            ++k;
        }
        cout << endl;
    }    
    return 0;
}
```
Q2.
```
#include <iostream>
using namespace std;

int main()
{
    int rows, count = 0, count1 = 0, k = 0;

    cout << "Enter number of rows: ";
    cin >> rows;

    for(int i = 1; i <= rows; ++i)
    {
        for(int space = 1; space <= rows-i; ++space)
        {
            cout << "  ";
            ++count;
        }

        while(k != 2*i-1)
        {
            if (count <= rows-1)
            {
                cout << i+k << " ";
                ++count;
            }
            else
            {
                ++count1;
                cout << i+k-2*count1 << " ";
            }
            ++k;
        }
        count1 = count = k = 0;

        cout << endl;
    }
    return 0;
}
```
Q3. Pascal's Triangle
```
#include <iostream>
using namespace std;

int main()
{
    int rows, coef = 1;

    cout << "Enter number of rows: ";
    cin >> rows;

    for(int i = 0; i < rows; i++)
    {
        for(int space = 1; space <= rows-i; space++)
            cout <<"  ";

        for(int j = 0; j <= i; j++)
        {
            if (j == 0 || i == 0)
                coef = 1;
            else
                coef = coef*(i-j+1)/j;

            cout << coef << "   ";
        }
        cout << endl;
    }

    return 0;
}
```
Q4.
```
// C++ code to demonstrate star pattern
#include <iostream>
using namespace std;
 
// Function to demonstrate printing pattern
void pypart2(int n)
{
    int i = 0, j = 0, k = 0;
    while (i < n) {
       
        // for spacing
        while (k <= n - i - 2) {
            cout << " ";
            k++;
        }
        k = 0;
       
          // For Pattern printing
        while (j < 2 * i - 1) {
            cout << "*";
            j++;
        }
        j = 0;
        i++;
        cout << endl;
    }
}
```
Question 5:(Palindrome Number)
```
#include <iostream>
using namespace std;

int main()
{
     int n, num, digit, rev = 0;

     cout << "Enter a positive number: ";
     cin >> num;

     n = num;

     do
     {
         digit = num % 10;
         rev = (rev * 10) + digit;
         num = num / 10;
     } while (num != 0);

     cout << " The reverse of the number is: " << rev << endl;

     if (n == rev)
         cout << " The number is a palindrome.";
     else
         cout << " The number is not a palindrome.";

    return 0;
}
```
Question 6: Armstrong number
```
#include <cmath>
#include <iostream>

using namespace std;

int main() {
   int num, originalNum, remainder, n = 0, result = 0, power;
   cout << "Enter an integer: ";
   cin >> num;

   originalNum = num;

   while (originalNum != 0) {
      originalNum /= 10;
      ++n;
   }
   originalNum = num;

   while (originalNum != 0) {
      remainder = originalNum % 10;

      // pow() returns a double value
      // round() returns the equivalent int
      power = round(pow(remainder, n));
      result += power;
      originalNum /= 10;
   }

   if (result == num)
      cout << num << " is an Armstrong number.";
   else
      cout << num << " is not an Armstrong number.";
   return 0;
}
```
Question 7(Sum of 2 primes)
```
#include <iostream>
using namespace std;

bool check_prime(int n);

int main() {

  int n, i;
  bool flag = false;

  cout << "Enter a positive  integer: ";
  cin >> n;

  for(i = 2; i <= n/2; ++i) {
    if (check_prime(i)) {
      if (check_prime(n - i)) {
        cout << n << " = " << i << " + " << n-i << endl;
        flag = true;
      }
    }
  }

  if (!flag)
    cout << n << " can't be expressed as sum of two prime numbers.";

  return 0;
}

// check prime number
bool check_prime(int n) {
  int i;
  bool is_prime = true;

  // 0 and 1 are not prime numbers
  if (n == 0 || n == 1) {
    is_prime = false;
  }
  
  for(i = 2; i <= n/2; ++i) {
    if(n % i == 0) {
      is_prime = false;
      break;
    }
  }

  return is_prime;
}
```
Links: [link](https://www.geeksforgeeks.org/check-if-a-number-is-palindrome/) [link](https://www.geeksforgeeks.org/program-nth-catalan-number/?ref=lbp) [link](https://www.geeksforgeeks.org/bell-numbers-number-of-ways-to-partition-a-set/?ref=lbp) [link](https://www.geeksforgeeks.org/gold-mine-problem/?ref=lbp) [link](https://www.geeksforgeeks.org/find-minimum-number-of-coins-that-make-a-change/?ref=lbp) [link](https://www.geeksforgeeks.org/greedy-algorithm-to-find-minimum-number-of-coins/?ref=lbp)
