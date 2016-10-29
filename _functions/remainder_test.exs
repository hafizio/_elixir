ExUnit.start
Code.require_file("remainder.ex")

defmodule RemainderTest do
  use ExUnit.Case, async: true

  test "when the argument is 10" do
    assert Remainder.call(10) == "Buzz"
  end

  test "when the argument is 11" do
    assert Remainder.call(11) == 11
  end

  test "when the argument is 12" do
    assert Remainder.call(12) == "Fizz"
  end

  test "when the argument is 13" do
    assert Remainder.call(13) == 13
  end

  test "when the argument is 14" do
    assert Remainder.call(14) == 14
  end

  test "when the argument is 15" do
    assert Remainder.call(15) == "FizzBuzz"
  end

  test "when the argument is 16" do
    assert Remainder.call(16) == 16
  end
end
