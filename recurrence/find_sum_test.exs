ExUnit.start
Code.require_file("find_sum.ex")

defmodule FindSumTest do
  use ExUnit.Case, async: true

  test "call" do
    assert FindSum.call([1, 2, 3, 4, 5], 8) == true
    assert FindSum.call([1, 1, 2, 2, 5], 8) == false
  end

end
