ExUnit.start
Code.require_file("binary_search.ex")

defmodule BinarySearchTest do
  use ExUnit.Case, async: true

  test "sort" do
    assert BinarySearch.call(273, 1..1000) == "273"
  end

end
