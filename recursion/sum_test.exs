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

  test "add(n)" do
    assert Sum.add(3) == 6
  end

  test "multiply(n)" do
    assert Sum.multiply(3) == 6
  end

end
