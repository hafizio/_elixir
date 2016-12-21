defmodule FloodFill do

  def call(area) do
    map = Matrix.to_map(area)
    list = Matrix.to_list(map)
  end

end

defmodule Matrix do

  def to_map(list) do
    list
    |> Enum.map_reduce(0, fn item, i -> {{i, do_map(item)}, i+1} end)
    |> elem(0)
    |> Enum.into(%{})
  end

  def to_list(map) do
    map
    |> Enum.map(fn({_key, value}) -> do_list(value) end)
  end

  defp do_map(list) do
    list
    |> Enum.map_reduce(0, fn item, i -> {{i, item}, i+1} end)
    |> elem(0)
    |> Enum.into(%{})
  end

  defp do_list(map) do
    map
    |> Enum.map(fn({_key, value}) -> value end)
  end

end
