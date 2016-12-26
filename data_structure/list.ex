defmodule DataStructure.List do

  @doc """
  sum/1 w/ acc
  """
  def sum_(list), do: _sum_(list, 0)

  defp _sum_([], total), do: total
  defp _sum_([head | tail], total), do: _sum_(tail, head + total)

  @doc """
  sum/1 w/o acc
  """
  def sum__([]), do: 0
  def sum__([head | tail]), do: head + sum__(tail)

  @doc """
  reduce/3
  """
  def reduce([], value, _), do: value
  def reduce([head | tail], value, func) do
    reduce(tail, func.(head, value), func)
  end

  @doc """
  mapsum/2 w/ acc
  """
  def mapsum(list, func), do: _mapsum(list, 0, func)

  def _mapsum([], acc, _func), do: acc
  def _mapsum([head | tail], acc, func) do
    _mapsum(tail, acc + func.(head), func)
  end

  @doc """
  max/1 using sorting
  """
  def max(list) do
    list
    |> Enum.sort()
    |> List.last()
  end

end
