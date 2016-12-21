ExUnit.start
Code.require_file("binary_search.ex")

defmodule BinarySearchTest do
  use ExUnit.Case, async: true

  test "call(n)" do
    assert BinarySearch.call([1, 2, 3, 4], 4) == {:ok, 3}
    assert BinarySearch.call([1, 2, 3, 4], 5) == {:error, "5 Not found"}
  end

end
