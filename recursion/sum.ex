defmodule Sum do

  def call(0), do: 0

  def call(n) do
    Enum.reduce(1..n, 0, fn(x, acc) -> x + acc end)
  end

  def add(0), do: 0

  def add(n) do
    n + add(n-1)
  end

  def multiply(0), do: 1

  def multiply(n) do
    n * multiply(n-1)
  end

end
