ExUnit.start
Code.require_file("anagram.ex")

defmodule AnagramTest do
  use ExUnit.Case, async: true

  test "word is an anagram" do
    assert Anagram.call("hafiz", "zifah") == "The word is an anagram"
    assert Anagram.call("hafiz", "fizah") == "The word is an anagram"
    assert Anagram.call("hafiz", "ahmad") == "The word is not an anagram"
    assert Anagram.call("hafiz", "hafizuddin") == "The word is not an anagram"
  end
end
