defmodule BinarySearch do
  @moduledoc """
  Simple binary search.
  """

  def call(answer, range) do

  end

  @doc """
  Exception: Early return if range is empty.
  """
  defp find(answer, range) when Enum.empty?(range) do
    IO.puts "This is an empty list"
  end

  @doc """
  Recursive: Divide the range until reach base.
  """
  defp find(answer, range) do
    first..last = range

    # get the middle element
    middle = last / 2

    # divide range to 2
    cond do
      answer > middle ->
        find(answer, middle..last)
      answer < middle ->
        find(answer, first..middle)
      _ ->
        IO.puts "The answer is out of range"
    end

    # check if answer inside which part of the range

    # pass answer and new range to the recursive function

    IO.puts "Is it #{answer})"
  end

  @doc """
  Base: Range hit the correct answer.
  """
  defp find(answer, range) when range === answer do
    IO.puts answer
  end

end
