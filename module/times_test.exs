ExUnit.start
Code.require_file("times.ex")

defmodule TimesTest do
  use ExUnit.Case, async: true

  test "double" do
    assert Times.double(2) == 4
  end

  test "triple" do
    assert Times.triple(2) == 6
  end

  test "quadruple" do
    assert Times.quadruple(2) == 8
  end

end
