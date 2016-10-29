ExUnit.start
Code.require_file("prefix.ex")

defmodule PrefixTest do
  use ExUnit.Case, async: true

  test "#call" do
    assert Prefix.call("Hafiz").("Khairudin") == "Hafiz Khairudin"
  end

end
