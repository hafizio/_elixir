ExUnit.start
Code.require_file("fibonacci.ex")

defmodule FibonacciTest do
  use ExUnit.Case, async: true

  test "call" do
    assert Fibonacci.call(0) == 0
    assert Fibonacci.call(1) == 1
    assert Fibonacci.call(2) == 1
    assert Fibonacci.call(3) == 2
    assert Fibonacci.call(4) == 3
    assert Fibonacci.call(10) == 55
  end

end
