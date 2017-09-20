#topics
#if error, write "error"
#for strings, don't type quotation marks

# basics
# for-loops
# while-loops
# functions


#basics

x = 4
y = 8
x + y #12
y/x #2
x*y #32

#video: basic python mathematical operations

x = 3 
x**2 #9
x/2 #1 - it's an integer
x%2 #1
# video: data types in python

x = true
y = false
if y:
	not x
x #true
y #false

#video: boolean logic in python

x = false
y = false
x = y
y = true
x # true
y # true 

#video variables and reassignment

# for-loops

for i in range(0,3):
	print(i)
#0,1,2
#video: for loops

for i in range(1,4):
	print i*2
#2,4,6
#video: for loops

list = [1,2,3,4]
for item in list:
	print item+1
#2,3,4,5

#while loops
x = 3
while x<3:
	print "Hi!"
	x -= 1
#function output (nothing)
x #3 (while loop never executes)

x = 5
while x>2:
	x = x-1
x #2

x = 5
while x < 3:
	print x
#error

#functions
x = 4
y = 5
def add(a,b):
	return a+b 
add(x,y) #9

x = "Dog!"
y = "Cat!"
def add(a,b):
	return a+b 
add(x,y) #Dog!Cat!

x = "Dog!"
y = "Cat!"
def add(a,b):
	z = a+" "+b
	a = a+"!!!!"
	print z 

add(x,y) #Dog! Cat!
print x #Dog! (remains unchanged)














