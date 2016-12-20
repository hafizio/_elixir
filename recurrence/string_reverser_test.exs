ExUnit.start
Code.require_file("string_reverser.ex")

defmodule StringReverserTest do
  use ExUnit.Case, async: true

  test "call(string)" do
    assert StringReverser.call("Hafiz") == "zifaH"
  end

end
