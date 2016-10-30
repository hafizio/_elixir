ExUnit.start
Code.require_file("gcd.ex")

defmodule GCDTest do
  use ExUnit.Case, async: true

  test "call(a, 0)" do
    assert GCD.call(3, 0) == 3
  end

  test "call(a, b) when a == b" do
    assert GCD.call(3, 3) == 3
  end

  test "call(a, b) when a > b" do
    assert GCD.call(6, 3) == 3
  end

  test "call(a, b)" do
    assert GCD.call(48, 18) == 6
  end

end
