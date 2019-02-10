# Module example - 06
# The Amazing Pipe Operator |>

# Instead of writing this kind of code:

# people  = DB.find_customers
# orders  = Orders.for_customers(people)
# tax     = sales_tax(orders, 2018)
# filing  = prepare_filing(tax)

# in Elixir provide a better way of writing:

# filing = DB.find_customers
#           |> Orders.for_customers
#           |> sales_tax(2018)
#           |> prepare_filing

# which can be chain base on its order of proces
# something can be like this:

r1 = (1..10) |> Enum.map(&(&1 * &1)) |> Enum.filter(&(&1 < 40))
IO.puts(IO.inspect(r1))   # [1, 4, 9, 16, 25, 36]
