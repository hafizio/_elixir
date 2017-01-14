defmodule QuickSort do

  @doc"""
  [3, 2, 1, 5, 4]

  pivot = 3
  left = [2, 1]
    pivot = 2
    left = 1
    right = []
    -> [1, 2]
  right = [5, 4]
    pivot = 5
    left = 4
    right = []
    -> [4, 5]
  -> [1, 2] ++ [pivot] ++ [4, 5]
  """
  def call([]), do: []
  def call([pivot | rest]) do
    { left, right } = Enum.partition(rest, &(&1 < pivot))
    call(left) ++ [pivot] ++ call(right)
  end

end
