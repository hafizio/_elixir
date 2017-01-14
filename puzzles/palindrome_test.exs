ExUnit.start
Code.require_file("palindrome.ex")

defmodule PalindromeTest do
  use ExUnit.Case, async: true

  test "word is an palindrome" do
    assert Palindrome.call("noon") == "The word is a palindrome"
    assert Palindrome.call("civic") == "The word is a palindrome"
    assert Palindrome.call("level") == "The word is not a palindrome"
    assert Palindrome.call("hafiz") == "The word is not a palindrome"
    assert Palindrome.call("wafa") == "The word is not a palindrome"
    assert Palindrome.call("atiqah") == "The word is not a palindrome"
  end
end
