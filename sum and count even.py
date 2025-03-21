#sum of even numbers and count of even numbers
def sum_count_of_even(list):
  total=0
  count=0
  for num in list:
    if num%2==0:
      total+=num
      count+=1
  return total,count
list=[10,20,39,33,29,12]
sum_even,count_even=sum_count_of_even(list)
print(f"sum={sum_even},count={count_even}")
