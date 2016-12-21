defmodule Factorial do
  @defmodule"""
  complexity:
  n! = n(n – 1)!
  0! = 1! = 1
  """

  @doc """
  base case
  """
  def call(1), do: 1

  @doc """
  recursive case
  """
  def call(n) do
    call(n-1) * n
  end

end
