defmodule SelectionSort do

  def call(list) when is_list(list), do: do_selection(list, [])

  @doc """
    Before base case when there's only one element in the list
  """
  defp do_selection([head|[]], acc) do
    acc ++ [head]
  end

  @doc """
    WTF? Using enumerator min?
  """
  defp do_selection(list, acc) do
    min = min(list)
    do_selection(:lists.delete(min, list), acc ++ [min])
  end

  @doc """
    When the comparison is between the last two elements
  """
  defp min([first|[second|[]]]) do
    smaller(first, second)
  end

  @doc """
    Return the min number of a list of at least 3 elements
  """
  defp min([first|[second|tail]]) do
    min([smaller(first, second)|tail])
  end

  defp smaller(e1, e2) do
    if e1 <= e2 do e1 else e2 end
  end

end
