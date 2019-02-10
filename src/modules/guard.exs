# Module example - 03
# Using Erlang built-in type-check function and when
# it will be evaluate function signature (parameters) first,
# prior the when..do check.
# when is use as Guard Clauses

defmodule Guard do
  def what_is(x) when is_number(x) do
    IO.puts "#{x} is a number"
  end
  def what_is(x) when is_list(x) do
    IO.puts "#{inspect(x)} is a list"
  end
  def what_is(x) when is_atom(x) do
    IO.puts "#{x} is a atom"
  end
end
