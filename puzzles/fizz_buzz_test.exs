ExUnit.start
Code.require_file("fizz_buzz.ex")

defmodule FizzBuzzTest do
  use ExUnit.Case, async: true

  test "range from 1 to 5" do
    assert FizzBuzz.call(1..5) == [1, 2, "Fizz", 4, "Buzz"]
  end

  test "range from 10 to 15" do
    assert FizzBuzz.call(10..15) == ["Buzz", 11, "Fizz", 13, 14, "FizzBuzz"]
  end
end
