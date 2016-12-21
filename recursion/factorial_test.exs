ExUnit.start
Code.require_file("factorial.ex")

defmodule FactorialTest do
  use ExUnit.Case, async: true

  test "call(n)" do
    assert Factorial.call(4) == 24
  end

end
