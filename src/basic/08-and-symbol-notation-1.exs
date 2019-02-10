# The & notation
# The strategy of creating short helper functions is
# so common that Elixir provides a shortcut.
# just like another SYNTACTIC SUGAR

add_one = &(&1 + 1)  # same as: add_one = fn n -> n + 1 end
add_one.(44) # 45

square = &(&1 * &1) # square = fn n -> n * n end
square.(8) # 64

speak = &(IO.puts(&1)) # speak = fn n -> IO.puts n end
speak.("Hello World") # Hello


# more than one argument example
volume = &(&1 * &2 * &3) # volume = fn a,b,c -> a * b * c end
volume.(1,2,3) # 6


# array [] or tuple {} can also be turn into function
divrem = &{ div(&1,&2), rem(&1,&2) }
divrem.(13,5) # {2,3}


# The & capture operator also works with string (and string-like) literals
s = &"bacon and #{&1}"
bacon_and = s.("custard")
IO.puts bacon_and # bacon and custard

match_end = &~r/.*#{&1}$/
"cat" =~ match_end.("t") # true
"cat" =~ match_end.("!") # false

