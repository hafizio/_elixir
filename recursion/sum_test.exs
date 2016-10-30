ExUnit.start
Code.require_file("sum.ex")

defmodule SumTest do
  use ExUnit.Case, async: true

  test "call(0)" do
    assert Sum.call(0) == 0
  end

  test "call(n)" do
    assert Sum.call(3) == 6
  end

end
