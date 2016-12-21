defmodule ElixirList do

  def len([]), do: 0

  def len([head | tail]) do
    IO.puts "Before Recursion: #{head}"
    current_len = 1 + len(tail)
    IO.puts "After Recursion: #{head}"
    current_len
  end

  def square([]), do: []
  def square([head | tail]) do
    [head*head | square(tail)]
  end

  def map([], _func), do: []
  def map([head | tail], func), do: [func.(head) | map(tail, func)]
end
