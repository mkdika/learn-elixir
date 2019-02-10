# Module example - 05

# Private functions
# using 'defp' to define private function which is can be called
# only within the module that declares it

defmodule PrivateRoom do

  defp funfun(a), do: a * a

  # we can not have a same function signature for both private n public function
  # below example of public function will raise error.
  # def funfun(a), do: a + 1  # => this will cause error

end
