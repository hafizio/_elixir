ExUnit.start
Code.require_file("list.ex")

defmodule DataStructure.ListTest do
  use ExUnit.Case, async: true

  test "sum_([])" do
    assert DataStructure.List.sum_([1, 2, 3]) == 6
  end

  test "sum__([])" do
    assert DataStructure.List.sum__([1, 2, 3]) == 6
  end

  test "reduce([], value, func)" do
    assert DataStructure.List.reduce([1, 2, 3], 0, &(&1 + &2)) == 6
    assert DataStructure.List.reduce([1, 2, 3], 1, &(&1 * &2)) == 6
  end

  test "mapsum([], func)" do
    assert DataStructure.List.mapsum([1, 2, 3], &(&1 * &1)) == 14
  end

  test "max([])" do
    assert DataStructure.List.max([1, 2, 3]) == 3
  end

  test "max_([])" do
    assert DataStructure.List.max_([1, 2, 3]) == 3
  end

end
