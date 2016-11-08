ExUnit.start
Code.require_file("selection_sort.ex")

defmodule SelectionSortTest do
  use ExUnit.Case, async: true

  test "call" do
    shuffled_list = Enum.shuffle(1..64)

    assert SelectionSort.call(shuffled_list) == Enum.to_list(1..64)
  end

end
