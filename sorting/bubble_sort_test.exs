ExUnit.start
Code.require_file("bubble_sort.ex")

defmodule BubbleSortTest do
  use ExUnit.Case, async: true

  test "sort" do
    shuffled_list = Enum.shuffle(1..64)

    assert BubbleSort.sort(shuffled_list) == Enum.to_list(1..64)
  end

end
