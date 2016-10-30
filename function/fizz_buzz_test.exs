ExUnit.start
Code.require_file("fizz_buzz.ex")

defmodule FizzBuzzTest do
  use ExUnit.Case, async: true

  test "when the first two arguments are zero" do
    assert FizzBuzz.call({0, 0, 1}) == "FizzBuzz"
  end

  test "when the first argument is zero" do
    assert FizzBuzz.call({0, 1, 1}) == "Fizz"
  end

  test "when the second argument is zero" do
    assert FizzBuzz.call({1, 0, 1}) == "Buzz"
  end

  test "when none of the argument is zero" do
    assert FizzBuzz.call({1, 1, 1}) == 1
  end
end
