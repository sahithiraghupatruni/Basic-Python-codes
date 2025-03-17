#program to check if a number is positive, negative or zero
def check_number(num):
  if num>0:
    return "The number is positive"
  elif num<0:
    return "The number is negative"
  else:
    return "The number is zero"
#input
number=int(input("Enter a number: ")
print(check_number(num))
