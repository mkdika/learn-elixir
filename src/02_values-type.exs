# Elixir have several of values type

# Integers
# The integers type in elixir have NO FIX LIMIT
# =============================================
n1 = 1234
IO.puts n1

n2 = 1_750_000 # still can use _ as the digit grouping
IO.puts n2

IO.puts ""


# Floating numbers
# can be 16 digit accuracy
# ========================
phi = 3.141159265
IO.puts phi

f1 = 0.00275
IO.puts f1

IO.puts ""


# Atoms
# atoms is like ENUM or symbol in ruby
# while atoms name is its value
# ====================================
a1 = :season
a2 = :is_binary?
a3 = :"Maikel Chandika"

IO.puts a1
IO.puts a2
IO.puts a3

IO.puts ""


# Ranges
# ranges represented by start..end, where both are integer.
# range is INCLUSIVE, means declared start..end are including in range.
# =====================================================================
r1 = 1..10
r2 = 20..12
