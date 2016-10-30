ExUnit.start
Code.require_file("capture.ex")

defmodule CaptureTest do
  use ExUnit.Case, async: true

  test "#add_two" do
    assert Capture.add_two([]) == []
    assert Capture.add_two([1, 2, 3]) == [3, 4, 5]
  end

  test "#inspector" do
    assert Capture.inspector([]) == :ok
    assert Capture.inspector([1, 2, 3]) == :ok
  end

end
