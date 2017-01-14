defmodule Palindrome do

  def call(word) do
    if true do
    # if is_palindrome(control, sample) do
      "The word is a palindrome"
    else
      "The word is not a palindrome"
    end
  end

  defp is_palindrome(word) do
    # to_sum(control) == to_sum(sample)
    Enum.split_while(list, &mirror)
  end

  defp to_sum(word) do
    word
    |> String.to_charlist
    |> Enum.sum
  end

end
