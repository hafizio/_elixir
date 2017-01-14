ExUnit.start
Code.require_file("quick_sort.ex")

defmodule QuickSortTest do
  @docmodule"""
  1. Also known as the partition sort (partition/wall)
  2. Variants: Lomuto, Hoare
  3. Best case: O(n log n)
  4. Average case: O(n log n)
  5. Worst case: O(n²) in Lomuto if all elements are sorted or of the same value

  https://www.youtube.com/watch?v=aQiWF4E8flQ
  http://algo-visualizer.jasonpark.me/#path=sorting/quick/basic
  """

  use ExUnit.Case, async: true

  test "sort" do
    shuffled_list = Enum.shuffle(1..100)

    assert QuickSort.call(shuffled_list) == Enum.to_list(1..100)
  end

end
