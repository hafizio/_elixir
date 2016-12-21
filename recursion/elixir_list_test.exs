ExUnit.start
Code.require_file("elixir_list.ex")

defmodule ElixirListTest do
  use ExUnit.Case, async: true

  test "len([args])" do
    assert ElixirList.len([1, 2, 3, 4, 5]) == 5
  end

  test "square([args])" do
    assert ElixirList.square([1, 2, 3]) == [1, 4, 9]
  end

  test "map([args])" do
    assert ElixirList.map([1, 2, 3], fn(n) -> n * 2 end) == [2, 4, 6]
  end

end
