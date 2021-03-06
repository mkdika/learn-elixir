# The & notation
# give us a wonderful way to pass functions to other functions.

Enum.map [1,2,3,4], &(&1 + 1) # [2,3,4,5]

Enum.map [1,2,3,4], &(&1 * &1) # [1,4,9,16]

Enum.map [1,2,3,4], &(&1 < 3) # [true,true,false,false]

# more existing function even MORE shorthand
# code: Enum.each [1,2,3,4], fn x -> IO.inspect x end
# can be write down:
Enum.each [1,2,3,4], &IO.inspect/1 # the result will be same
