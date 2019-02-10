# Module example - 03
# Elixir demo for Fibonacci value at "n" position function.
# using Elixir naming function and module.

defmodule Fibonacci do
  def of(0), do: 0
  def of(1), do: 1
  def of(n), do: of(n - 1) + of(n - 2)
end
