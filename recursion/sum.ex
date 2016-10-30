defmodule Sum do

  def call(0), do: 0

  def call(n) do
    Enum.reduce(1..n, 0, fn(x, acc) -> x + acc end)
  end

end
