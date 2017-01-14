defmodule FizzBuzz do

  @doc"""
  #=> FizzBuzz.call(1..10)
  #=> 1, 2, Fizz, 4, FizzBuzz
  """
  def call(range) do
    Enum.map(range, &fizzer(rem(&1, 3), rem(&1, 5), &1))
  end

  defp fizzer(rem_3, rem_5, number) do
    case {rem_3, rem_5, number} do
      {0, _, _} -> "Fizz"
      {_, 0, _} -> "Buzz"
      {0, 0, _} -> "FizzBuzz"
      {_, _, number} -> number
    end
  end

end

