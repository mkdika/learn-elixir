# High Order Function

# Function return function
# Inner function usually use parenthesis
fun1 = fn -> (fn -> "Hello girl!!!" end) end
fun1.() # return inner function
r2 = fun1.().()
IO.puts r2


# Parameterized function
add_n = fn n -> (fn other -> n + other end) end
add_five = add_n.(5)
r3 = add_five.(7) # 12
IO.puts r3


# Passing functions as arguments
times_2 = fn n -> n * 2 end
apply = fn (fun, value) -> fun.(value) end
r4 = apply.(times_2,5) # 10
IO.puts r4
