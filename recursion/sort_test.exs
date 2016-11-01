ExUnit.start
Code.require_file("sort.ex")

defmodule SortTest do
  use ExUnit.Case, async: true

  test "call(n)" do
    shuffled_list = Enum.shuffle(1..64)

    assert Sort.call(shuffled_list) == Enum.list(1..64)
  end

  test "call odd number" do
    assert Sort.call(2) == "Even"
  end

end
