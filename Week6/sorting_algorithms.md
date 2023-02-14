### Selection Sort 
Selection sort is a simple and efficient sorting algorithm that works by repeatedly selecting the smallest (or largest) 
element from the unsorted portion of the list and moving it to the sorted portion of the list. The algorithm repeatedly selects the smallest (or largest) element from
the unsorted portion of the list and swaps it with the first element of the unsorted portion.
This process is repeated for the remaining unsorted portion of the list until the entire list is sorted.                              
The algorithm maintains two subarrays in a given array.                                              

-The subarray which already sorted. 
-The remaining subarray was unsorted.                        

In every iteration of the selection sort, the minimum element (considering ascending order) from the unsorted subarray is picked
and moved to the beginning of unsorted subarray. After every iteration sorted subarray size increase by one and unsorted subarray size decrease by one.                 

![image](https://user-images.githubusercontent.com/103468688/218683571-43033e4e-49cd-4531-a7e1-6e2a974d704f.png)

### Insertion Sort 
Insertion sort is a simple sorting algorithm that works similar to the way you sort playing cards in your hands. The array is virtually split into a sorted and an unsorted part. Values from the unsorted part are picked and placed at the correct position in the sorted part.                    

-This algorithm is one of the simplest algorithm with simple implementation
-Basically, Insertion sort is efficient for small data values
-Insertion sort is adaptive in nature, i.e. it is appropriate for data sets which are already partially sorted.     

Link to the illustration: [geeksforgeeks](https://www.geeksforgeeks.org/insertion-sort/)

### Merge Sort
Merge sort is a sorting algorithm that works by dividing an array into smaller subarrays, sorting each subarray, and then merging the sorted subarrays back together to form the final sorted array.                                                 

In simple terms, we can say that the process of merge sort is to divide the array into two halves, sort each half, and then merge the sorted halves back together. This process is repeated until the entire array is sorted.                                 

One thing that you might wonder is what is the specialty of this algorithm. We already have a number of sorting algorithms then why do we need this algorithm? One of the main advantages of merge sort is that it has a time complexity of O(n log n), which means it can sort large arrays relatively quickly                                 

Link to the illustration:[geeksforgeeks](https://www.geeksforgeeks.org/merge-sort/)

Reference Links: [geeksforgeeks](https://www.geeksforgeeks.org/sorting-algorithms/)


