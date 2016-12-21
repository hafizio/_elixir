ExUnit.start
Code.require_file("hanoi_tower.ex")

defmodule HanoiTowerTest do
  use ExUnit.Case, async: true

  test "call(src, dst, aux, n)" do
    assert HanoiTower.call("Hafiz") == "zifaH"
  end

end
