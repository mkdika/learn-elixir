# pass function to variable and use it
# use syntax fn..end

sum = fn (a, b) -> a + b end
r1 = sum.(2,3)
IO.puts r1

# function without param
greet = fn -> IO.puts "Hello" end
greet.()

# function can be ommited the parentheses
fun1 = fn a,b -> a * b end
r2 = fun1.(3,4)
IO.puts r2

# function and pattern matching
swap = fn {a,b} -> {b,a} end
swap.({6,8}) # return {8,6}

# multiple body function with pattern matching
handle_open = fn
  {:ok, file} -> "Read data: #{IO.read(file, :line)}"
  {_, error} -> "Error: #{:file.format_error(error)}"
end
op1 = handle_open.(File.open("dummy.data"))
op2 = handle_open.(File.open("nonexistent"))

IO.puts op1
IO.puts op2
