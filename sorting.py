#bubble sort
def bubble_sort(arr):
  n=len(arr)
  for i in range(n):
    for j in range(0,n-i-1):
      if arr[j]>arr[j+1]:
        arr[j],arr[j+1]=arr[j+1],arr[j] 
#example
arr=[23,45,29,56,67,34]
bubble_sort(arr)
print("Sorted array:",arr)
