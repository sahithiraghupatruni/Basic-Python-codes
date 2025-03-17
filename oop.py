class Student:
  def _init_(self,name,age):
    self.name=name
    self.age=age
  def display_info(self):
    print(f"Student Name: {self.name}, Age: {self.age}")
#object
student1=Student("mice",21)
student1.display_info()
