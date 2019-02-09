# High Order Function

# Function return function
# Inner function usually use parenthesis
fun1 = fn -> (fn -> "Hello girl!!!" end) end
r1 = fun1.()
r2 = fun1.().()
IO.puts r2


# Parameterized function
add_n = fn n -> (fn other -> n + other end) end
add_five = add_n.(5)
r3 = add_five.(7) # 12
IO.puts r3
