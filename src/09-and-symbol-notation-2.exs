# The & notation (second form)
# can give it the name an arity (number of params) of an
# existing function, and it will retun an anonymous function
# that calls it.

l = &length/1
l.([1,3,5,7]) # 4

len = &Enum.count/1
len.([1,2,3,4]) # 4

m = &Kernel.min/2 # This is an alias for the Erlang function
m.(99,88) # 88
