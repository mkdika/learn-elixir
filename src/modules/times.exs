# Module example - 01

# do ..end in function body is syntactic sugar
# it will be change to do:  or do:() in compile.
# for online line function, usually people use do:
# as below example

defmodule Times do
  def double(n) do # use do ..end syntactic sugar
    n * 2
  end

  def pow(n), do: n * n # use one line do

  def greet(greeting, name), do: (  # use parentheses for multiple line
    IO.puts greeting
    IO.puts "How're you doing, #{name}?"
  )

end




