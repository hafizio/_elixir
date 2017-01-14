defmodule Anagram do

  def call(control, sample) do
    if is_anagram(control, sample) do
      "The word is an anagram"
    else
      "The word is not an anagram"
    end
  end

  defp is_anagram(control, sample) do
    to_sum(control) == to_sum(sample)
  end

  defp to_sum(word) do
    word
    |> String.to_charlist
    |> Enum.sum
  end

end
