#binary search
def binary_search(arr,x):
  left,right=0,len(arr)-1
  while left<=right:
    mid=(left+right)//2
    if arr[mid]==x:
      return mid
    elif arr[mid]<x:
      left=mid+1
    else:
      right=mid-1
  return -1
  #example
  arr=[10,20,30,40,50]
  x=30
  result=binary_search(arr,x)
  print(f"Element found at index: {result}" if result!=-1 else "Element not found")
