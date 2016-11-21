defmodule Fibonacci do

  def call(0), do: 0

  def call(1), do: 1

  def call(n), do: call(n-1) + call(n-2)

end
