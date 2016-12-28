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

  @doc """
  max/1 w/ acc
  """
  def max_(list), do: _max_(list, 0)

  defp _max_([], max), do: max
  defp _max_([head | tail], max) do
    if head > max  do
      _max_(tail, head)
    else
      _max_(tail, max)
    end
  end

  @doc """
  span a list from range
  """
  def span(from, to), do: Enum.to_list(from..to)

  @doc """
  span a list manually to upper limit w/ acc
  """
  def span_(from, to), do: _span_(from, to, from)
  defp _span_(_, to, acc) when acc === to, do: [to]
  defp _span_(from, to, acc) do
    [from | _span_(from + 1, to, acc + 1)]
  end

  @doc """
  span a list manually to upper limit w/o acc
  """
  def span__(from, to) when from === to, do: [to]
  def span__(from, to), do: [from | span__(from + 1, to)]

end

